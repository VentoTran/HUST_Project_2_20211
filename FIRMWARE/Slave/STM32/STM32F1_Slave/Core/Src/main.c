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
#include "dma.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include "plc.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "string.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define PWM_MAX 800
#define PWM_MIN 0

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
typedef enum{
  GET_BYTES,
  GET_NEW_MESSAGE,
  PROCESS_MESSAGE
}UARTState;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

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
      break;
    }
    case (PLC_RESPONSE_MESSAGE):
      break;
    default:
      break;
  }
  uint8_t buffer[8];
  PLC_ResponseMessageGenerate(buffer, message);
  HAL_UART_Transmit_IT(&huart1, buffer, 8);
}

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
uint8_t UART1_rxBuffer[1];
uint8_t message_buffer[PLC_LEN_OF_MESSAGE];
uint8_t byte_count = 0;
UARTState state = GET_BYTES;
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
  MX_DMA_Init();
  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
  HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
    // for(uint16_t i = PWM_MIN; i <= PWM_MAX; i += 50)
    // {
    //   __HAL_TIM_SetCompare(&htim2, TIM_CHANNEL_3, i);
    //   HAL_Delay(100);
    // }
    // for(uint16_t i = PWM_MIN; i <= PWM_MAX; i += 50)
    // {
    //   __HAL_TIM_SetCompare(&htim2, TIM_CHANNEL_4, i);
    //   HAL_Delay(100);
    // }

    // for(uint16_t i = PWM_MAX; i > PWM_MIN; i -= 50)
    // {
    //   __HAL_TIM_SetCompare(&htim2, TIM_CHANNEL_4, i);
    //   HAL_Delay(100);
    // }

    // HAL_GPIO_TogglePin(OF_CN1_GPIO_Port, OF_CN1_Pin);
      // HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
      // PLCMessage message;
      // uint8_t buffer[10];
      // char* error = "error";
      // if (PLC_MessageParser(UART1_rxBuffer, &message) != HAL_OK)
      // {
      //   HAL_UART_Transmit_IT(&huart1, (uint8_t*)error, 5);
      // }
      // else
      // {
      //   PLC_MessageHandle(message);
      // }   
      if (state == PROCESS_MESSAGE)
      {
        //HAL_UART_Transmit_IT(&huart1, message_buffer, 10);
        HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
        PLCMessage message;
        if (PLC_MessageParser(message_buffer, &message) != HAL_OK)
        {
          char* error = "error";
          HAL_UART_Transmit_IT(&huart1, (uint8_t*)error, 5);
        }
        else
        {
          PLC_MessageHandle(message);
        }
        state = GET_BYTES;
        HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);
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
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
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
  switch (state)
  {
    case (GET_BYTES):
    {
      if (UART1_rxBuffer[0] == '$')
      {
        state = GET_NEW_MESSAGE;
        message_buffer[0] = '$';
        byte_count = 1;
      }
      HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);
      break;
    }
    case (GET_NEW_MESSAGE):
    {
      if (byte_count > 8)
      {
        state = PROCESS_MESSAGE;
        break;
      }
      else
      {
        message_buffer[byte_count] = UART1_rxBuffer[0];
        byte_count++;
        HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);
      }
      break;
    }
    default:
      break;
  }
  //HAL_UART_Receive_IT(&huart1, UART1_rxBuffer, 1);
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

