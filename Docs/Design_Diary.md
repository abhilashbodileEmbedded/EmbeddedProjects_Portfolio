Date:
Lesson:

What did we implement?

Why was it designed this way?

What did we learn?

Interview takeaway:




# Lesson 05

Date:
22 July 2026

## Objective

Create the application layer.

## Design Decision

Application code will never be written inside main.c.

All tasks will be created through APP_CreateTasks().

## Reason

Keeps main.c independent of application logic.

Improves scalability.

## Lessons Learned

Layered architecture separates hardware initialization from application behavior.


## Lesson 06 – First Running Task

### Objective
Create and run the first FreeRTOS task using the native API.

### Outcome
- Implemented APP_LED_Task.
- Created the task with xTaskCreate().
- Verified scheduler startup.
- Verified LED blink using vTaskDelay().

### Key Learning
A FreeRTOS task consists of:
- Task Control Block (TCB)
- Private Stack

The scheduler manages task execution based on task state and priority.

### Interview Takeaway
Explain what happens internally when xTaskCreate() is called and why vTaskDelay() is preferred over HAL_Delay() inside RTOS tasks.