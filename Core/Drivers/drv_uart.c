/*
 * drv_uart.c
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */


#include "drv_uart.h"
#include "usart.h"
#include <string.h>


void UART_Driver_Init(void)
{

}

void UART_Driver_SendString(const char *str)
{
    HAL_UART_Transmit(&huart2,
                      (uint8_t *)str,
                      strlen(str),
                      HAL_MAX_DELAY);
}
