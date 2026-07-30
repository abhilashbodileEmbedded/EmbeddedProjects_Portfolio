/*
 * logger_service.h
 *
 *  Created on: Jul 17, 2026
 *      Author: ABHILASH
 */

#ifndef SERVICES_LOGGER_SERVICE_H_
#define SERVICES_LOGGER_SERVICE_H_

#ifdef __cplusplus
extern "C" {
#endif


#include "queue_service.h"

void LOGGER_SERVICE_Init(void);

void LOGGER_SERVICE_Log(const LOG_Message_t *msg);


#ifdef __cplusplus
}
#endif


#endif /* SERVICES_LOGGER_SERVICE_H_ */
