// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sc_FIFO_DCT_data_out_HH_
#define _sc_FIFO_DCT_data_out_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct sc_FIFO_DCT_data_out : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_lv<8> > dout_din;
    sc_in< sc_logic > dout_full_n;
    sc_out< sc_logic > dout_write;
    sc_out< sc_lv<6> > sc_FIFO_DCT_mC_address0;
    sc_out< sc_logic > sc_FIFO_DCT_mC_ce0;
    sc_in< sc_lv<32> > sc_FIFO_DCT_mC_q0;
    sc_in< sc_logic > s_DCT;
    sc_out< sc_logic > s_done;
    sc_out< sc_logic > s_done_ap_vld;


    // Module declarations
    sc_FIFO_DCT_data_out(sc_module_name name);
    SC_HAS_PROCESS(sc_FIFO_DCT_data_out);

    ~sc_FIFO_DCT_data_out();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > dout_blk_n;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<7> > i_1_fu_158_p2;
    sc_signal< sc_lv<7> > i_1_reg_184;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond_fu_152_p2;
    sc_signal< sc_lv<7> > i_reg_130;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > grp_read_fu_96_p2;
    sc_signal< sc_lv<32> > i_cast1_fu_147_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > tmp_2_fu_169_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_169_p0;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_dout_blk_n();
    void thread_dout_din();
    void thread_dout_write();
    void thread_exitcond_fu_152_p2();
    void thread_grp_read_fu_96_p2();
    void thread_i_1_fu_158_p2();
    void thread_i_cast1_fu_147_p1();
    void thread_s_done();
    void thread_s_done_ap_vld();
    void thread_sc_FIFO_DCT_mC_address0();
    void thread_sc_FIFO_DCT_mC_ce0();
    void thread_tmp_2_fu_169_p0();
    void thread_tmp_2_fu_169_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif