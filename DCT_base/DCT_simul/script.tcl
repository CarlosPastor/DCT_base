############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project DCT_base
set_top main
add_files Top.cpp
add_files Top.h
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
add_files -tb qdbmp.cpp
add_files -tb qdbmp.h
add_files -tb tb_init.cpp
add_files -tb tb_init.h
add_files -tb testbench_Top.cpp
open_solution "DCT_simul"
set_part {xc7a35ticsg324-1l}
create_clock -period 10 -name default
#source "./DCT_base/DCT_simul/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
