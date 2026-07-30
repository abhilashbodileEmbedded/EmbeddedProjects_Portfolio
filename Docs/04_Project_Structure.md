App/

Contains application tasks.

Drivers/

Contains hardware abstraction.

Services/

Contains RTOS services.

Common/

Contains shared typedefs.


# Project Structure

## Application Layer

The Application layer contains all business logic.

### Files

- app.c
- app_led.c
- app_sensor.c
- app_logger.c
- app_control.c
- app_fault.c
- app_cli.c

Each application module is responsible for exactly one functionality.

No application logic shall be implemented inside main.c.


## Services Layer

The Services layer provides reusable middleware that sits between the Application layer and Drivers.

Current Services:

- Queue Service
- Logger Service
- Watchdog Service

Responsibilities:

- Encapsulation of RTOS objects
- Common application services
- Reusable across multiple tasks