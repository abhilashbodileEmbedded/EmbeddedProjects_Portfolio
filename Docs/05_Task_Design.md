Task			Priority			Stack			Period	Purpose
LED	Low			128					500 ms			Blink LED
Sensor	High	256					500 ms			Generate sensor data
Logger	Normal	256					Event			UART logging
CLI	Normal		512					Event			UART commands


# Task Design

## LED Task

### Responsibility

Blink the onboard LED every 500 ms.

### Priority

Low

Reason:

It is not safety-critical.

### Stack Size

Initially 128 words.

Will be reviewed after stack analysis.

### Period

500 ms

### RTOS API

vTaskDelay()

### Future Improvements

Control blink rate based on ECU state.

## LED Task

Purpose:
Blink status LED every 500 ms.

Priority:
1

Stack:
128 words (512 bytes)

RTOS API:
xTaskCreate()
vTaskDelay()

State Flow:

Ready
 ↓
Running
 ↓
Blocked (500 ms)
 ↓
Ready
 ↓
Running