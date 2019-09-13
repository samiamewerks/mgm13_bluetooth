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
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DHAL_CONFIG=1' '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DMGM13S12F512GA=1' -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\CMSIS\Include" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\protocol\bluetooth\ble_stack\inc\soc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\Device\SiliconLabs\MGM13\Include" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\sleep\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emlib\src" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emlib\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\hardware\kit\common\halconfig" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\sleep\src" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\hardware\module\config" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\radio\rail_lib\common" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\hardware\kit\common\bsp" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\hardware\kit\common\drivers" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\app\bluetooth\common\util" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\protocol\bluetooth\ble_stack\inc\common" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\Device\SiliconLabs\MGM13\Source\GCC" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\Device\SiliconLabs\MGM13\Source" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\radio\rail_lib\protocol\ieee802154" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\common\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\halconfig\inc\hal-config" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\uartdrv\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\bootloader\api" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\radio\rail_lib\protocol\ble" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\bootloader" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\spidrv\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\dmadrv\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\rtcdrv\inc" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\rtcdrv\config" -I"C:\Users\samia\SimplicityStudio\v4_workspace\soc-scott\platform\emdrv\spidrv\config" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"app/bluetooth/common/util/infrastructure.d" -MT"app/bluetooth/common/util/infrastructure.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


