/*
 * app.c
 *
 *  Created on: Jul 18, 2026
 *      Author: ABHILASH
 */


#include "app.h"
#include "app_led.h"
#include "drv_uart.h"
#include "app_logger.h"
#include "queue_service.h"

void APP_Init(void)
{

}

void APP_Start(void)
{
	UART_Driver_Init();

	QUEUE_SERVICE_Init();

	APP_LED_Init();

	APP_LOGGER_Init();

}
