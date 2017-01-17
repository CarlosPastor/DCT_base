################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DCT_simul/.autopilot/db/sc_FIFO_IDCT.pp.0.cpp 

O_SRCS += \
../DCT_simul/.autopilot/db/sc_FIFO_IDCT.pp.00.o 

OBJS += \
./DCT_simul/.autopilot/db/sc_FIFO_IDCT.pp.0.o 

CPP_DEPS += \
./DCT_simul/.autopilot/db/sc_FIFO_IDCT.pp.0.d 


# Each subdirectory must supply rules for building sources it contributes
DCT_simul/.autopilot/db/%.o: ../DCT_simul/.autopilot/db/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.3/include/etc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/auto_cc/include -IC:/Users/alienBot/Documents/GitHub/DCT_base -IC:/Xilinx/Vivado_HLS/2016.3/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2016.3/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.3/include -IC:/Users/bot/Documents/GitHub/DCT_base -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


