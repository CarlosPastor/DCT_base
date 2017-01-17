################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/alienBot/Documents/GitHub/DCT_base/Top.cpp \
C:/Users/alienBot/Documents/GitHub/DCT_base/sc_FIFO_DCT.cpp 

OBJS += \
./source/Top.o \
./source/sc_FIFO_DCT.o 

CPP_DEPS += \
./source/Top.d \
./source/sc_FIFO_DCT.d 


# Each subdirectory must supply rules for building sources it contributes
source/Top.o: C:/Users/alienBot/Documents/GitHub/DCT_base/Top.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/sc_FIFO_DCT.o: C:/Users/alienBot/Documents/GitHub/DCT_base/sc_FIFO_DCT.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


