/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "lcd.h"
#include "math.h"
#include "timers.h"
#include "plc.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef enum
{
  SLEEPING = 0,
  RUNNING = 1,
} Mode;

typedef struct
{
  uint8_t PWM_percent;
  double current;
  uint32_t time;
  uint8_t history[120];
} Channel;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define ABS(x) ((x) > 0 ? (x) : -(x))

#define ControlPage   0
#define SettingPage   1
#define InfoPage      2

#define LCD_TimeOut   180000
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
extern SPI_HandleTypeDef hspi2;
extern UART_HandleTypeDef huart1;
myButton_t Channel_1 = {80, 120, 50, 0, 0, ILI9341_RED, false, NULL};
myButton_t Channel_2 = {240, 120, 50, 0, 0, ILI9341_RED, false, NULL};
myButton_t Control_Info = {299, 219, 20, 0, 0, ILI9341_LIGHTBLUE, NULL, NULL};
myButton_t Info_Control = {20, 219, 20, 0, 0, ILI9341_LIGHTBLUE, NULL, NULL};
myButton_t Control_Setting = {160, 205, 0, 100, 30, ILI9341_YELLOW, NULL, NULL};
Mode DeviceState = RUNNING;
uint8_t currentPage = 0;
Channel Channel01 = {0, 0.0, 0};
Channel Channel02 = {0, 0.0, 0};
uint8_t UART1_rxBuffer[100];
uint8_t UART1_txBuffer[100];

/* USER CODE END Variables */
/* Definitions for myDisplay */
osThreadId_t myDisplayHandle;
const osThreadAttr_t myDisplay_attributes = {
  .name = "myDisplay",
  .stack_size = 200 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for myPLC */
osThreadId_t myPLCHandle;
const osThreadAttr_t myPLC_attributes = {
  .name = "myPLC",
  .stack_size = 200 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for Button */
osThreadId_t ButtonHandle;
const osThreadAttr_t Button_attributes = {
  .name = "Button",
  .stack_size = 150 * 4,
  .priority = (osPriority_t) osPriorityAboveNormal,
};
/* Definitions for myTimer */
osTimerId_t myTimerHandle;
const osTimerAttr_t myTimer_attributes = {
  .name = "myTimer"
};
/* Definitions for Timeout */
osTimerId_t TimeoutHandle;
const osTimerAttr_t Timeout_attributes = {
  .name = "Timeout"
};
/* Definitions for Mutex01 */
osMutexId_t Mutex01Handle;
const osMutexAttr_t Mutex01_attributes = {
  .name = "Mutex01"
};
/* Definitions for BinarySem */
osSemaphoreId_t BinarySemHandle;
const osSemaphoreAttr_t BinarySem_attributes = {
  .name = "BinarySem"
};
/* Definitions for PLCSem */
osSemaphoreId_t PLCSemHandle;
const osSemaphoreAttr_t PLCSem_attributes = {
  .name = "PLCSem"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void ControlPageDisplay(void);
void SettingPageDisplay(void);
void InfoPageDisplay(void);

void ControlPageHandler(uint16_t x, uint16_t y);
void SettingPageHandler(uint16_t x, uint16_t y);
void InfoPageHandler(uint16_t x, uint16_t y);

void reverse(char* str, int len);
int intToStr(uint8_t x, char str[], int d);
void ftoa(float n, char* res, int afterpoint);

void intToTime(uint32_t time, char* str);
int intToStr0(uint8_t x, char str[], int d);
/* USER CODE END FunctionPrototypes */

void Display_Task(void *argument);
void PLC_Task(void *argument);
void IRQ_Task(void *argument);
void LED_Indicator(void *argument);
void LCD_Timeout(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */
  /* Create the mutex(es) */
  /* creation of Mutex01 */
  Mutex01Handle = osMutexNew(&Mutex01_attributes);

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* Create the semaphores(s) */
  /* creation of BinarySem */
  BinarySemHandle = osSemaphoreNew(1, 0, &BinarySem_attributes);

  /* creation of PLCSem */
  PLCSemHandle = osSemaphoreNew(1, 0, &PLCSem_attributes);

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* creation of myTimer */
  myTimerHandle = osTimerNew(LED_Indicator, osTimerPeriodic, NULL, &myTimer_attributes);

  /* creation of Timeout */
  TimeoutHandle = osTimerNew(LCD_Timeout, osTimerOnce, NULL, &Timeout_attributes);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of myDisplay */
  myDisplayHandle = osThreadNew(Display_Task, NULL, &myDisplay_attributes);

  /* creation of myPLC */
  myPLCHandle = osThreadNew(PLC_Task, NULL, &myPLC_attributes);

  /* creation of Button */
  ButtonHandle = osThreadNew(IRQ_Task, NULL, &Button_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_Display_Task */
/**
  * @brief  Function implementing the myDisplay thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_Display_Task */
void Display_Task(void *argument)
{
  /* USER CODE BEGIN Display_Task */
  osTimerStart(myTimerHandle, 1000);
  osTimerStart(TimeoutHandle, LCD_TimeOut);
  ILI9341_Unselect();
  ILI9341_TouchUnselect();
  ILI9341_Init();

  /* Infinite loop */
  for(;;)
  {
    osTimerStop(myTimerHandle);
    switch (currentPage)
    {
      case ControlPage:
        ControlPageDisplay();
        break;

      case SettingPage:
        SettingPageDisplay();
        break;

      case InfoPage:
        InfoPageDisplay();
        break;

      default:
        break;
    }
    osTimerStart(myTimerHandle, 1000);
    vTaskSuspend(myDisplayHandle);
  }
  /* USER CODE END Display_Task */
}

/* USER CODE BEGIN Header_PLC_Task */
/**
* @brief Function implementing the myPLC thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_PLC_Task */
void PLC_Task(void *argument)
{
  /* USER CODE BEGIN PLC_Task */
  // osDelay(2000);
  /* Infinite loop */
  for(;;)
  {
    // if (osSemaphoreAcquire(PLCSemHandle, portMAX_DELAY) == osOK)
    // {
      // memset(UART1_txBuffer, '0', sizeof(UART1_txBuffer));
      // intToStr(Channel01.PWM_percent, UART1_txBuffer, 2);
      //intToStr(Channel02.PWM_percent, UART1_txBuffer, 2);
      //HAL_UART_Transmit(&huart1, (uint8_t*)UART1_txBuffer, 2, 10);

    //}
    PLCMessage message;
    uint8_t buffer[10];
    message.messageType = PLC_PWM_MESSAGE;
    message.payload = 100;
    message.device.roomAddr = PLC_ROOM_ADDR;
    message.device.deviceAddr = PLC_DEVICE_ADDR;
    message.device.channel = PLC_CHANNEL_01;
    PLC_MessageGenerate(buffer, message);
    HAL_UART_Transmit_IT(&huart1, buffer, 10);
    osDelay(10000);
  }
  /* USER CODE END PLC_Task */
}

/* USER CODE BEGIN Header_IRQ_Task */
/**
* @brief Function implementing the Button thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_IRQ_Task */
void IRQ_Task(void *argument)
{
  /* USER CODE BEGIN IRQ_Task */
  uint16_t x, y;
  uint32_t currentTick = 0, lastTick = 0;
  /* Infinite loop */
  for(;;)
  {
    osDelay(100);
    if (osSemaphoreAcquire(BinarySemHandle, portMAX_DELAY) == osOK)
    {
      osDelay(100);
      currentTick = HAL_GetTick();
      if (HAL_GPIO_ReadPin(TOUCH_IRQ_GPIO_Port, TOUCH_IRQ_Pin) == 0 && ((currentTick - lastTick) >= 500))
      {
        lastTick = currentTick;

        HAL_SPI_DeInit(&hspi2);
        hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_128;
        HAL_SPI_Init(&hspi2);
        while(ILI9341_TouchGetCoordinates(&x, &y) != true);
        HAL_SPI_DeInit(&hspi2);
        hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
        HAL_SPI_Init(&hspi2);

        osTimerStop(TimeoutHandle);
        xTimerReset(TimeoutHandle, 10);

        if (DeviceState == SLEEPING)
        {
          DeviceState = RUNNING;
          HAL_GPIO_WritePin(LCD_LED_GPIO_Port, LCD_LED_Pin, 1);
        }
        else
        {
          switch (currentPage)
          {
            case ControlPage:
              ControlPageHandler(x, y);
              break;

            case SettingPage:
              SettingPageHandler(x, y);
              break;

            case InfoPage:
              InfoPageHandler(x, y);
              break;

            default:
              break;
          }
        }

        osTimerStart(TimeoutHandle, LCD_TimeOut);
        
      }
      
    }
    //osSemaphoreRelease(BinarySemHandle);
  }
  /* USER CODE END IRQ_Task */
}

/* LED_Indicator function */
void LED_Indicator(void *argument)
{
  /* USER CODE BEGIN LED_Indicator */

  HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);

  if (Channel_1.state == true)
  {
    Channel01.time++;
    if (currentPage == InfoPage)
    {
      char t_temp[9];
      intToTime(Channel01.time, t_temp);
      ILI9341_WriteString(90, 80, t_temp, Font_7x10, ILI9341_GREEN, ILI9341_BLACK);
      
      if(osMutexAcquire(Mutex01Handle, portMAX_DELAY) == osOK)
      {
        for(uint8_t i = 0; i < 120; i++)
        {
          ILI9341_DrawLine(191+i, 20, 191+i, 100, ILI9341_BLACK);
          if (i < 3)
          {
            ILI9341_DrawLine(190, 20, 192, 22, ILI9341_WHITE);
          }
          ILI9341_DrawPixel(191+i, 100, ILI9341_WHITE);
          ILI9341_DrawPixel(191+i, 100-Channel01.history[i], ILI9341_BLUE);
        }
        osMutexRelease(Mutex01Handle);
      }
      
    }

    if (Channel01.time > 120)
    {
      //make room for new data
      for(uint8_t i = 0; i < 119; i++)
      {
        Channel01.history[i] = Channel01.history[i+1];
      }
      //new data into 119 slot
      Channel01.history[119] = 2 * (uint8_t)( 10 * sin((2*3.148*Channel01.time)/60) + 20);
    }
    else
    {
      //new data into the next slot
      Channel01.history[Channel01.time-1] = 2 * (uint8_t)( 10 * sin((2*3.148*Channel01.time)/60) + 20);
    }
  }

  if (Channel_2.state == true)
  {
    Channel02.time++;
    if (currentPage == InfoPage)
    {
      char t_temp[9];
      intToTime(Channel02.time, t_temp);
      ILI9341_WriteString(90, 170, t_temp, Font_7x10, ILI9341_GREEN, ILI9341_BLACK);
      if(osMutexAcquire(Mutex01Handle, portMAX_DELAY) == osOK)
      {
        for(uint8_t i = 0; i < 120; i++)
        {
          ILI9341_DrawLine(191+i, 140, 191+i, 220, ILI9341_BLACK);
          if (i < 3)
          {
            ILI9341_DrawLine(190, 140, 192, 142, ILI9341_WHITE);
          }
          ILI9341_DrawPixel(191+i, 220, ILI9341_WHITE);
          ILI9341_DrawPixel(191+i, 220-Channel02.history[i], ILI9341_RED);
        }
        osMutexRelease(Mutex01Handle);
      }
      
    }

    if (Channel02.time > 120)
    {
      //make room for new data
      for(uint8_t i = 0; i < 119; i++)
      {
        Channel02.history[i] = Channel02.history[i+1];
      }
      //new data into 119 slot
      Channel02.history[119] = 2 * (uint8_t)( 10 * cos((2*3.148*Channel02.time)/60) + 20);
    }
    else
    {
      //new data into the next slot
      Channel02.history[Channel02.time-1] = 2 * (uint8_t)( 10 * cos((2*3.148*Channel02.time)/60) + 20);
    }
  }
  /* USER CODE END LED_Indicator */
}

/* LCD_Timeout function */
void LCD_Timeout(void *argument)
{
  /* USER CODE BEGIN LCD_Timeout */

  HAL_GPIO_WritePin(LCD_LED_GPIO_Port, LCD_LED_Pin, 0);
  DeviceState = SLEEPING;

  /* USER CODE END LCD_Timeout */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  if (GPIO_Pin == TOUCH_IRQ_Pin)
  {
    osSemaphoreRelease(BinarySemHandle);
  }
}

void ControlPageDisplay(void)
{
  ILI9341_FillScreen(ILI9341_BLACK);

  ILI9341_WriteString(34, 30, "CHANNEL 1", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);
  ILI9341_WriteString(194, 30, "CHANNEL 2", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  if (Channel_1.state == true)
  {
    ILI9341_FillCircle(Channel_1.pos_x, Channel_1.pos_y, Channel_1.shape_r, ILI9341_GREEN);
    ILI9341_WriteString(Channel_1.pos_x-10, Channel_1.pos_y-5, "ON", Font_11x18, ILI9341_BLACK, ILI9341_GREEN);
  }
  else
  {
    ILI9341_FillCircle(Channel_1.pos_x, Channel_1.pos_y, Channel_1.shape_r, ILI9341_RED);
    ILI9341_WriteString(Channel_1.pos_x-15, Channel_1.pos_y-5, "OFF", Font_11x18, ILI9341_BLACK, ILI9341_RED);
  }

  if (Channel_2.state == true)
  {
    ILI9341_FillCircle(Channel_2.pos_x, Channel_2.pos_y, Channel_2.shape_r, ILI9341_GREEN);
    ILI9341_WriteString(Channel_2.pos_x-10, Channel_2.pos_y-5, "ON", Font_11x18, ILI9341_BLACK, ILI9341_GREEN);
  }
  else
  {
    ILI9341_FillCircle(Channel_2.pos_x, Channel_2.pos_y, Channel_2.shape_r, ILI9341_RED);
    ILI9341_WriteString(Channel_2.pos_x-15, Channel_2.pos_y-5, "OFF", Font_11x18, ILI9341_BLACK, ILI9341_RED);
  }

  ILI9341_FillRectangle(Control_Setting.pos_x - (Control_Setting.shape_w/2), 
                        Control_Setting.pos_y - (Control_Setting.shape_h/2), 
                        Control_Setting.shape_w, 
                        Control_Setting.shape_h, 
                        Control_Setting.color);
  ILI9341_WriteString(Control_Setting.pos_x - (Control_Setting.shape_w/2) + 12, 
                      Control_Setting.pos_y - (Control_Setting.shape_h/2) + 7, 
                      "SETTING", 
                      Font_11x18, 
                      ILI9341_BLACK, 
                      Control_Setting.color);

  ILI9341_FillCircle(Control_Info.pos_x, Control_Info.pos_y, Control_Info.shape_r, Control_Info.color);
  ILI9341_WriteString(Control_Info.pos_x-10, Control_Info.pos_y-7, ">>", Font_11x18, ILI9341_BLACK, Control_Info.color);

}

void SettingPageDisplay(void)
{
  ILI9341_FillScreen(ILI9341_BLACK);

  char temp[4];

  ILI9341_WriteString(110, 15, "CHANNEL 1", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_WriteString(10, 40, "Level: ", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);
  intToStr(Channel01.PWM_percent, temp, 3);
  ILI9341_WriteString(109, 40, temp, Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_DrawRectangle(20, 70, 280, 20, ILI9341_WHITE);
  ILI9341_FillRectangle(22, 72, 278*((double)Channel01.PWM_percent/100) - 1, 17, ILI9341_GREEN);

  ILI9341_WriteString(110, 105, "CHANNEL 2", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_WriteString(10, 130, "Level: ", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);
  intToStr(Channel02.PWM_percent, temp, 3);
  ILI9341_WriteString(109, 130, temp, Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_DrawRectangle(20, 160, 280, 20, ILI9341_WHITE);
  ILI9341_FillRectangle(22, 162, 278*((double)Channel02.PWM_percent/100) - 1, 17, ILI9341_GREEN);


  ILI9341_FillRectangle(Control_Setting.pos_x - (Control_Setting.shape_w/2), 
                        Control_Setting.pos_y - (Control_Setting.shape_h/2), 
                        Control_Setting.shape_w, 
                        Control_Setting.shape_h, 
                        Control_Setting.color);
  ILI9341_WriteString(Control_Setting.pos_x - (Control_Setting.shape_w/2) + 12, 
                      Control_Setting.pos_y - (Control_Setting.shape_h/2) + 7, 
                      "CONTROL", 
                      Font_11x18, 
                      ILI9341_BLACK, 
                      Control_Setting.color);
}

void InfoPageDisplay(void)
{
  ILI9341_FillScreen(ILI9341_BLACK);

  char temp[6];
  char t_temp[9];

  ILI9341_WriteString(30, 15, "CHANNEL 1", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_WriteString(20, 40, "Current: ", Font_7x10, ILI9341_YELLOW, ILI9341_BLACK);
  ftoa(Channel01.current, temp, 1);
  ILI9341_WriteString(90, 40, temp, Font_7x10, ILI9341_YELLOW, ILI9341_BLACK);
  ILI9341_WriteString(125, 40, "mA", Font_7x10, ILI9341_YELLOW, ILI9341_BLACK);

  ILI9341_WriteString(20, 60, "Power: ", Font_7x10, ILI9341_RED, ILI9341_BLACK);
  ftoa(Channel01.current * 220 / 1000, temp, 1);
  ILI9341_WriteString(90, 60, temp, Font_7x10, ILI9341_RED, ILI9341_BLACK);
  ILI9341_WriteString(125, 60, "W", Font_7x10, ILI9341_RED, ILI9341_BLACK);

  ILI9341_WriteString(20, 80, "Period: ", Font_7x10, ILI9341_GREEN, ILI9341_BLACK);
  intToTime(Channel01.time, t_temp);
  ILI9341_WriteString(90, 80, t_temp, Font_7x10, ILI9341_GREEN, ILI9341_BLACK);



  ILI9341_WriteString(30, 105, "CHANNEL 2", Font_11x18, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_WriteString(20, 130, "Current: ", Font_7x10, ILI9341_YELLOW, ILI9341_BLACK);
  ftoa(Channel02.current, temp, 1);
  ILI9341_WriteString(90, 130, temp, Font_7x10, ILI9341_YELLOW, ILI9341_BLACK);
  ILI9341_WriteString(125, 130, "mA", Font_7x10, ILI9341_YELLOW, ILI9341_BLACK);

  ILI9341_WriteString(20, 150, "Power: ", Font_7x10, ILI9341_RED, ILI9341_BLACK);
  ftoa(Channel02.current * 220 / 1000, temp, 1);
  ILI9341_WriteString(90, 150, temp, Font_7x10, ILI9341_RED, ILI9341_BLACK);
  ILI9341_WriteString(125, 150, "W", Font_7x10, ILI9341_RED, ILI9341_BLACK);

  ILI9341_WriteString(20, 170, "Period: ", Font_7x10, ILI9341_GREEN, ILI9341_BLACK);
  intToTime(Channel02.time, t_temp);
  ILI9341_WriteString(90, 170, t_temp, Font_7x10, ILI9341_GREEN, ILI9341_BLACK);


  ILI9341_DrawLine(160, 0, 160, 239, ILI9341_WHITE);
  ILI9341_DrawLine(160, 120, 319, 120, ILI9341_WHITE);


  ILI9341_DrawLine(190, 220, 315, 220, ILI9341_WHITE);
  ILI9341_DrawLine(313, 218, 315, 220, ILI9341_WHITE);
  ILI9341_DrawLine(313, 222, 315, 220, ILI9341_WHITE);
  ILI9341_WriteString(310, 227, "t", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);
  ILI9341_DrawLine(250, 220, 250, 223, ILI9341_WHITE);
  ILI9341_WriteString(243, 227, "60", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);
  
  ILI9341_DrawLine(190, 140, 190, 220, ILI9341_WHITE);
  ILI9341_DrawLine(190, 140, 192, 142, ILI9341_WHITE);
  ILI9341_DrawLine(190, 140, 188, 142, ILI9341_WHITE);
  ILI9341_WriteString(178, 135, "P", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);
  ILI9341_DrawLine(187, 180, 190, 180, ILI9341_WHITE);
  ILI9341_WriteString(171, 176, "20", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_WriteString(178, 227, "0", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);

  for(uint8_t i = 0; i < 120; i++)
  {
    ILI9341_DrawPixel(191+i, 220-Channel02.history[i], ILI9341_RED);
  }


  ILI9341_DrawLine(190, 100, 315, 100, ILI9341_WHITE);
  ILI9341_DrawLine(313, 98, 315, 100, ILI9341_WHITE);
  ILI9341_DrawLine(313, 102, 315, 100, ILI9341_WHITE);
  ILI9341_WriteString(310, 107, "t", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);
  ILI9341_DrawLine(250, 100, 250, 103, ILI9341_WHITE);
  ILI9341_WriteString(243, 107, "60", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);
  
  ILI9341_DrawLine(190, 20, 190, 100, ILI9341_WHITE);
  ILI9341_DrawLine(190, 20, 192, 22, ILI9341_WHITE);
  ILI9341_DrawLine(190, 20, 188, 22, ILI9341_WHITE);
  ILI9341_WriteString(178, 15, "P", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);
  ILI9341_DrawLine(187, 60, 190, 60, ILI9341_WHITE);
  ILI9341_WriteString(171, 56, "20", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);

  ILI9341_WriteString(178, 107, "0", Font_7x10, ILI9341_WHITE, ILI9341_BLACK);

  for(uint8_t i = 0; i < 120; i++)
  {
    ILI9341_DrawPixel(191+i, 100-Channel01.history[i], ILI9341_BLUE);
  }
  

  ILI9341_FillCircle(Info_Control.pos_x, Info_Control.pos_y, Info_Control.shape_r, Info_Control.color);
  ILI9341_WriteString(Info_Control.pos_x-10, Info_Control.pos_y-7, "<<", Font_11x18, ILI9341_BLACK, Info_Control.color);

}

void ControlPageHandler(uint16_t x, uint16_t y)
{
  if ((((ABS(y - Channel_1.pos_x))^2) + ((ABS(x - Channel_1.pos_y))^2)) <= ((Channel_1.shape_r)^2))
  {
    if (Channel_1.state == false)
    {
      Channel_1.state = true;
      ILI9341_FillCircle(Channel_1.pos_x, Channel_1.pos_y, Channel_1.shape_r, ILI9341_GREEN);
      ILI9341_WriteString(Channel_1.pos_x-10, Channel_1.pos_y-5, "ON", Font_11x18, ILI9341_BLACK, ILI9341_GREEN);
    }
    else
    {
      Channel_1.state = false;
      ILI9341_FillCircle(Channel_1.pos_x, Channel_1.pos_y, Channel_1.shape_r, ILI9341_RED);
      ILI9341_WriteString(Channel_1.pos_x-15, Channel_1.pos_y-5, "OFF", Font_11x18, ILI9341_BLACK, ILI9341_RED);
    }
  }

  if ((((ABS(y - Channel_2.pos_x))^2) + ((ABS(x - Channel_2.pos_y))^2)) <= ((Channel_2.shape_r)^2))
  {
    if (Channel_2.state == false)
    {
      Channel_2.state = true;
      ILI9341_FillCircle(Channel_2.pos_x, Channel_2.pos_y, Channel_2.shape_r, ILI9341_GREEN);
      ILI9341_WriteString(Channel_2.pos_x-10, Channel_2.pos_y-5, "ON", Font_11x18, ILI9341_BLACK, ILI9341_GREEN);
    }
    else
    {
      Channel_2.state = false;
      ILI9341_FillCircle(Channel_2.pos_x, Channel_2.pos_y, Channel_2.shape_r, ILI9341_RED);
      ILI9341_WriteString(Channel_2.pos_x-15, Channel_2.pos_y-5, "OFF", Font_11x18, ILI9341_BLACK, ILI9341_RED);
    }
  }

  if ((x <= (Control_Setting.pos_y + (Control_Setting.shape_h/2))) && 
      (x >= (Control_Setting.pos_y - (Control_Setting.shape_h/2))) && 
      (y <= (Control_Setting.pos_x + (Control_Setting.shape_w/2))) && 
      (y >= (Control_Setting.pos_x - (Control_Setting.shape_w/2))))
  {
    currentPage = SettingPage;
    vTaskResume(myDisplayHandle);
  }

  if ((((ABS(y - Control_Info.pos_x))^2) + ((ABS(x - Control_Info.pos_y))^2)) <= ((Control_Info.shape_r)^2))
  {
    currentPage = InfoPage;
    vTaskResume(myDisplayHandle);
  }
  
}

void SettingPageHandler(uint16_t x, uint16_t y)
{
  if ((x <= (Control_Setting.pos_y + (Control_Setting.shape_h/2))) && 
      (x >= (Control_Setting.pos_y - (Control_Setting.shape_h/2))) && 
      (y <= (Control_Setting.pos_x + (Control_Setting.shape_w/2))) && 
      (y >= (Control_Setting.pos_x - (Control_Setting.shape_w/2))))
  {
    currentPage = ControlPage;
    vTaskResume(myDisplayHandle);
  }

  if ((x >= 70) && (x <= 90) && (y >= 20) && (y <= 300))
  {
    char temp[4];
    Channel01.PWM_percent = (y - 20) * 100 / 280;
    intToStr(Channel01.PWM_percent, temp, 3);
    ILI9341_WriteString(109, 40, temp, Font_11x18, ILI9341_WHITE, ILI9341_BLACK);
    ILI9341_FillRectangle(22, 72, 277, 17, ILI9341_BLACK);
    ILI9341_FillRectangle(22, 72, 278*((double)Channel01.PWM_percent/100) - 1, 17, ILI9341_GREEN);
    osSemaphoreRelease(PLCSemHandle);
  }

  if ((x >= 160) && (x <= 180) && (y >= 20) && (y <= 300))
  {
    char temp[4];
    Channel02.PWM_percent = (y - 20) * 100 / 280;
    intToStr(Channel02.PWM_percent, temp, 3);
    ILI9341_WriteString(109, 130, temp, Font_11x18, ILI9341_WHITE, ILI9341_BLACK);
    ILI9341_FillRectangle(22, 162, 277, 17, ILI9341_BLACK);
    ILI9341_FillRectangle(22, 162, 278*((double)Channel02.PWM_percent/100) - 1, 17, ILI9341_GREEN);
  }
}

void InfoPageHandler(uint16_t x, uint16_t y)
{
  if ((((ABS(y - Info_Control.pos_x))^2) + ((ABS(x - Info_Control.pos_y))^2)) <= ((Info_Control.shape_r)^2))
  {
    if(osMutexAcquire(Mutex01Handle, portMAX_DELAY) == osOK)
    {
      currentPage = ControlPage;
      vTaskResume(myDisplayHandle);
      osMutexRelease(Mutex01Handle);
    } 
  }
}


void reverse(char* str, int len)
{
  int i = 0, j = len - 1, temp;
  while (i < j)
  {
      temp = str[i];
      str[i] = str[j];
      str[j] = temp;
      i++;
      j--;
  }
}

// Converts a given integer x to string str[]. 
// d is the number of digits required in the output. 
// If d is more than the number of digits in x, 
// then 0s are added at the beginning.
int intToStr(uint8_t x, char str[], int d)
{
  int i = 0;
  if (x == 0)
  {
    str[i++] = '0';
  }
  else
  {
    while (x)
    {
      str[i++] = (x % 10) + '0';
      x = x / 10;
    } 
  }
  // If number of digits required is more, then
  // add 0s at the beginning
  while (i < d)
    str[i++] = ' ';

  reverse(str, i);
  str[i] = '\0';
  return i;
}

// Converts a floating-point/double number to a string.
void ftoa(float n, char* res, int afterpoint)
{
  // Extract integer part
  int ipart = (int)n;
  // Extract floating part
  float fpart = n - (float)ipart;
  // convert integer part to string
  int i = intToStr(ipart, res, 3);
  // check for display option after point
  if (afterpoint != 0)
  {
    res[i] = '.'; // add dot
    fpart = fpart * pow(10, afterpoint);
    intToStr((int)fpart, res + i + 1, afterpoint);
  }
}

void intToTime(uint32_t time, char* str)
{
  uint8_t hour = time / 3600;
  uint8_t minute = time / 60 - hour * 60;
  uint8_t second = time - hour*3600 - minute*60;

  intToStr0(hour, str, 2);
  *(str+2) = ':';
  intToStr0(minute, str + 3, 2);
  *(str+5) = ':';
  intToStr0(second, str + 6, 2);
}

int intToStr0(uint8_t x, char str[], int d)
{
  int i = 0;
  if (x == 0)
  {
    str[i++] = '0';
  }
  else
  {
    while (x)
    {
      str[i++] = (x % 10) + '0';
      x = x / 10;
    } 
  }
  // If number of digits required is more, then
  // add 0s at the beginning
  while (i < d)
    str[i++] = '0';

  reverse(str, i);
  str[i] = '\0';
  return i;
}

void HAL_UART_RxCplCallback(UART_HandleTypeDef *huart)
{ 
  if (huart->Instance == USART1)
  {
    HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, sizeof(UART1_rxBuffer));
  }
}

// void HAL_UART_TxCplCallback(UART_HandleTypeDef *huart)
// {
// 
// }
/* USER CODE END Application */

