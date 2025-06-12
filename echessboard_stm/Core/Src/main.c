/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2025 STMicroelectronics.
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

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "delay_us.h"
#include "tca9535.h"
#include "stm32f0xx_hal_gpio.h"
#include "string.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi1;

TIM_HandleTypeDef htim1;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */
TCA9535_handle_t io1 = {.i2c_address = 0x20};
TCA9535_handle_t io2 = {.i2c_address = 0x21};
TCA9535_handle_t io3 = {.i2c_address = 0x22};
TCA9535_handle_t io4 = {.i2c_address = 0x23};
TCA9535_handle_t *io_handles[] = {&io1, &io2, &io3, &io4};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_SPI1_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_TIM1_Init(void);
/* USER CODE BEGIN PFP */
static int interrupt_received = 0;
static int interrupt_pin = 0;
static int game_state = 0;
typedef struct
{
  uint8_t pos[8];
} game_pos_t;
static game_pos_t game_pos_confirmed = {0};
static game_pos_t game_pos_old = {0};
static game_pos_t game_pos_curr = {0};

_Bool game_pos_equal(game_pos_t *pos1, game_pos_t *pos2)
{
  return memcmp(pos1->pos, pos2->pos, sizeof(pos1->pos)) == 0;
}

typedef enum
{
  STARTED = 1 << 0,
  WHITEWON = 1 << 1,
  BLACKWON = 1 << 2,
  DRAW = 1 << 3,
  PROM_QUEEN = 1 << 4,
  PROM_KNIGHT = 1 << 5,
  PROM_ROOK = 1 << 6,
  PROM_BISHOP = 1 << 7,
  WHITE_TO_MOVE = 1 << 8,
  BLACK_TO_MOVE = 1 << 9,
  ILLEGAL_MOVE = 1 << 10,
} GameStateBits;
#define GET_GAMESTATE(bit) ((game_state & bit) > 0)
#define SET_GAMESTATE(bit) (game_state |= bit)
#define RESET_GAMESTATE(bit) (game_state &= ~bit)
#define IRQ_START_GAME_BIT 1
#define IRQ_PROMOTION_BIT 2
#define IRQ_CONFIRM_MOVE_BIT 4

#define LED_PORT GPIOB
#define GAMESTARTED_LED_PIN GPIO_PIN_15
#define BLACKWON_LED_PIN GPIO_PIN_12
#define WHITEWON_LED_PIN GPIO_PIN_11
#define DRAW_LED_PIN GPIO_PIN_13
#define QUEENPROM_LED_PIN GPIO_PIN_3
#define KNIGHTPROM_LED_PIN GPIO_PIN_4
#define ROOKPROM_LED_PIN GPIO_PIN_6
#define BISHOPPROM_LED_PIN GPIO_PIN_5
#define BLACKMOVE_LED_PIN GPIO_PIN_10
#define ILLEGALMOVE_LED_PIN GPIO_PIN_14
#define WHITEMOVE_LED_PIN GPIO_PIN_9
#define SET_LED(led_pin) HAL_GPIO_WritePin(LED_PORT, led_pin, GPIO_PIN_SET)
#define RESET_LED(led_pin) HAL_GPIO_WritePin(LED_PORT, led_pin, GPIO_PIN_RESET)
#define PUT_LED(led_pin, state) HAL_GPIO_WritePin(LED_PORT, led_pin, state)

void SetWaitResetLed(uint32_t delay_ms, uint16_t led_pin)
{
  SET_LED(led_pin);
  HAL_Delay(delay_ms);
  RESET_LED(led_pin);
}

void CycleLeds(uint32_t delay_ms)
{
  SetWaitResetLed(delay_ms, GAMESTARTED_LED_PIN);
  SetWaitResetLed(delay_ms, BLACKWON_LED_PIN);
  SetWaitResetLed(delay_ms, DRAW_LED_PIN);
  SetWaitResetLed(delay_ms, WHITEWON_LED_PIN);
  SetWaitResetLed(delay_ms, QUEENPROM_LED_PIN);
  SetWaitResetLed(delay_ms, KNIGHTPROM_LED_PIN);
  SetWaitResetLed(delay_ms, ROOKPROM_LED_PIN);
  SetWaitResetLed(delay_ms, BISHOPPROM_LED_PIN);
  SetWaitResetLed(delay_ms, BLACKMOVE_LED_PIN);
  SetWaitResetLed(delay_ms, ILLEGALMOVE_LED_PIN);
  SetWaitResetLed(delay_ms, WHITEMOVE_LED_PIN);
}

void SetLedsToGamestate()
{
  PUT_LED(GAMESTARTED_LED_PIN, GET_GAMESTATE(STARTED));
  PUT_LED(BLACKWON_LED_PIN, GET_GAMESTATE(BLACKWON));
  PUT_LED(WHITEWON_LED_PIN, GET_GAMESTATE(WHITEWON));
  PUT_LED(DRAW_LED_PIN, GET_GAMESTATE(DRAW));
  PUT_LED(QUEENPROM_LED_PIN, GET_GAMESTATE(PROM_QUEEN));
  PUT_LED(KNIGHTPROM_LED_PIN, GET_GAMESTATE(PROM_KNIGHT));
  PUT_LED(ROOKPROM_LED_PIN, GET_GAMESTATE(PROM_ROOK));
  PUT_LED(BISHOPPROM_LED_PIN, GET_GAMESTATE(PROM_BISHOP));
  PUT_LED(BLACKMOVE_LED_PIN, GET_GAMESTATE(BLACK_TO_MOVE));
  PUT_LED(ILLEGALMOVE_LED_PIN, GET_GAMESTATE(ILLEGAL_MOVE));
  PUT_LED(WHITEMOVE_LED_PIN, GET_GAMESTATE(WHITE_TO_MOVE));
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  interrupt_received = 1;
  interrupt_pin = GPIO_Pin;
}

_Bool ReadGamePosition(game_pos_t *dest)
{
  memset(dest->pos, 0, sizeof(dest->pos));
  uint8_t i;
  _Bool ret = 1;
  for (i = 0; i < 4; i++)
  {
    if (!I2C_read_byte_at(io_handles[i]->i2c_address, 0, dest->pos + i * 2))
    {
      ret = 0;
    }
    if (!I2C_read_byte_at(io_handles[i]->i2c_address, 1, dest->pos + i * 2 + 1))
    {
      ret = 0;
    }
  }
  for (size_t i = 0; i < 8; i++)
  {
    dest->pos[i] = ~dest->pos[i];
  }
  return ret;
}
void SendGamePosSPI(game_pos_t *pos)
{
  __NOP(); // Wait for previous SPI transfer to finish
}
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
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
  MX_SPI1_Init();
  MX_USART1_UART_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */
  HAL_TIM_Base_Start(&htim1);
  HAL_GPIO_WritePin(GPIOB, 0xFFFF, GPIO_PIN_RESET);
  CycleLeds(200);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

    if (interrupt_received)
    {
      interrupt_received = 0;
      if (interrupt_pin == IRQ_START_GAME_BIT && !GET_GAMESTATE(STARTED))
      {
        SET_GAMESTATE(STARTED);
        SET_GAMESTATE(WHITE_TO_MOVE);
        SET_GAMESTATE(PROM_QUEEN);
      }
      if (interrupt_pin == IRQ_CONFIRM_MOVE_BIT && GET_GAMESTATE(STARTED))
      {
        if (GET_GAMESTATE(WHITE_TO_MOVE))
        {
          RESET_GAMESTATE(WHITE_TO_MOVE);
          SET_GAMESTATE(BLACK_TO_MOVE);
        }
        else
        {
          RESET_GAMESTATE(BLACK_TO_MOVE);
          SET_GAMESTATE(WHITE_TO_MOVE);
        }
        ReadGamePosition(&game_pos_confirmed);

        __NOP();
      }
      if (interrupt_pin == IRQ_PROMOTION_BIT && GET_GAMESTATE(STARTED))
      {
        if (GET_GAMESTATE(PROM_QUEEN))
        {
          RESET_GAMESTATE(PROM_QUEEN);
          SET_GAMESTATE(PROM_KNIGHT);
        }
        else if (GET_GAMESTATE(PROM_KNIGHT))
        {
          RESET_GAMESTATE(PROM_KNIGHT);
          SET_GAMESTATE(PROM_ROOK);
        }
        else if (GET_GAMESTATE(PROM_ROOK))
        {
          RESET_GAMESTATE(PROM_ROOK);
          SET_GAMESTATE(PROM_BISHOP);
        }
        else if (GET_GAMESTATE(PROM_BISHOP))
        {
          RESET_GAMESTATE(PROM_BISHOP);
          SET_GAMESTATE(PROM_QUEEN);
        }
      }
      SetLedsToGamestate();
    }
    if (GET_GAMESTATE(STARTED))
    {
      if (ReadGamePosition(&game_pos_curr))
      {
        if (!game_pos_equal(&game_pos_curr, &game_pos_old))
        {
          SendGamePosSPI(&game_pos_curr);
        }
        memcpy(&game_pos_old, &game_pos_curr, sizeof(game_pos_t));
      }
    }
    /* USER CODE END 3 */
  }
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
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL12;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
   */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_HSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
 * @brief SPI1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_HARD_OUTPUT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 7;
  hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */
}

/**
 * @brief TIM1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 3;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 65535;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */
}

/**
 * @brief USART1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */
}

/**
 * @brief GPIO Initialization Function
 * @param None
 * @retval None
 */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10 | GPIO_PIN_11 | GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15 | GPIO_PIN_3 | GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_9, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, SW_I2C_SDA_Pin | SW_I2C_SCL_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : PA0 PA1 PA2 PA3 */
  GPIO_InitStruct.Pin = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB0 PB1 PB2 */
  GPIO_InitStruct.Pin = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PB10 PB11 PB12 PB13
                           PB14 PB15 PB3 PB4
                           PB5 PB6 PB9 */
  GPIO_InitStruct.Pin = GPIO_PIN_10 | GPIO_PIN_11 | GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15 | GPIO_PIN_3 | GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_9;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : SW_I2C_SDA_Pin SW_I2C_SCL_Pin */
  GPIO_InitStruct.Pin = SW_I2C_SDA_Pin | SW_I2C_SCL_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_1_IRQn);

  HAL_NVIC_SetPriority(EXTI2_3_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI2_3_IRQn);

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

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

#ifdef USE_FULL_ASSERT
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
