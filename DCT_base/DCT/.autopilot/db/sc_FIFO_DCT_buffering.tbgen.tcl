set moduleName sc_FIFO_DCT_buffering
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_FIFO_DCT::buffering}
set C_modelType { void 0 }
set C_modelArgList {
	{ din int 8 regular {fifo 0 volatile }  }
	{ sc_FIFO_DCT_mA int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ s_buffered int 1 regular {pointer 1 volatile }  }
	{ s_working int 1 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.din.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mA", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sc_FIFO_DCT.mA","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "s_buffered", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_buffered.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_working", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_working.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ din_dout sc_in sc_lv 8 signal 0 } 
	{ din_empty_n sc_in sc_logic 1 signal 0 } 
	{ din_read sc_out sc_logic 1 signal 0 } 
	{ sc_FIFO_DCT_mA_address0 sc_out sc_lv 6 signal 1 } 
	{ sc_FIFO_DCT_mA_ce0 sc_out sc_logic 1 signal 1 } 
	{ sc_FIFO_DCT_mA_we0 sc_out sc_logic 1 signal 1 } 
	{ sc_FIFO_DCT_mA_d0 sc_out sc_lv 32 signal 1 } 
	{ s_buffered sc_out sc_logic 1 signal 2 } 
	{ s_buffered_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ s_working sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "din_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "din", "role": "dout" }} , 
 	{ "name": "din_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din", "role": "empty_n" }} , 
 	{ "name": "din_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din", "role": "read" }} , 
 	{ "name": "sc_FIFO_DCT_mA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "we0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA", "role": "d0" }} , 
 	{ "name": "s_buffered", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_buffered", "role": "default" }} , 
 	{ "name": "s_buffered_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_buffered", "role": "ap_vld" }} , 
 	{ "name": "s_working", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_working", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sc_FIFO_DCT_buffering",
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
		{"Name" : "din", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "din_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "sc_FIFO_DCT_mA", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "sc_FIFO_DCT_mB", "Type" : "Memory", "Direction" : "X"},
		{"Name" : "sc_FIFO_DCT_mC", "Type" : "Memory", "Direction" : "X"},
		{"Name" : "sc_FIFO_DCT_exec_cnt", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_buffering", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_buffered", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "s_working", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_DCT", "Type" : "None", "Direction" : "I"},
		{"Name" : "s_done", "Type" : "None", "Direction" : "I"}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "6"}
]}

set Spec2ImplPortList { 
	din { ap_fifo {  { din_dout fifo_data 0 8 }  { din_empty_n fifo_status 0 1 }  { din_read fifo_update 1 1 } } }
	sc_FIFO_DCT_mA { ap_memory {  { sc_FIFO_DCT_mA_address0 mem_address 1 6 }  { sc_FIFO_DCT_mA_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mA_we0 mem_we 1 1 }  { sc_FIFO_DCT_mA_d0 mem_din 1 32 } } }
	s_buffered { ap_vld {  { s_buffered out_data 1 1 }  { s_buffered_ap_vld out_vld 1 1 } } }
	s_working { ap_none {  { s_working in_data 0 1 } } }
}
