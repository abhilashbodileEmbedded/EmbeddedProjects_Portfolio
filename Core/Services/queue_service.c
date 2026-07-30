/*
 * queue_service.c
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */


#include "queue_service.h"

static QueueHandle_t g_logQueue = NULL;

void QUEUE_SERVICE_Init(void)
{
	g_logQueue = xQueueCreate(5, sizeof(LOG_Message_t));

	configASSERT(g_logQueue != NULL);
}

BaseType_t QUEUE_SERVICE_Send(const LOG_Message_t *msg)
{
	configASSERT(msg != NULL);

	return xQueueSend(
			g_logQueue,
			msg,
			0);
}

BaseType_t QUEUE_SERVICE_Receive(LOG_Message_t *msg, TickType_t timeout)
{
	configASSERT(msg != NULL);

	return xQueueReceive(
			g_logQueue,
			msg,
			timeout);
}
