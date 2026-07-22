################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Drivers/drv_gpio.c \
../Core/Drivers/drv_uart.c 

OBJS += \
./Core/Drivers/drv_gpio.o \
./Core/Drivers/drv_uart.o 

C_DEPS += \
./Core/Drivers/drv_gpio.d \
./Core/Drivers/drv_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Drivers/%.o Core/Drivers/%.su Core/Drivers/%.cyclo: ../Core/Drivers/%.c Core/Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/App" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Common" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Drivers" -I"E:/FreeRTOS_Project_Practice_Any/EmbSysProject/Smart_Vehicle_ECU_RTOS/Core/Services" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Drivers

clean-Core-2f-Drivers:
	-$(RM) ./Core/Drivers/drv_gpio.cyclo ./Core/Drivers/drv_gpio.d ./Core/Drivers/drv_gpio.o ./Core/Drivers/drv_gpio.su ./Core/Drivers/drv_uart.cyclo ./Core/Drivers/drv_uart.d ./Core/Drivers/drv_uart.o ./Core/Drivers/drv_uart.su

.PHONY: clean-Core-2f-Drivers

