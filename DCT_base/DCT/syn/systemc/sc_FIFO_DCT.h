// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sc_FIFO_DCT_HH_
#define _sc_FIFO_DCT_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sc_FIFO_DCT_data_out.h"
#include "sc_FIFO_DCT_DCT.h"
#include "sc_FIFO_DCT_buffering.h"
#include "sc_FIFO_DCT_DCT_a.h"
#include "sc_FIFO_DCT_sc_FIeOg.h"

namespace ap_rtl {

struct sc_FIFO_DCT : public sc_module {
    // Port declarations 9
    sc_in_clk clock;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > enable;
    sc_out< sc_lv<8> > dout_din;
    sc_in< sc_logic > dout_full_n;
    sc_out< sc_logic > dout_write;
    sc_in< sc_lv<8> > din_dout;
    sc_in< sc_logic > din_empty_n;
    sc_out< sc_logic > din_read;


    // Module declarations
    sc_FIFO_DCT(sc_module_name name);
    SC_HAS_PROCESS(sc_FIFO_DCT);

    ~sc_FIFO_DCT();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_FIFO_DCT_DCT_a* sc_FIFO_DCT_mA_U;
    sc_FIFO_DCT_sc_FIeOg* sc_FIFO_DCT_mB_U;
    sc_FIFO_DCT_DCT_a* sc_FIFO_DCT_mC_U;
    sc_FIFO_DCT_data_out* grp_sc_FIFO_DCT_data_out_fu_160;
    sc_FIFO_DCT_DCT* grp_sc_FIFO_DCT_DCT_fu_192;
    sc_FIFO_DCT_buffering* grp_sc_FIFO_DCT_buffering_fu_228;
    sc_signal< sc_lv<6> > sc_FIFO_DCT_mA_address0;
    sc_signal< sc_logic > sc_FIFO_DCT_mA_ce0;
    sc_signal< sc_lv<32> > sc_FIFO_DCT_mA_q0;
    sc_signal< sc_lv<6> > sc_FIFO_DCT_mC_address0;
    sc_signal< sc_logic > sc_FIFO_DCT_mC_ce0;
    sc_signal< sc_lv<32> > sc_FIFO_DCT_mC_q0;
    sc_signal< sc_lv<1> > sc_FIFO_DCT_ssdm_s_load_fu_260_p1;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > sc_FIFO_DCT_ssdm_1_load_fu_264_p1;
    sc_signal< sc_lv<8> > grp_sc_FIFO_DCT_data_out_fu_160_dout_din;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_data_out_fu_160_dout_write;
    sc_signal< sc_lv<6> > grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_address0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_data_out_fu_160_s_DCT;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_data_out_fu_160_s_done;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_data_out_fu_160_s_done_ap_vld;
    sc_signal< sc_lv<6> > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_address0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0;
    sc_signal< sc_lv<6> > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_address0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_ce0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_we0;
    sc_signal< sc_lv<32> > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_d0;
    sc_signal< sc_lv<6> > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_address0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_we0;
    sc_signal< sc_lv<32> > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_d0;
    sc_signal< sc_lv<32> > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o_ap_vld;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_s_buffered;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_s_working;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_s_working_ap_vld;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_s_DCT;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_s_DCT_ap_vld;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_DCT_fu_192_s_done;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_buffering_fu_228_din_read;
    sc_signal< sc_lv<6> > grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_address0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_we0;
    sc_signal< sc_lv<32> > grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_d0;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_buffering_fu_228_s_buffered;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_buffering_fu_228_s_buffered_ap_vld;
    sc_signal< sc_logic > grp_sc_FIFO_DCT_buffering_fu_228_s_working;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > sc_FIFO_DCT_exec_cnt;
    sc_signal< sc_lv<1> > s_buffered;
    sc_signal< sc_lv<1> > s_working;
    sc_signal< sc_lv<1> > s_DCT;
    sc_signal< sc_lv<1> > s_done;
    sc_signal< sc_lv<1> > sc_FIFO_DCT_ssdm_2_load_fu_268_p1;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_s_DCT();
    void thread_s_buffered();
    void thread_s_done();
    void thread_s_working();
    void thread_sc_FIFO_DCT_exec_cnt();
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_din_read();
    void thread_dout_din();
    void thread_dout_write();
    void thread_grp_sc_FIFO_DCT_DCT_fu_192_s_buffered();
    void thread_grp_sc_FIFO_DCT_DCT_fu_192_s_done();
    void thread_grp_sc_FIFO_DCT_buffering_fu_228_s_working();
    void thread_grp_sc_FIFO_DCT_data_out_fu_160_s_DCT();
    void thread_sc_FIFO_DCT_mA_address0();
    void thread_sc_FIFO_DCT_mA_ce0();
    void thread_sc_FIFO_DCT_mC_address0();
    void thread_sc_FIFO_DCT_mC_ce0();
    void thread_sc_FIFO_DCT_ssdm_1_load_fu_264_p1();
    void thread_sc_FIFO_DCT_ssdm_2_load_fu_268_p1();
    void thread_sc_FIFO_DCT_ssdm_s_load_fu_260_p1();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
