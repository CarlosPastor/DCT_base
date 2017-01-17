################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/alienBot/Documents/GitHub/DCT_base/Tasks.cpp \
C:/Users/alienBot/Documents/GitHub/DCT_base/main.cpp \
C:/Users/alienBot/Documents/GitHub/DCT_base/qdbmp.cpp \
C:/Users/alienBot/Documents/GitHub/DCT_base/tb_init.cpp \
C:/Users/alienBot/Documents/GitHub/DCT_base/testbench_Top.cpp 

OBJS += \
./testbench/Tasks.o \
./testbench/main.o \
./testbench/qdbmp.o \
./testbench/tb_init.o \
./testbench/testbench_Top.o 

CPP_DEPS += \
./testbench/Tasks.d \
./testbench/main.d \
./testbench/qdbmp.d \
./testbench/tb_init.d \
./testbench/testbench_Top.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/Tasks.o: C:/Users/alienBot/Documents/GitHub/DCT_base/Tasks.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/main.o: C:/Users/alienBot/Documents/GitHub/DCT_base/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/qdbmp.o: C:/Users/alienBot/Documents/GitHub/DCT_base/qdbmp.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/tb_init.o: C:/Users/alienBot/Documents/GitHub/DCT_base/tb_init.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/testbench_Top.o: C:/Users/alienBot/Documents/GitHub/DCT_base/testbench_Top.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


