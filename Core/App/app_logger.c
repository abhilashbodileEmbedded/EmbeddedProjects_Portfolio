/*
 * app_logger.c
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */


#include "app_logger.h"
//#include "drv_uart.h"
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"

#include "queue_service.h"
#include "logger_service.h"

static TaskHandle_t g_loggerTaskHandle = NULL;

static void APP_LOGGER_Task(void *pvParameters);

void APP_LOGGER_Init()
{
	BaseType_t status;

	status = xTaskCreate(
	        APP_LOGGER_Task,
	        "LOGGER",
	        configMINIMAL_STACK_SIZE,
	        NULL,
	        tskIDLE_PRIORITY + 2,
	        &g_loggerTaskHandle);

	if(status != pdPASS)
	{
	    Error_Handler();
	}
}

static void APP_LOGGER_Task(void *pvParameters)
{
	(void)pvParameters;
	LOG_Message_t logmessage;
	while(1)
	{
		if(QUEUE_SERVICE_Receive(&logmessage, portMAX_DELAY) == pdPASS)
		{
			LOGGER_SERVICE_Log(&logmessage);
		}
	}
}
