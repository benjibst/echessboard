
#include "stm32f0xx_hal.h"
#include "stm32f0xx_hal_tim.h"

void delay_us(uint32_t us)
{
    TIM1->CNT = 0; // Reset the timer counter
    us <<= 4;      // assumes timer at 16MHz
    while (TIM1->CNT < us)
    {
    }
}
