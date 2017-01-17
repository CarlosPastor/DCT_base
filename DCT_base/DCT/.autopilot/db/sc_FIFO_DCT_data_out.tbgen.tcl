set moduleName sc_FIFO_DCT_data_out
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_FIFO_DCT::data_out}
set C_modelType { void 0 }
set C_modelArgList {
	{ dout int 8 regular {fifo 1 volatile }  }
	{ sc_FIFO_DCT_mC int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ s_DCT int 1 regular {pointer 0 volatile }  }
	{ s_done int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dout", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.dout.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mC", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sc_FIFO_DCT.mC","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "s_DCT", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_DCT.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_done", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_done.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ dout_din sc_out sc_lv 8 signal 0 } 
	{ dout_full_n sc_in sc_logic 1 signal 0 } 
	{ dout_write sc_out sc_logic 1 signal 0 } 
	{ sc_FIFO_DCT_mC_address0 sc_out sc_lv 6 signal 1 } 
	{ sc_FIFO_DCT_mC_ce0 sc_out sc_logic 1 signal 1 } 
	{ sc_FIFO_DCT_mC_q0 sc_in sc_lv 32 signal 1 } 
	{ s_DCT sc_in sc_logic 1 signal 2 } 
	{ s_done sc_out sc_logic 1 signal 3 } 
	{ s_done_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "dout_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dout", "role": "din" }} , 
 	{ "name": "dout_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "full_n" }} , 
 	{ "name": "dout_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "write" }} , 
 	{ "name": "sc_FIFO_DCT_mC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mC", "role": "q0" }} , 
 	{ "name": "s_DCT", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_DCT", "role": "default" }} , 
 	{ "name": "s_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_done", "role": "default" }} , 
 	{ "name": "s_done_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_done", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sc_FIFO_DCT_data_out",
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
		{"Name" : "dout", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "dout_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "din", "Type" : "Fifo", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_mA", "Type" : "Memory", "Direction" : "X"},
		{"Name" : "sc_FIFO_DCT_mB", "Type" : "Memory", "Direction" : "X"},
		{"Name" : "sc_FIFO_DCT_mC", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_exec_cnt", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_buffering", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_buffered", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_working", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_DCT", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_done", "Type" : "Vld", "Direction" : "O"}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "134", "Max" : "134"}
	, {"Name" : "Interval", "Min" : "134", "Max" : "134"}
]}

set Spec2ImplPortList { 
	dout { ap_fifo {  { dout_din fifo_data 1 8 }  { dout_full_n fifo_status 0 1 }  { dout_write fifo_update 1 1 } } }
	sc_FIFO_DCT_mC { ap_memory {  { sc_FIFO_DCT_mC_address0 mem_address 1 6 }  { sc_FIFO_DCT_mC_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mC_q0 mem_dout 0 32 } } }
	s_DCT { ap_none {  { s_DCT in_data 0 1 } } }
	s_done { ap_vld {  { s_done out_data 1 1 }  { s_done_ap_vld out_vld 1 1 } } }
}
