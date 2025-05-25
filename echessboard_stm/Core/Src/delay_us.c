#include "delay_us.h"

inline void delay_us(uint32_t us)
{
    TIM1->CNT = 0; // Reset the timer counter
    us <<= 4;      // assumes timer at 16MHz
    while (TIM1->CNT < us)
    {
    }
}