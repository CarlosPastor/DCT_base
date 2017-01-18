set moduleName sc_FIFO_DCT_DCT
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_FIFO_DCT::DCT}
set C_modelType { void 0 }
set C_modelArgList {
	{ sc_FIFO_DCT_mA int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ sc_FIFO_DCT_mB int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ sc_FIFO_DCT_mC int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ sc_FIFO_DCT_exec_cnt int 32 regular {pointer 2}  }
	{ s_buffered int 1 regular {pointer 0 volatile }  }
	{ s_working int 1 regular {pointer 1 volatile }  }
	{ s_DCT int 1 regular {pointer 1 volatile }  }
	{ s_done int 1 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sc_FIFO_DCT_mA", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sc_FIFO_DCT.mA","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mB", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sc_FIFO_DCT.mB","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mC", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sc_FIFO_DCT.mC","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_exec_cnt", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sc_FIFO_DCT.exec_cnt","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_buffered", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_buffered.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_working", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_working.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_DCT", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_DCT.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_done", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_done.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ sc_FIFO_DCT_mA_address0 sc_out sc_lv 6 signal 0 } 
	{ sc_FIFO_DCT_mA_ce0 sc_out sc_logic 1 signal 0 } 
	{ sc_FIFO_DCT_mA_q0 sc_in sc_lv 32 signal 0 } 
	{ sc_FIFO_DCT_mB_address0 sc_out sc_lv 6 signal 1 } 
	{ sc_FIFO_DCT_mB_ce0 sc_out sc_logic 1 signal 1 } 
	{ sc_FIFO_DCT_mB_we0 sc_out sc_logic 1 signal 1 } 
	{ sc_FIFO_DCT_mB_d0 sc_out sc_lv 32 signal 1 } 
	{ sc_FIFO_DCT_mC_address0 sc_out sc_lv 6 signal 2 } 
	{ sc_FIFO_DCT_mC_ce0 sc_out sc_logic 1 signal 2 } 
	{ sc_FIFO_DCT_mC_we0 sc_out sc_logic 1 signal 2 } 
	{ sc_FIFO_DCT_mC_d0 sc_out sc_lv 32 signal 2 } 
	{ sc_FIFO_DCT_exec_cnt_i sc_in sc_lv 32 signal 3 } 
	{ sc_FIFO_DCT_exec_cnt_o sc_out sc_lv 32 signal 3 } 
	{ sc_FIFO_DCT_exec_cnt_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ s_buffered sc_in sc_logic 1 signal 4 } 
	{ s_working sc_out sc_logic 1 signal 5 } 
	{ s_working_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ s_DCT sc_out sc_logic 1 signal 6 } 
	{ s_DCT_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ s_done sc_in sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "sc_FIFO_DCT_mA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "q0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB", "role": "we0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB", "role": "d0" }} , 
 	{ "name": "sc_FIFO_DCT_mC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "we0" }} , 
 	{ "name": "sc_FIFO_DCT_mC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "d0" }} , 
 	{ "name": "sc_FIFO_DCT_exec_cnt_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_exec_cnt", "role": "i" }} , 
 	{ "name": "sc_FIFO_DCT_exec_cnt_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_exec_cnt", "role": "o" }} , 
 	{ "name": "sc_FIFO_DCT_exec_cnt_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sc_FIFO_DCT_exec_cnt", "role": "o_ap_vld" }} , 
 	{ "name": "s_buffered", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_buffered", "role": "default" }} , 
 	{ "name": "s_working", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_working", "role": "default" }} , 
 	{ "name": "s_working_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_working", "role": "ap_vld" }} , 
 	{ "name": "s_DCT", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_DCT", "role": "default" }} , 
 	{ "name": "s_DCT_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_DCT", "role": "ap_vld" }} , 
 	{ "name": "s_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_done", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sc_FIFO_DCT_DCT",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "clock", "Type" : "None", "Direction" : "I"},
		{"Name" : "reset", "Type" : "None", "Direction" : "I"},
		{"Name" : "enable", "Type" : "None", "Direction" : "I"},
		{"Name" : "dout", "Type" : "Fifo", "Direction" : "O"},
		{"Name" : "din", "Type" : "Fifo", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_mA", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_mB", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "sc_FIFO_DCT_mC", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "sc_FIFO_DCT_exec_cnt", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "s_buffering", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_buffered", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_working", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "s_DCT", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "s_done", "Type" : "None", "Direction" : "I"},
		{"Name" : "b_a", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_a_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mul_8bkb_U0", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mul_3cud_U1", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7583", "Max" : "7583"}
	, {"Name" : "Interval", "Min" : "7583", "Max" : "7583"}
]}

set Spec2ImplPortList { 
	sc_FIFO_DCT_mA { ap_memory {  { sc_FIFO_DCT_mA_address0 mem_address 1 6 }  { sc_FIFO_DCT_mA_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mA_q0 mem_dout 0 32 } } }
	sc_FIFO_DCT_mB { ap_memory {  { sc_FIFO_DCT_mB_address0 mem_address 1 6 }  { sc_FIFO_DCT_mB_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mB_we0 mem_we 1 1 }  { sc_FIFO_DCT_mB_d0 mem_din 1 32 } } }
	sc_FIFO_DCT_mC { ap_memory {  { sc_FIFO_DCT_mC_address0 mem_address 1 6 }  { sc_FIFO_DCT_mC_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mC_we0 mem_we 1 1 }  { sc_FIFO_DCT_mC_d0 mem_din 1 32 } } }
	sc_FIFO_DCT_exec_cnt { ap_ovld {  { sc_FIFO_DCT_exec_cnt_i in_data 0 32 }  { sc_FIFO_DCT_exec_cnt_o out_data 1 32 }  { sc_FIFO_DCT_exec_cnt_o_ap_vld out_vld 1 1 } } }
	s_buffered { ap_none {  { s_buffered in_data 0 1 } } }
	s_working { ap_vld {  { s_working out_data 1 1 }  { s_working_ap_vld out_vld 1 1 } } }
	s_DCT { ap_vld {  { s_DCT out_data 1 1 }  { s_DCT_ap_vld out_vld 1 1 } } }
	s_done { ap_none {  { s_done in_data 0 1 } } }
}
