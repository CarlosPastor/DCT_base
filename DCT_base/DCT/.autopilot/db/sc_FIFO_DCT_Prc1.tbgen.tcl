set moduleName sc_FIFO_DCT_Prc1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_FIFO_DCT::Prc1}
set C_modelType { void 0 }
set C_modelArgList {
	{ sync int 1 regular {pointer 0 volatile }  }
	{ error int 1 regular {pointer 1 volatile }  }
	{ din int 8 regular {pointer 0 volatile }  }
	{ s_start int 1 regular {pointer 1 volatile }  }
	{ s_working int 1 regular {pointer 0 volatile }  }
	{ sc_FIFO_DCT_mA_V int 18 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sync", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.sync.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "error", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.error.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.din.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_start", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_start.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_working", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_working.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mA_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "sc_FIFO_DCT.mA.V","cData": "uint18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ sync sc_in sc_logic 1 signal 0 } 
	{ error sc_out sc_logic 1 signal 1 } 
	{ error_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ din sc_in sc_lv 8 signal 2 } 
	{ s_start sc_out sc_logic 1 signal 3 } 
	{ s_start_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ s_working sc_in sc_logic 1 signal 4 } 
	{ sc_FIFO_DCT_mA_V_address0 sc_out sc_lv 6 signal 5 } 
	{ sc_FIFO_DCT_mA_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ sc_FIFO_DCT_mA_V_we0 sc_out sc_logic 1 signal 5 } 
	{ sc_FIFO_DCT_mA_V_d0 sc_out sc_lv 18 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "sync", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sync", "role": "default" }} , 
 	{ "name": "error", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "error", "role": "default" }} , 
 	{ "name": "error_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "error", "role": "ap_vld" }} , 
 	{ "name": "din", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "din", "role": "default" }} , 
 	{ "name": "s_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_start", "role": "default" }} , 
 	{ "name": "s_start_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_start", "role": "ap_vld" }} , 
 	{ "name": "s_working", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_working", "role": "default" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "we0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sc_FIFO_DCT_Prc1",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "clock", "Type" : "None", "Direction" : "I"},
		{"Name" : "reset", "Type" : "None", "Direction" : "I"},
		{"Name" : "sync", "Type" : "None", "Direction" : "I"},
		{"Name" : "data_ok", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "done", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "error", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "din", "Type" : "None", "Direction" : "I"},
		{"Name" : "dout", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "s_start", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "s_working", "Type" : "None", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_mA_V", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "sc_FIFO_DCT_mB_V", "Type" : "Memory", "Direction" : "X"}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set Spec2ImplPortList { 
	sync { ap_none {  { sync in_data 0 1 } } }
	error { ap_vld {  { error out_data 1 1 }  { error_ap_vld out_vld 1 1 } } }
	din { ap_none {  { din in_data 0 8 } } }
	s_start { ap_vld {  { s_start out_data 1 1 }  { s_start_ap_vld out_vld 1 1 } } }
	s_working { ap_none {  { s_working in_data 0 1 } } }
	sc_FIFO_DCT_mA_V { ap_memory {  { sc_FIFO_DCT_mA_V_address0 mem_address 1 6 }  { sc_FIFO_DCT_mA_V_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mA_V_we0 mem_we 1 1 }  { sc_FIFO_DCT_mA_V_d0 mem_din 1 18 } } }
}
