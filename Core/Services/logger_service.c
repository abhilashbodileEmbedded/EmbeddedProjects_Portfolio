/*
 * logger_service.c
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */


#include "logger_service.h"

#include <stdio.h>

#include "drv_uart.h"


/*==========================================================
 *                Private Variables
 *==========================================================*/

static char logBuffer[100];

static const char * const eventString[] =
{
		"SYSTEM START",
		"LED ON",
		"LED OFF"
};



/*==========================================================
 *                Public Functions
 *==========================================================*/

void LOGGER_SERVICE_Init(void)
{

}

void LOGGER_SERVICE_Log(const LOG_Message_t *msg)
{
	if(msg == NULL)
	{
		return;
	}

	if(msg->event >= LOG_EVENT_MAX)
	{
		return;
	}

	(void)snprintf(logBuffer, sizeof(logBuffer), "[%lu] %s\r\n", (unsigned long)msg->tick, eventString[msg->event]);

	UART_Driver_SendString(logBuffer);
}







