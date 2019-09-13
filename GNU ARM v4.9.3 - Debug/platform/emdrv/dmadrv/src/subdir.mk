################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/emdrv/dmadrv/src/dmadrv.c 

OBJS += \
./platform/emdrv/dmadrv/src/dmadrv.o 

C_DEPS += \
./platform/emdrv/dmadrv/src/dmadrv.d 


# Each subdirectory must supply rules for building sources it contributes
platform/emdrv/dmadrv/src/dmadrv.o: ../platform/emdrv/dmadrv/src/dmadrv.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emdrv/dmadrv/src/dmadrv.d" -MT"platform/emdrv/dmadrv/src/dmadrv.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


