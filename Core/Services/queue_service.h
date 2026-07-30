/*
 * queue_service.h
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */

#ifndef SERVICES_QUEUE_SERVICE_H_
#define SERVICES_QUEUE_SERVICE_H_

#ifdef __cplusplus
extern "C"
{
#endif


#include "FreeRTOS.h"
#include "queue.h"

/*Queue Events*/

typedef enum
{
	LOG_EVENT_SYSTEM_START = 0,
	LOG_EVENT_LED_ON,
	LOG_EVENT_LED_OFF,
	LOG_EVENT_MAX
}LOG_Event_t;

/*Queue message*/

typedef struct
{
	LOG_Event_t event;

	TickType_t tick;
}LOG_Message_t;

/*APIs*/

void QUEUE_SERVICE_Init(void);

BaseType_t QUEUE_SERVICE_Send(const LOG_Message_t *msg);

BaseType_t QUEUE_SERVICE_Receive(LOG_Message_t *msg, TickType_t timeout);

#ifdef __cplusplus
}
#endif

#endif /* SERVICES_QUEUE_SERVICE_H_ */
