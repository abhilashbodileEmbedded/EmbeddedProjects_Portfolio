# UART Driver

## Objective

Provide a hardware abstraction layer for UART communication.

## Why a Driver?

- Reusable across applications
- Hides HAL implementation details
- Allows future migration to interrupt or DMA mode
- Simplifies testing

## Public APIs

- UART_Driver_Init()
- UART_Driver_SendString()

## Future Enhancements

- Interrupt-based transmission
- DMA support
- Mutex protection
- Circular TX buffer