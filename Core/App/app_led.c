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

static TaskHandle_t g_ledTaskHandle = NULL;

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
			g_ledTaskHandle);

	if(status != pdPASS)
	{
		while(1)
		{
			//Task Creation failed
		}
	}

}


//LED task code
void APP_LED_Task(void *pvParameters)
{
	(void)pvParameters;

	while(1)
	{
		HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
		vTaskDelay(pdMS_TO_TICKS(LED_BLINK_PERIOD_MS));
	}
}
