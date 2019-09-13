################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/emdrv/rtcdrv/src/rtcdriver.c 

OBJS += \
./platform/emdrv/rtcdrv/src/rtcdriver.o 

C_DEPS += \
./platform/emdrv/rtcdrv/src/rtcdriver.d 


# Each subdirectory must supply rules for building sources it contributes
platform/emdrv/rtcdrv/src/rtcdriver.o: ../platform/emdrv/rtcdrv/src/rtcdriver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emdrv/rtcdrv/src/rtcdriver.d" -MT"platform/emdrv/rtcdrv/src/rtcdriver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


