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
	{ enable int 1 unused {pointer 0}  }
	{ dout int 8 regular {fifo 1 volatile }  }
	{ din int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sc_FIFO_DCT.enable.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.dout.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sc_FIFO_DCT.din.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock } 
	{ enable sc_in sc_logic 1 signal 2 clock } 
	{ dout_din sc_out sc_lv 8 signal 3 clock } 
	{ dout_full_n sc_in sc_logic 1 signal 3 clock } 
	{ dout_write sc_out sc_logic 1 signal 3 clock } 
	{ din_dout sc_in sc_lv 8 signal 4 clock } 
	{ din_empty_n sc_in sc_logic 1 signal 4 clock } 
	{ din_read sc_out sc_logic 1 signal 4 clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "dout_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dout", "role": "din" }} , 
 	{ "name": "dout_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "full_n" }} , 
 	{ "name": "dout_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "write" }} , 
 	{ "name": "din_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "din", "role": "dout" }} , 
 	{ "name": "din_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din", "role": "empty_n" }} , 
 	{ "name": "din_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "41"],
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
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "clock"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "clock"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "clock"}]},
		{"Name" : "reset", "Type" : "None", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "reset"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "reset"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "reset"}]},
		{"Name" : "enable", "Type" : "None", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "enable"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "enable"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "enable"}]},
		{"Name" : "dout", "Type" : "Fifo", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "dout"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "dout"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "dout"}]},
		{"Name" : "din", "Type" : "Fifo", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "din"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "din"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "din"}]},
		{"Name" : "sc_FIFO_DCT_mA", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "sc_FIFO_DCT_mA"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "sc_FIFO_DCT_mA"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "sc_FIFO_DCT_mA"}]},
		{"Name" : "sc_FIFO_DCT_mB", "Type" : "Memory", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "sc_FIFO_DCT_mB"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "sc_FIFO_DCT_mB"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "sc_FIFO_DCT_mB"}]},
		{"Name" : "sc_FIFO_DCT_mC", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "sc_FIFO_DCT_mC"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "sc_FIFO_DCT_mC"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "sc_FIFO_DCT_mC"}]},
		{"Name" : "sc_FIFO_DCT_exec_cnt", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "sc_FIFO_DCT_exec_cnt"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "sc_FIFO_DCT_exec_cnt"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "sc_FIFO_DCT_exec_cnt"}]},
		{"Name" : "s_buffering", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "s_buffering"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "s_buffering"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "s_buffering"}]},
		{"Name" : "s_buffered", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "s_buffered"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "s_buffered"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "s_buffered"}]},
		{"Name" : "s_working", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "s_working"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "s_working"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "s_working"}]},
		{"Name" : "s_DCT", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "s_DCT"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "s_DCT"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "s_DCT"}]},
		{"Name" : "s_done", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "41", "SubInstance" : "grp_sc_FIFO_DCT_buffering_fu_228", "Port" : "s_done"},
			{"ID" : "4", "SubInstance" : "grp_sc_FIFO_DCT_data_out_fu_160", "Port" : "s_done"},
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "s_done"}]},
		{"Name" : "sc_FIFO_DCT_ssdm_thread_M_buffering", "Type" : "None", "Direction" : "I"},
		{"Name" : "sc_FIFO_DCT_ssdm_thread_M_DCT", "Type" : "None", "Direction" : "I"},
		{"Name" : "b_a", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "b_a"}]},
		{"Name" : "b", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "5", "SubInstance" : "grp_sc_FIFO_DCT_DCT_fu_192", "Port" : "b"}]},
		{"Name" : "sc_FIFO_DCT_ssdm_thread_M_data_out", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mA_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mB_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sc_FIFO_DCT_mC_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_data_out_fu_160", "Parent" : "0",
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
		{"Name" : "s_done", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.b_a_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.b_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.a_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U0", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U1", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U2", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U3", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U4", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U5", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U6", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U7", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U8", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U9", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U10", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U11", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U12", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U13", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U14", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U15", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U16", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U17", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U18", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U19", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U20", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U21", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U22", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_3cud_U23", "Parent" : "5"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U24", "Parent" : "5"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U25", "Parent" : "5"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U26", "Parent" : "5"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U27", "Parent" : "5"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U28", "Parent" : "5"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U29", "Parent" : "5"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U30", "Parent" : "5"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_DCT_fu_192.sc_FIFO_DCT_mul_8bkb_U31", "Parent" : "5"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_FIFO_DCT_buffering_fu_228", "Parent" : "0",
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
	{"Name" : "Latency", "Min" : "0", "Max" : "492"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "493"}
]}

set Spec2ImplPortList { 
	enable { ap_none {  { enable in_data 0 1 } } }
	dout { ap_fifo {  { dout_din fifo_data 1 8 }  { dout_full_n fifo_status 0 1 }  { dout_write fifo_update 1 1 } } }
	din { ap_fifo {  { din_dout fifo_data 0 8 }  { din_empty_n fifo_status 0 1 }  { din_read fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	dout { fifo_write 3 has_conditional }
	din { fifo_read 3 has_conditional }
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
