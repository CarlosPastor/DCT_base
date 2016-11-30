# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2015.4
# Copyright (C) 2015 Xilinx Inc. All rights reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__HLS_FPO_v6_1__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../Tasks.cpp ../../../../qdbmp.cpp ../../../../testbench_Top.cpp ../../../../Top.cpp ../../../../blocker_512.cpp ../../../../imager_512.cpp ../../../../sc_FIFO_DCT.cpp ../../../../sc_FIFO_IDCT.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vivado_HLS/2015.4
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vivado_HLS/2015.4/msys/bin
endif
ifndef AP_CLANG_PATH
  AP_CLANG_PATH := C:/Xilinx/Vivado_HLS/2015.4/win64/tools/clang/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__HLS_FPO_v6_1__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/Tasks.o: ../../../../Tasks.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../Tasks.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD   $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/Tasks.d

$(ObjDir)/qdbmp.o: ../../../../qdbmp.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../qdbmp.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD   $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/qdbmp.d

$(ObjDir)/testbench_Top.o: ../../../../testbench_Top.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../testbench_Top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD   $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/testbench_Top.d

$(ObjDir)/Top.o: ../../../../Top.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../Top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/Top.d

$(ObjDir)/blocker_512.o: ../../../../blocker_512.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../blocker_512.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/blocker_512.d

$(ObjDir)/imager_512.o: ../../../../imager_512.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../imager_512.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/imager_512.d

$(ObjDir)/sc_FIFO_DCT.o: ../../../../sc_FIFO_DCT.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../sc_FIFO_DCT.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/sc_FIFO_DCT.d

$(ObjDir)/sc_FIFO_IDCT.o: ../../../../sc_FIFO_IDCT.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../sc_FIFO_IDCT.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/sc_FIFO_IDCT.d
