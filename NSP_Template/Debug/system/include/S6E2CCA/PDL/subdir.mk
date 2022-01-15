################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/include/S6E2CCA/PDL/clk.c \
../system/include/S6E2CCA/PDL/dstc.c \
../system/include/S6E2CCA/PDL/i2s.c \
../system/include/S6E2CCA/PDL/interrupts_fm4_type_b.c \
../system/include/S6E2CCA/PDL/mfs.c \
../system/include/S6E2CCA/PDL/pdl.c \
../system/include/S6E2CCA/PDL/system_s6e2cc.c \
../system/include/S6E2CCA/PDL/wm8731.c 

OBJS += \
./system/include/S6E2CCA/PDL/clk.o \
./system/include/S6E2CCA/PDL/dstc.o \
./system/include/S6E2CCA/PDL/i2s.o \
./system/include/S6E2CCA/PDL/interrupts_fm4_type_b.o \
./system/include/S6E2CCA/PDL/mfs.o \
./system/include/S6E2CCA/PDL/pdl.o \
./system/include/S6E2CCA/PDL/system_s6e2cc.o \
./system/include/S6E2CCA/PDL/wm8731.o 

C_DEPS += \
./system/include/S6E2CCA/PDL/clk.d \
./system/include/S6E2CCA/PDL/dstc.d \
./system/include/S6E2CCA/PDL/i2s.d \
./system/include/S6E2CCA/PDL/interrupts_fm4_type_b.d \
./system/include/S6E2CCA/PDL/mfs.d \
./system/include/S6E2CCA/PDL/pdl.d \
./system/include/S6E2CCA/PDL/system_s6e2cc.d \
./system/include/S6E2CCA/PDL/wm8731.d 


# Each subdirectory must supply rules for building sources it contributes
system/include/S6E2CCA/PDL/%.o: ../system/include/S6E2CCA/PDL/%.c system/include/S6E2CCA/PDL/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -munaligned-access -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants  -g3 -DDEBUG -DTRACE -D__FPU_PRESENT -DARM_MATH_CM4 -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\cmsis" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\platform" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\S6E2CCA\PDL" -I"D:\Dropbox\myDocuments\STM2\Real-Time signal processing\Project\Template\NSP_Template\system\include\S6E2CCA\startup" -std=gnu11 -Wmissing-prototypes -Wstrict-prototypes -Wbad-function-cast -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


