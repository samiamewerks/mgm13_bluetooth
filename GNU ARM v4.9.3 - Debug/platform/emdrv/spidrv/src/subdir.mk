################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/emdrv/spidrv/src/spidrv.c 

OBJS += \
./platform/emdrv/spidrv/src/spidrv.o 

C_DEPS += \
./platform/emdrv/spidrv/src/spidrv.d 


# Each subdirectory must supply rules for building sources it contributes
platform/emdrv/spidrv/src/spidrv.o: ../platform/emdrv/spidrv/src/spidrv.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emdrv/spidrv/src/spidrv.d" -MT"platform/emdrv/spidrv/src/spidrv.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


