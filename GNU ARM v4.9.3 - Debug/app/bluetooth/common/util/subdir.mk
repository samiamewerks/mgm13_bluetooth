################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/bluetooth/common/util/infrastructure.c 

OBJS += \
./app/bluetooth/common/util/infrastructure.o 

C_DEPS += \
./app/bluetooth/common/util/infrastructure.d 


# Each subdirectory must supply rules for building sources it contributes
app/bluetooth/common/util/infrastructure.o: ../app/bluetooth/common/util/infrastructure.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"app/bluetooth/common/util/infrastructure.d" -MT"app/bluetooth/common/util/infrastructure.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


