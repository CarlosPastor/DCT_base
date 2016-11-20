############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project DCT_base
set_top main
add_files Tasks.cpp
add_files Tasks.h
add_files Top.cpp
add_files Top.h
add_files qdbmp.cpp
add_files qdbmp.h
add_files -tb testbench_Top.cpp
open_solution "DCT_simul"
set_part {xc7a35ticsg324-1l}
create_clock -period 10 -name default
#source "./DCT_base/DCT_simul/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
