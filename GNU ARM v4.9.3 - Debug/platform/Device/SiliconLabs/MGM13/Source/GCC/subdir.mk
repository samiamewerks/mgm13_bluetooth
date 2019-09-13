################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.c 

OBJS += \
./platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.o 

C_DEPS += \
./platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.d 


# Each subdirectory must supply rules for building sources it contributes
platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.o: ../platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.d" -MT"platform/Device/SiliconLabs/MGM13/Source/GCC/startup_mgm13.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


