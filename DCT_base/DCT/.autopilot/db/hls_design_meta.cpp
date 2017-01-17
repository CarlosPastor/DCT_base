#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clock", 1, hls_in, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, -1, "", "", 1),
	Port_Property("enable", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("dout_din", 8, hls_out, 3, "ap_fifo", "fifo_data", 3),
	Port_Property("dout_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 3),
	Port_Property("dout_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 3),
	Port_Property("din_dout", 8, hls_in, 4, "ap_fifo", "fifo_data", 3),
	Port_Property("din_empty_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 3),
	Port_Property("din_read", 1, hls_out, 4, "ap_fifo", "fifo_update", 3),
};
const char* HLS_Design_Meta::dut_name = "sc_FIFO_DCT::sc_FIFO_DCT";
