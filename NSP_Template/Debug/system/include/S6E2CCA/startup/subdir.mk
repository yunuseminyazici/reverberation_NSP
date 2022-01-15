################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../system/include/S6E2CCA/startup/startup_s6e2cc.S 

OBJS += \
./system/include/S6E2CCA/startup/startup_s6e2cc.o 

S_UPPER_DEPS += \
./system/include/S6E2CCA/startup/startup_s6e2cc.d 


# Each subdirectory must supply rules for building sources it contributes
system/include/S6E2CCA/startup/%.o: ../system/include/S6E2CCA/startup/%.S system/include/S6E2CCA/startup/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -munaligned-access -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants  -g3 -x assembler-with-cpp -DDEBUG -DTRACE -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\S6E2CCA\startup" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\S6E2CCA\PDL" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\platform" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


