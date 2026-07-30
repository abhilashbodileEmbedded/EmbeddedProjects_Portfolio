# Queue Service Design

## Purpose
Provide a centralized communication mechanism between RTOS tasks.

## Current Design
- Queue Length: 5
- Message Type: LOG_Message_t
- Queue Owner: queue_service.c
- Queue Access: Through public APIs only

## Design Rationale
- Encapsulation of QueueHandle_t
- Decouples producer and consumer tasks
- Allows future replacement of the communication mechanism without affecting application modules