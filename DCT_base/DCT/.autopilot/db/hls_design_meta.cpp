#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clock", 1, hls_in, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, -1, "", "", 1),
	Port_Property("sync", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("data_ok", 1, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("done", 1, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("error", 1, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("din", 8, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("dout", 8, hls_out, 7, "ap_vld", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "sc_FIFO_DCT::sc_FIFO_DCT";
