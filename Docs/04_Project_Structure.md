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