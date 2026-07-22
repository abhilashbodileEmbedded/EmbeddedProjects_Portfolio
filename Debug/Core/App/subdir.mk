################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/app.c \
../Core/App/app_cli.c \
../Core/App/app_control.c \
../Core/App/app_fault.c \
../Core/App/app_led.c \
../Core/App/app_logger.c \
../Core/App/app_sensor.c 

OBJS += \
./Core/App/app.o \
./Core/App/app_cli.o \
./Core/App/app_control.o \
./Core/App/app_fault.o \
./Core/App/app_led.o \
./Core/App/app_logger.o \
./Core/App/app_sensor.o 

C_DEPS += \
./Core/App/app.d \
./Core/App/app_cli.d \
./Core/App/app_control.d \
./Core/App/app_fault.d \
./Core/App/app_led.d \
./Core/App/app_logger.d \
./Core/App/app_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/%.o Core/App/%.su Core/App/%.cyclo: ../Core/App/%.c Core/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/App" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Common" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Drivers" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Services" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App

clean-Core-2f-App:
	-$(RM) ./Core/App/app.cyclo ./Core/App/app.d ./Core/App/app.o ./Core/App/app.su ./Core/App/app_cli.cyclo ./Core/App/app_cli.d ./Core/App/app_cli.o ./Core/App/app_cli.su ./Core/App/app_control.cyclo ./Core/App/app_control.d ./Core/App/app_control.o ./Core/App/app_control.su ./Core/App/app_fault.cyclo ./Core/App/app_fault.d ./Core/App/app_fault.o ./Core/App/app_fault.su ./Core/App/app_led.cyclo ./Core/App/app_led.d ./Core/App/app_led.o ./Core/App/app_led.su ./Core/App/app_logger.cyclo ./Core/App/app_logger.d ./Core/App/app_logger.o ./Core/App/app_logger.su ./Core/App/app_sensor.cyclo ./Core/App/app_sensor.d ./Core/App/app_sensor.o ./Core/App/app_sensor.su

.PHONY: clean-Core-2f-App

