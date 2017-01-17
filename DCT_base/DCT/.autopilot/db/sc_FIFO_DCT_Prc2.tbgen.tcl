set moduleName sc_FIFO_DCT_Prc2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_FIFO_DCT::Prc2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_ok int 1 regular {pointer 1 volatile }  }
	{ done int 1 regular {pointer 1 volatile }  }
	{ dout int 8 regular {pointer 1 volatile }  }
	{ s_start int 1 regular {pointer 2 volatile }  }
	{ s_working int 1 regular {pointer 1 volatile }  }
	{ sc_FIFO_DCT_mA_V int 18 regular {array 64 { 1 3 } 1 1 }  }
	{ sc_FIFO_DCT_mB_V int 18 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_ok", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.data_ok.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "done", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.done.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.dout.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_start", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_start.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_working", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.s_working.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mA_V", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "sc_FIFO_DCT.mA.V","cData": "uint18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "sc_FIFO_DCT_mB_V", "interface" : "memory", "bitwidth" : 18, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "sc_FIFO_DCT.mB.V","cData": "uint18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ data_ok sc_out sc_logic 1 signal 0 } 
	{ data_ok_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ done sc_out sc_logic 1 signal 1 } 
	{ done_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ dout sc_out sc_lv 8 signal 2 } 
	{ dout_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ s_start_i sc_in sc_logic 1 signal 3 } 
	{ s_start_o sc_out sc_logic 1 signal 3 } 
	{ s_start_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ s_working sc_out sc_logic 1 signal 4 } 
	{ s_working_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ sc_FIFO_DCT_mA_V_address0 sc_out sc_lv 6 signal 5 } 
	{ sc_FIFO_DCT_mA_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ sc_FIFO_DCT_mA_V_q0 sc_in sc_lv 18 signal 5 } 
	{ sc_FIFO_DCT_mB_V_address0 sc_out sc_lv 6 signal 6 } 
	{ sc_FIFO_DCT_mB_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ sc_FIFO_DCT_mB_V_we0 sc_out sc_logic 1 signal 6 } 
	{ sc_FIFO_DCT_mB_V_d0 sc_out sc_lv 18 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "data_ok", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_ok", "role": "default" }} , 
 	{ "name": "data_ok_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_ok", "role": "ap_vld" }} , 
 	{ "name": "done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "done", "role": "default" }} , 
 	{ "name": "done_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "done", "role": "ap_vld" }} , 
 	{ "name": "dout", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dout", "role": "default" }} , 
 	{ "name": "dout_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout", "role": "ap_vld" }} , 
 	{ "name": "s_start_i", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_start", "role": "i" }} , 
 	{ "name": "s_start_o", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_start", "role": "o" }} , 
 	{ "name": "s_start_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_start", "role": "o_ap_vld" }} , 
 	{ "name": "s_working", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_working", "role": "default" }} , 
 	{ "name": "s_working_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_working", "role": "ap_vld" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mA_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mA_V", "role": "q0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB_V", "role": "address0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB_V", "role": "ce0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB_V", "role": "we0" }} , 
 	{ "name": "sc_FIFO_DCT_mB_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "sc_FIFO_DCT_mB_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sc_FIFO_DCT_Prc2",
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
		{"Name" : "s_start", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "s_working", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "sc_FIFO_DCT_mA_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_mB_V", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "b_a", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_a_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mac_mcud_U6", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mac_mdEe_U7", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3421", "Max" : "3421"}
	, {"Name" : "Interval", "Min" : "3421", "Max" : "3421"}
]}

set Spec2ImplPortList { 
	data_ok { ap_vld {  { data_ok out_data 1 1 }  { data_ok_ap_vld out_vld 1 1 } } }
	done { ap_vld {  { done out_data 1 1 }  { done_ap_vld out_vld 1 1 } } }
	dout { ap_vld {  { dout out_data 1 8 }  { dout_ap_vld out_vld 1 1 } } }
	s_start { ap_ovld {  { s_start_i in_data 0 1 }  { s_start_o out_data 1 1 }  { s_start_o_ap_vld out_vld 1 1 } } }
	s_working { ap_vld {  { s_working out_data 1 1 }  { s_working_ap_vld out_vld 1 1 } } }
	sc_FIFO_DCT_mA_V { ap_memory {  { sc_FIFO_DCT_mA_V_address0 mem_address 1 6 }  { sc_FIFO_DCT_mA_V_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mA_V_q0 mem_dout 0 18 } } }
	sc_FIFO_DCT_mB_V { ap_memory {  { sc_FIFO_DCT_mB_V_address0 mem_address 1 6 }  { sc_FIFO_DCT_mB_V_ce0 mem_ce 1 1 }  { sc_FIFO_DCT_mB_V_we0 mem_we 1 1 }  { sc_FIFO_DCT_mB_V_d0 mem_din 1 18 } } }
}
