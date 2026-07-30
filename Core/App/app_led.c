/*
 * app_led.c
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */


#include "app_led.h"
#include "main.h"

#include "FreeRTOS.h"
#include "task.h"

#include "queue_service.h"


static TaskHandle_t g_ledTaskHandle = NULL;

static void APP_LED_Task(void *pvParameters);

#define LED_BLINK_PERIOD_MS		(500U)

//LED Init Application code
void APP_LED_Init(void)
{
	BaseType_t status;

	status = xTaskCreate(
			APP_LED_Task,
			"LED Task",
			128,
			NULL,
			1,
			&g_ledTaskHandle);

	if(status != pdPASS)
	{
		while(1)
		{
			//Task Creation failed
		}
	}

}


//LED task code
static void APP_LED_Task(void *pvParameters)
{
	(void)pvParameters;
	GPIO_PinState state;

	while(1)
	{
		HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);

		LOG_Message_t logmessage;
		state = HAL_GPIO_ReadPin(LD2_GPIO_Port, LD2_Pin);

		if(state == GPIO_PIN_SET)
		{
			logmessage.event = LOG_EVENT_LED_ON;
		}
		else
		{
			logmessage.event = LOG_EVENT_LED_OFF;
		}
		logmessage.tick = xTaskGetTickCount();


		if(QUEUE_SERVICE_Send(&logmessage) != pdPASS)
		{
		    /* Queue Full */

		    /* Future:
		       Increment error counter
		       Raise diagnostic
		       Log fault
		    */
		}
		vTaskDelay(pdMS_TO_TICKS(LED_BLINK_PERIOD_MS));
	}
}
