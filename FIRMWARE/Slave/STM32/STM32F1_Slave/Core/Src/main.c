/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
#include "main.h"
#include "adc.h"
#include "iwdg.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "plc.h"
#include "string.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef enum
{
  RXREADY,
  GET_NEW_MESSAGE,
  PROCESS_MESSAGE
} UARTStateRX;

// typedef enum 
// {
//   SENDING,
//   TXREADY
// } UARTStateTX;

typedef struct
{
  uint16_t ADC_0;
  uint16_t ADC_1;
  uint8_t channel;
  uint16_t count[2];
  uint32_t ADC_RMS[2];
  float voltage_RMS[2];
} ADC_t;

typedef struct
{
  uint16_t CN1_Current_mA;
  uint16_t CN2_Current_mA;
} Current_t;

typedef enum 
{
  READY,
  MEASURING,
} MeasureState;

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define PWM_MAX                 (800)
#define PWM_MIN                 (0)
#define ADC_RESOLUTION          (4095)
#define VCC_mV                  (3300)
#define VOLTAGE_MEAN            (2471)
#define DELTA_VOLTAGE_MIN_CN1   (32)
#define DELTA_VOLTAGE_MIN_CN2   (21)
#define ADC_MEAN                (3066)
#define SAMPLE                  (20000)
#define OFFSET_CN1              (15)
#define OFFSET_CN2              (11)
#define SENSITIVITY_mV_per_A    (185)
#define DELAY_READ_CURRENT      (5000)
#define DELAY_RX_CHECK          (5000)
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

void PLC_MessageHandle(PLCMessage message);

void Measure_Current(void);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
uint8_t UART1_rxBuffer[1];
uint8_t message_buffer[PLC_LEN_OF_MESSAGE];
uint8_t byte_count = 0;
UARTStateRX RXstate = RXREADY;
//UARTStateTX TXstate = TXREADY;
MeasureState Mstate = READY;
ADC_t ADC = {0, 0, 0, {0, 0}, {0, 0}, {0.0, 0.0}};
Current_t Current = {0.0, 0.0};
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART1_UART_Init();
  MX_ADC1_Init();
  MX_TIM2_Init();
  MX_IWDG_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
  HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);
  HAL_Delay(1000);
  uint32_t TickMeasure = 0;
  uint32_t TickRXCheck = 0;
  PLCMessage message;
  uint8_t error[8];
  
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
    
    HAL_IWDG_Refresh(&hiwdg);
    
    if (RXstate == PROCESS_MESSAGE)
    {
      if (PLC_MessageParser(message_buffer, &message) != HAL_OK)
      {
        TickRXCheck = HAL_GetTick();
        message.device.roomAddr = PLC_ROOM_ADDR;
        message.device.deviceAddr = PLC_DEVICE_ADDR;
        message.device.channel = 0;
        message.messageType = PLC_RESPONSE_MESSAGE;
        message.payload = 0;
        PLC_MessageGenerate(error, message);
        HAL_Delay(1000);
        HAL_UART_Transmit(&huart1, (uint8_t*)error, 8, 10);
      }
      else  
      {
        HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
        PLC_MessageHandle(message);
      }
      HAL_Delay(1000);
      RXstate = RXREADY;
      HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);
    }

    if ((HAL_GetTick() - TickMeasure) > DELAY_READ_CURRENT)
    {
      TickMeasure = HAL_GetTick();
      Measure_Current();
    }
  
    if (RXstate == RXREADY)   {TickRXCheck = HAL_GetTick();}
    if (((HAL_GetTick() - TickRXCheck) > DELAY_RX_CHECK) && (RXstate == GET_NEW_MESSAGE))
    {
      TickRXCheck = HAL_GetTick();
      uint8_t error[8];
      message.device.roomAddr = PLC_ROOM_ADDR;
      message.device.deviceAddr = PLC_DEVICE_ADDR;
      message.device.channel = 0;
      message.messageType = PLC_RESPONSE_MESSAGE;
      message.payload = 0;
      PLC_MessageGenerate(error, message);
      HAL_Delay(200);
      HAL_UART_Transmit(&huart1, (uint8_t*)error, 8, 10);
      RXstate = RXREADY;
    }
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV6;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
  if (huart->Instance == USART1)
  {
    switch (RXstate)
    {
      case (RXREADY):
      {
        if (UART1_rxBuffer[0] == '$')
        {
          RXstate = GET_NEW_MESSAGE;
          message_buffer[byte_count++] = '$';
        }
        break;
      }
      case (GET_NEW_MESSAGE):
      {
        message_buffer[byte_count++] = UART1_rxBuffer[0];

        if (byte_count == 8)
        {
          RXstate = PROCESS_MESSAGE;
          byte_count = 0;
        }
        break;
      }
      default:
        break;
    }
  }
  HAL_UART_Receive_IT(&huart1, (uint8_t*)UART1_rxBuffer, 1);
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim->Instance == TIM3)
  {
    ADC_ChannelConfTypeDef sConfig = {0};
    if(ADC.channel == 0)  {sConfig.Channel = ADC_CHANNEL_0;}
    else  {sConfig.Channel = ADC_CHANNEL_1;}
    sConfig.Rank = ADC_REGULAR_RANK_1;
    sConfig.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;
    if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)  {Error_Handler();}
    HAL_ADC_Start_IT(&hadc1);
  }
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc)
{
  //  If ADC CN0
  if (ADC.channel == 0) 
  {
    ADC.ADC_0 = HAL_ADC_GetValue(&hadc1);
    if (ADC.ADC_0 > ADC_MEAN) {ADC.ADC_0 -= ADC_MEAN;}
    else  {ADC.ADC_0 = ADC_MEAN - ADC.ADC_0;}
    ADC.channel = 1;
    ADC.count[0]++;
    if (ADC.ADC_0 != 0)   {ADC.ADC_RMS[0] += ADC.ADC_0;}
    if (ADC.count[0] == SAMPLE)
    {
      ADC.count[0] = 0;
      ADC.ADC_RMS[0] /= SAMPLE;
      ADC.voltage_RMS[0] = (ADC.ADC_RMS[0] * VCC_mV / ADC_RESOLUTION) + OFFSET_CN1;
      if (HAL_GPIO_ReadPin(OF_CN1_GPIO_Port, OF_CN1_Pin) == GPIO_PIN_RESET) {ADC.voltage_RMS[0] = 0;}
      Current.CN1_Current_mA = ADC.voltage_RMS[0] * 1000 / SENSITIVITY_mV_per_A;
    }
  }
  else
  {
    ADC.ADC_1 = HAL_ADC_GetValue(&hadc1);
    if (ADC.ADC_1 > ADC_MEAN) {ADC.ADC_1 -= ADC_MEAN;}
    else  {ADC.ADC_1 = ADC_MEAN - ADC.ADC_1;}
    ADC.channel = 0;
    ADC.count[1]++;
    if (ADC.ADC_1 != 0)   {ADC.ADC_RMS[1] += ADC.ADC_1;}
    if (ADC.count[1] == SAMPLE)
    {
      ADC.count[1] = 0;
      ADC.ADC_RMS[1] /= SAMPLE;
      ADC.voltage_RMS[1] = (ADC.ADC_RMS[1] * VCC_mV / ADC_RESOLUTION) + OFFSET_CN2;
      if (HAL_GPIO_ReadPin(OF_CN2_GPIO_Port, OF_CN2_Pin) == GPIO_PIN_RESET) {ADC.voltage_RMS[1] = 0;}
      Current.CN2_Current_mA = ADC.voltage_RMS[1] * 1000 / SENSITIVITY_mV_per_A;
      Mstate = READY;
      HAL_TIM_Base_Stop_IT(&htim3);
    }
  }
}

void Measure_Current(void)
{
  if (Mstate == READY)
  {
    Mstate = MEASURING;
    HAL_TIM_Base_Start_IT(&htim3);
  }
}

void PLC_MessageHandle(PLCMessage message)
{
  switch(message.messageType)
  {
    case (PLC_ONOFF_MESSAGE):
    {
      switch(message.device.channel)
      {
        case (PLC_CHANNEL_01):
          if (message.payload == ON)
          {
            HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_3);
            HAL_GPIO_WritePin(OF_CN1_GPIO_Port, OF_CN1_Pin, 1);
          }
          else
          {
            HAL_TIM_PWM_Stop(&htim2, TIM_CHANNEL_3);
            HAL_GPIO_WritePin(OF_CN1_GPIO_Port, OF_CN1_Pin, 0);
          }
          break;
        case (PLC_CHANNEL_02):
          if (message.payload == ON)
          {
            HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_4);
            HAL_GPIO_WritePin(OF_CN2_GPIO_Port, OF_CN2_Pin, 1);
          }
          else
          {
            HAL_TIM_PWM_Stop(&htim2, TIM_CHANNEL_4);
            HAL_GPIO_WritePin(OF_CN2_GPIO_Port, OF_CN2_Pin, 0);
          }
          break; 
      }
      
      uint8_t buffer[8];
      message.device.roomAddr = PLC_ROOM_ADDR;
      message.device.deviceAddr = PLC_DEVICE_ADDR;
      message.device.channel = 0;
      message.messageType = PLC_RESPONSE_MESSAGE;
      message.payload = 1;
      PLC_MessageGenerate(buffer, message);
      HAL_Delay(1000);
      HAL_UART_Transmit(&huart1, (uint8_t*)buffer, 8, 10);

      break;
    }
    case (PLC_PWM_MESSAGE):
    {
      switch (message.device.channel)
      {
        case (PLC_CHANNEL_01):
          __HAL_TIM_SetCompare(&htim2, TIM_CHANNEL_3, message.payload);
          break;
        case (PLC_CHANNEL_02):
          __HAL_TIM_SetCompare(&htim2, TIM_CHANNEL_4, message.payload);
          break;  
      }
      
      uint8_t buffer[8];
      message.device.roomAddr = PLC_ROOM_ADDR;
      message.device.deviceAddr = PLC_DEVICE_ADDR;
      message.device.channel = 0;
      message.messageType = PLC_RESPONSE_MESSAGE;
      message.payload = 1;
      PLC_MessageGenerate(buffer, message);
      HAL_Delay(1000);
      HAL_UART_Transmit(&huart1, (uint8_t*)buffer, 8, 10);
      
      break;
    }
    // case (PLC_RESPONSE_MESSAGE):
    // {
    //   if (message.payload == PLC_RESPONSE_ERROR)
    //   {
    //     uint8_t current[8];
    //     message.messageType = PLC_REQUEST_CURRENT;
    //     if (message.device.channel == PLC_CHANNEL_01)   {message.payload = Current.CN1_Current_mA;}
    //     else                                            {message.payload = Current.CN2_Current_mA;}
    //     PLC_MessageGenerate(current, message);
    //     HAL_UART_Transmit_IT(&huart1, (uint8_t*)current, 8);
    //   }
    //   break;
    // }
    case (PLC_REQUEST_CURRENT):
    {
      uint8_t current[8];
      if (message.device.channel == PLC_CHANNEL_01)       {message.payload = Current.CN1_Current_mA;}
      else if (message.device.channel == PLC_CHANNEL_02)  {message.payload = Current.CN2_Current_mA;}
      PLC_MessageGenerate(current, message);
      HAL_UART_Transmit(&huart1, (uint8_t*)current, 8, 10);
      break;
    }
    default:
      break;
  }
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

