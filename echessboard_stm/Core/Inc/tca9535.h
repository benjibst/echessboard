#include <stdint.h>
#include "stm32_sw_i2c.h"
#include "stm32f0xx_hal_gpio.h"

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

_Bool TCA9535_write_reg(TCA9535_handle_t *io, TCA9535_Registers reg, uint8_t data)
{
    // least significant bit is (1: read | 0: write)
    return I2C_send_byte_data(io->i2c_address << 1, reg, data);
}
uint8_t TCA9535_read_reg(TCA9535_handle_t *io, TCA9535_Registers reg)
{
    return I2C_receive_byte_data((io->i2c_address << 1) | 1, reg);
}
