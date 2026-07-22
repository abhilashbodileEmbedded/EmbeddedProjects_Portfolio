################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Services/logger_service.c \
../Core/Services/queue_service.c \
../Core/Services/watchdog_service.c 

OBJS += \
./Core/Services/logger_service.o \
./Core/Services/queue_service.o \
./Core/Services/watchdog_service.o 

C_DEPS += \
./Core/Services/logger_service.d \
./Core/Services/queue_service.d \
./Core/Services/watchdog_service.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Services/%.o Core/Services/%.su Core/Services/%.cyclo: ../Core/Services/%.c Core/Services/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/App" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Common" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Drivers" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Services" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Services

clean-Core-2f-Services:
	-$(RM) ./Core/Services/logger_service.cyclo ./Core/Services/logger_service.d ./Core/Services/logger_service.o ./Core/Services/logger_service.su ./Core/Services/queue_service.cyclo ./Core/Services/queue_service.d ./Core/Services/queue_service.o ./Core/Services/queue_service.su ./Core/Services/watchdog_service.cyclo ./Core/Services/watchdog_service.d ./Core/Services/watchdog_service.o ./Core/Services/watchdog_service.su

.PHONY: clean-Core-2f-Services

