#include "main.h"
#include <stdint.h>
#include "stm32f0xx_hal_gpio.h"

#define I2C_CLEAR_SDA HAL_GPIO_WritePin(SW_I2C_SDA_GPIO_Port, SW_I2C_SDA_Pin, GPIO_PIN_RESET)
#define I2C_SET_SDA HAL_GPIO_WritePin(SW_I2C_SDA_GPIO_Port, SW_I2C_SDA_Pin, GPIO_PIN_SET)
#define I2C_READ_SDA HAL_GPIO_ReadPin(SW_I2C_SDA_GPIO_Port, SW_I2C_SDA_Pin)
#define I2C_CLEAR_SCL HAL_GPIO_WritePin(SW_I2C_SCL_GPIO_Port, SW_I2C_SCL_Pin, GPIO_PIN_RESET)
#define I2C_SET_SCL HAL_GPIO_WritePin(SW_I2C_SCL_GPIO_Port, SW_I2C_SCL_Pin, GPIO_PIN_SET)
#define I2C_DELAY delay_us(20) // 4 microsecond delay

typedef enum
{
    TCA9535_INPUT_PORT_0 = 0x00,         // Input port 0 register
    TCA9535_INPUT_PORT_1 = 0x01,         // Input port 1 register
    TCA9535_OUTPUT_PORT_0 = 0x02,        // Output port 0 register
    TCA9535_OUTPUT_PORT_1 = 0x03,        // Output port 1 register
    TCA9535_IN_POL_INVERT_PORT_0 = 0x04, // Polarity inversion port 0 register
    TCA9535_IN_POL_INVERT_PORT_1 = 0x05, // Polarity inversion port 1 register
    TCA9535_CONFIG_PORT_0 = 0x06,        // Configuration port 0 register
    TCA9535_CONFIG_PORT_1 = 0x07,        // Configuration port 1 register
} TCA9535_Registers;

typedef struct
{
    uint8_t i2c_address; // I2C address of the TCA9535
} TCA9535_handle_t;

void I2C_Bus_Init()
{
    I2C_SET_SDA;
    I2C_SET_SCL;
    I2C_DELAY;
}
_Bool I2C_write_byte(uint8_t data, _Bool start, _Bool stop)
{
    if (start)
    {
        I2C_CLEAR_SDA;
        I2C_DELAY;
        I2C_CLEAR_SCL;
        I2C_DELAY;
    }
    for (int j = 7; j >= 0; j--)
    {
        if (data & (1 << j))
            I2C_SET_SDA;
        else
            I2C_CLEAR_SDA;
        I2C_DELAY;
        I2C_SET_SCL;
        I2C_DELAY;
        I2C_CLEAR_SCL;
    }
    // read ack
    I2C_SET_SDA;
    I2C_DELAY;
    I2C_SET_SCL;
    I2C_DELAY;
    // if slave pulled SDA low ACK
    _Bool ret = !I2C_READ_SDA;
    I2C_CLEAR_SCL;
    I2C_DELAY;
    if (stop)
    {
        I2C_CLEAR_SDA;
        I2C_SET_SCL;
        I2C_DELAY;
        I2C_SET_SDA;
    }
    return ret;
}
void I2C_repeated_start()
{
    I2C_SET_SDA;
    I2C_DELAY;
    I2C_SET_SCL;
    I2C_DELAY;
    I2C_CLEAR_SDA;
    I2C_DELAY;
    I2C_CLEAR_SCL;
    I2C_DELAY;
}
void I2C_read_byte(uint8_t *data, _Bool ack)
{
    uint8_t d;
    for (int i = 7; i >= 0; i--)
    {
        I2C_SET_SCL;
        I2C_DELAY;
        d |= (I2C_READ_SDA << i);
        I2C_CLEAR_SCL;
        I2C_DELAY;
    }
    if (ack)
    {
        I2C_CLEAR_SDA;
        I2C_SET_SCL;
        I2C_DELAY;
        I2C_CLEAR_SCL;
    }
    else
    {
        I2C_SET_SDA;
        I2C_SET_SCL;
        I2C_DELAY;
        I2C_CLEAR_SCL;
    }
    *data = d;
}
void I2C_stop_condition(void)
{
    I2C_CLEAR_SDA;
    I2C_CLEAR_SCL;
    I2C_DELAY;
    I2C_SET_SCL;
    I2C_DELAY;
    I2C_SET_SDA;
}

_Bool I2C_read_byte_at(uint8_t dev_addr, uint8_t regaddr, uint8_t *data)
{
    if (!I2C_write_byte(dev_addr << 1, 1, 0))
        goto end;
    if (!I2C_write_byte(regaddr, 0, 0))
        goto end;
    I2C_repeated_start();
    if (!I2C_write_byte((dev_addr << 1) | 1, 0, 0))
        goto end;
    I2C_read_byte(data, 0);
    I2C_stop_condition();
    return 1;
end:
    return 0;
}

_Bool I2C_write_byte_at(uint8_t dev_addr, uint8_t regaddr, uint8_t data)
{
    if (!I2C_write_byte(dev_addr << 1, 1, 0))
        goto end;
    if (!I2C_write_byte(regaddr, 0, 0))
        goto end;
    if (!I2C_write_byte(data, 0, 1))
        goto end;
    return 1;
end:
    return 0;
}