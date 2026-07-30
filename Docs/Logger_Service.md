# Logger Service

## Responsibility
Convert LOG_Message_t into human-readable text and output it through the selected interface.

## Public APIs

LOGGER_SERVICE_Init()

LOGGER_SERVICE_Log()

## Private Data

logBuffer[100]

eventString[]

## Design Notes

- Only Logger Task accesses this service.
- Therefore no mutex is required.
- Static buffer is safe because the service is single-owner.
- Event validation prevents invalid array indexing.