/*
 * drv_uart.h
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */

#ifndef DRIVERS_DRV_UART_H_
#define DRIVERS_DRV_UART_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

void UART_Driver_Init(void);

void UART_Driver_SendString(const char *str);


#ifdef __cplusplus
}
#endif

#endif /* DRIVERS_DRV_UART_H_ */
