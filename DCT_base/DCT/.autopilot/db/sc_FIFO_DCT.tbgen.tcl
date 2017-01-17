set moduleName sc_FIFO_DCT
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_FIFO_DCT::sc_FIFO_DCT}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ sync int 1 regular {pointer 0 volatile }  }
	{ data_ok int 1 regular {pointer 1 volatile }  }
	{ done int 1 regular {pointer 1 volatile }  }
	{ error int 1 regular {pointer 1 volatile }  }
	{ din int 8 regular {pointer 0 volatile }  }
	{ dout int 8 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sync", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.sync.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_ok", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.data_ok.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "done", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.done.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "error", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.error.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.din.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.dout.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock } 
	{ sync sc_in sc_logic 1 signal 2 clock } 
	{ data_ok sc_out sc_logic 1 signal 3 clock } 
	{ done sc_out sc_logic 1 signal 4 clock } 
	{ error sc_out sc_logic 1 signal 5 clock } 
	{ din sc_in sc_lv 8 signal 6 clock } 
	{ dout sc_out sc_lv 8 signal 7 clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "sync", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sync", "role": "default" }} , 
 	{ "name": "data_ok", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_ok", "role": "default" }} , 
 	{ "name": "done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "done", "role": "default" }} , 
 	{ "name": "error", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "error", "role": "default" }} , 
 	{ "name": "din", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "din", "role": "default" }} , 
 	{ "name": "dout", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dout", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9"],
		"CDFG" : "sc_FIFO_DCT",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "1",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "clock", "Type" : "None", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "clock"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "clock"}]},
		{"Name" : "reset", "Type" : "None", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "reset"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "reset"}]},
		{"Name" : "sync", "Type" : "None", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "sync"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "sync"}]},
		{"Name" : "data_ok", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "data_ok"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "data_ok"}]},
		{"Name" : "done", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "done"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "done"}]},
		{"Name" : "error", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "error"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "error"}]},
		{"Name" : "din", "Type" : "None", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "din"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "din"}]},
		{"Name" : "dout", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "dout"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "dout"}]},
		{"Name" : "s_start", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "s_start"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "s_start"}]},
		{"Name" : "s_working", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "s_working"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "s_working"}]},
		{"Name" : "sc_FIFO_DCT_mA_V", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "sc_FIFO_DCT_mA_V"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "sc_FIFO_DCT_mA_V"}]},
		{"Name" : "sc_FIFO_DCT_mB_V", "Type" : "Memory", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sc_FIFO_DCT_Prc1_fu_118", "Port" : "sc_FIFO_DCT_mB_V"},
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "sc_FIFO_DCT_mB_V"}]},
		{"Name" : "sc_FIFO_DCT_ssdm_thread_M_Prc1", "Type" : "None", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_ssdm_thread_M_Prc2", "Type" : "None", "Direction" : "I"},
		{"Name" : "b_a", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "b_a"}]},
		{"Name" : "b", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "grp_sc_FIFO_DCT_Prc2_fu_86", "Port" : "b"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mA_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mB_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc2_fu_86", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc2_fu_86.b_a_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc2_fu_86.b_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc2_fu_86.a_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc2_fu_86.sc_FIFO_DCT_mac_mcud_U6", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc2_fu_86.sc_FIFO_DCT_mac_mdEe_U7", "Parent" : "3"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_Prc1_fu_118", "Parent" : "0",
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
	{"Name" : "Latency", "Min" : "0", "Max" : "3422"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "3423"}
]}

set Spec2ImplPortList { 
	sync { ap_none {  { sync in_data 0 1 } } }
	data_ok { ap_vld {  { data_ok out_data 1 1 } } }
	done { ap_vld {  { done out_data 1 1 } } }
	error { ap_vld {  { error out_data 1 1 } } }
	din { ap_none {  { din in_data 0 8 } } }
	dout { ap_vld {  { dout out_data 1 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
