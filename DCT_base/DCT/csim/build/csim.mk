# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2016.3
# Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../Tasks.cpp ../../../../blocker_512.cpp ../../../../imager_512.cpp ../../../../qdbmp.cpp ../../../../sc_FIFO_IDCT.cpp ../../../../tb_init.cpp ../../../../testbench_Top.cpp ../../../../sc_FIFO_DCT.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vivado_HLS/2016.3
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vivado_HLS/2016.3/msys/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
  AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
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

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

LFLAG += -L$(AUTOPILOT_TOOL)/systemc/lib -lsystemc_debug
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/Tasks.o: ../../../../Tasks.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../Tasks.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/Tasks.d

$(ObjDir)/blocker_512.o: ../../../../blocker_512.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../blocker_512.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/blocker_512.d

$(ObjDir)/imager_512.o: ../../../../imager_512.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../imager_512.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/imager_512.d

$(ObjDir)/qdbmp.o: ../../../../qdbmp.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../qdbmp.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/qdbmp.d

$(ObjDir)/sc_FIFO_IDCT.o: ../../../../sc_FIFO_IDCT.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../sc_FIFO_IDCT.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sc_FIFO_IDCT.d

$(ObjDir)/tb_init.o: ../../../../tb_init.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../tb_init.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_init.d

$(ObjDir)/testbench_Top.o: ../../../../testbench_Top.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../testbench_Top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/testbench_Top.d

$(ObjDir)/sc_FIFO_DCT.o: ../../../../sc_FIFO_DCT.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../sc_FIFO_DCT.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sc_FIFO_DCT.d
