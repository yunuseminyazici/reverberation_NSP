################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Examples/test.c 

OBJS += \
./src/Examples/test.o 

C_DEPS += \
./src/Examples/test.d 


# Each subdirectory must supply rules for building sources it contributes
src/Examples/%.o: ../src/Examples/%.c src/Examples/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -munaligned-access -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants  -g3 -DDEBUG -DTRACE -D__FPU_PRESENT -DARM_MATH_CM4 -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\cmsis" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\platform" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\S6E2CCA\PDL" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\S6E2CCA\startup" -std=gnu11 -Wmissing-prototypes -Wstrict-prototypes -Wbad-function-cast -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


