############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DCT_base
set_top sc_FIFO_DCT
add_files blocker_512.cpp
add_files blocker_512.h
add_files imager_512.cpp
add_files imager_512.h
add_files sc_FIFO_DCT.cpp
add_files sc_FIFO_DCT.h
add_files sc_FIFO_IDCT.cpp
add_files sc_FIFO_IDCT.h
add_files -tb Tasks.cpp
add_files -tb Tasks.h
add_files -tb lena512.bmp
add_files -tb main.cpp
add_files -tb qdbmp.cpp
add_files -tb qdbmp.h
add_files -tb tb_init.cpp
add_files -tb tb_init.h
open_solution "DCT"
set_part {xc7a35ticpg236-1l} -tool vivado
create_clock -period 10 -name default
#source "./DCT_base/DCT/directives.tcl"
csim_design -argv {-g}
csynth_design
cosim_design
export_design -format ip_catalog
