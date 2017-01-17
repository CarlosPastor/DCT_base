// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "sc_FIFO_DCT_Prc2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic sc_FIFO_DCT_Prc2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic sc_FIFO_DCT_Prc2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state1 = "1";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state2 = "10";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state3 = "100";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state4 = "1000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state5 = "10000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state6 = "100000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state7 = "1000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state8 = "10000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state9 = "100000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state10 = "1000000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state11 = "10000000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state12 = "100000000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<14> sc_FIFO_DCT_Prc2::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_3 = "11";
const sc_lv<1> sc_FIFO_DCT_Prc2::ap_const_lv1_1 = "1";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_4 = "100";
const sc_lv<1> sc_FIFO_DCT_Prc2::ap_const_lv1_0 = "0";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_5 = "101";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_6 = "110";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_7 = "111";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_8 = "1000";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_9 = "1001";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_A = "1010";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_B = "1011";
const sc_lv<4> sc_FIFO_DCT_Prc2::ap_const_lv4_0 = "0000";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_2 = "10";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> sc_FIFO_DCT_Prc2::ap_const_lv32_C = "1100";
const sc_lv<18> sc_FIFO_DCT_Prc2::ap_const_lv18_0 = "000000000000000000";
const sc_lv<8> sc_FIFO_DCT_Prc2::ap_const_lv8_7F = "1111111";
const sc_lv<4> sc_FIFO_DCT_Prc2::ap_const_lv4_8 = "1000";
const sc_lv<4> sc_FIFO_DCT_Prc2::ap_const_lv4_1 = "1";
const sc_lv<3> sc_FIFO_DCT_Prc2::ap_const_lv3_0 = "000";

sc_FIFO_DCT_Prc2::sc_FIFO_DCT_Prc2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    b_a_U = new sc_FIFO_DCT_Prc2_bkb("b_a_U");
    b_a_U->clk(ap_clk);
    b_a_U->reset(ap_rst);
    b_a_U->address0(b_a_address0);
    b_a_U->ce0(b_a_ce0);
    b_a_U->q0(b_a_q0);
    b_U = new sc_FIFO_DCT_Prc2_b("b_U");
    b_U->clk(ap_clk);
    b_U->reset(ap_rst);
    b_U->address0(b_address0);
    b_U->ce0(b_ce0);
    b_U->q0(b_q0);
    a_U = new sc_FIFO_DCT_Prc2_a("a_U");
    a_U->clk(ap_clk);
    a_U->reset(ap_rst);
    a_U->address0(a_address0);
    a_U->ce0(a_ce0);
    a_U->we0(a_we0);
    a_U->d0(a_load_reg_251);
    a_U->q0(a_q0);
    sc_FIFO_DCT_mac_mcud_U6 = new sc_FIFO_DCT_mac_mcud<1,1,8,18,32,32>("sc_FIFO_DCT_mac_mcud_U6");
    sc_FIFO_DCT_mac_mcud_U6->din0(b_a_load_reg_576);
    sc_FIFO_DCT_mac_mcud_U6->din1(grp_fu_509_p1);
    sc_FIFO_DCT_mac_mcud_U6->din2(a_load_reg_251);
    sc_FIFO_DCT_mac_mcud_U6->dout(grp_fu_509_p3);
    sc_FIFO_DCT_mac_mdEe_U7 = new sc_FIFO_DCT_mac_mdEe<1,1,18,8,18,18>("sc_FIFO_DCT_mac_mdEe_U7");
    sc_FIFO_DCT_mac_mdEe_U7->din0(tmp_20_reg_632);
    sc_FIFO_DCT_mac_mdEe_U7->din1(b_load_reg_627);
    sc_FIFO_DCT_mac_mdEe_U7->din2(sc_FIFO_DCT_mB_V_loa_reg_286);
    sc_FIFO_DCT_mac_mdEe_U7->dout(grp_fu_517_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( a_addr_reg_553 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( tmp_12_cast_fu_487_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_a_we0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state13);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b_a_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_6_cast_fu_399_p1 );

    SC_METHOD(thread_b_a_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_b_address0);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( tmp_13_cast_fu_497_p1 );

    SC_METHOD(thread_b_ce0);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_data_ok);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( exitcond_fu_458_p2 );
    sensitive << ( ap_CS_fsm_state13 );

    SC_METHOD(thread_data_ok_ap_vld);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( exitcond_fu_458_p2 );
    sensitive << ( ap_CS_fsm_state13 );

    SC_METHOD(thread_done);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_320_p2 );

    SC_METHOD(thread_done_ap_vld);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_320_p2 );

    SC_METHOD(thread_dout);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( exitcond_fu_458_p2 );

    SC_METHOD(thread_dout_ap_vld);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( exitcond_fu_458_p2 );

    SC_METHOD(thread_exitcond1_fu_320_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i0_reg_229 );

    SC_METHOD(thread_exitcond2_fu_332_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( i1_reg_240 );

    SC_METHOD(thread_exitcond3_fu_420_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( i1_1_reg_275 );

    SC_METHOD(thread_exitcond4_fu_370_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( i2_reg_264 );

    SC_METHOD(thread_exitcond_fu_458_p2);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( i2_1_reg_299 );

    SC_METHOD(thread_grp_fu_509_p1);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( grp_fu_509_p10 );

    SC_METHOD(thread_grp_fu_509_p10);
    sensitive << ( sc_FIFO_DCT_mA_V_loa_reg_581 );

    SC_METHOD(thread_i0_1_fu_326_p2);
    sensitive << ( i0_reg_229 );

    SC_METHOD(thread_i0_cast5_fu_316_p1);
    sensitive << ( i0_reg_229 );

    SC_METHOD(thread_i1_2_fu_338_p2);
    sensitive << ( i1_reg_240 );

    SC_METHOD(thread_i1_3_fu_426_p2);
    sensitive << ( i1_1_reg_275 );

    SC_METHOD(thread_i2_1_cast1_fu_454_p1);
    sensitive << ( i2_1_reg_299 );

    SC_METHOD(thread_i2_2_fu_376_p2);
    sensitive << ( i2_reg_264 );

    SC_METHOD(thread_i2_3_fu_464_p2);
    sensitive << ( i2_1_reg_299 );

    SC_METHOD(thread_i2_cast3_fu_366_p1);
    sensitive << ( i2_reg_264 );

    SC_METHOD(thread_s_start_o);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_read_fu_124_p2 );

    SC_METHOD(thread_s_start_o_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_read_fu_124_p2 );

    SC_METHOD(thread_s_working);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_read_fu_124_p2 );
    sensitive << ( exitcond1_fu_320_p2 );

    SC_METHOD(thread_s_working_ap_vld);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_read_fu_124_p2 );
    sensitive << ( exitcond1_fu_320_p2 );

    SC_METHOD(thread_sc_FIFO_DCT_mA_V_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_9_cast_fu_409_p1 );

    SC_METHOD(thread_sc_FIFO_DCT_mA_V_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_sc_FIFO_DCT_mB_V_address0);
    sensitive << ( sc_FIFO_DCT_mB_V_add_reg_604 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_sc_FIFO_DCT_mB_V_ce0);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_sc_FIFO_DCT_mB_V_d0);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( sc_FIFO_DCT_mB_V_loa_reg_286 );

    SC_METHOD(thread_sc_FIFO_DCT_mB_V_we0);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_tmp_10_fu_474_p3);
    sensitive << ( tmp_19_fu_470_p1 );

    SC_METHOD(thread_tmp_11_fu_482_p2);
    sensitive << ( i0_cast5_reg_524 );
    sensitive << ( tmp_10_fu_474_p3 );

    SC_METHOD(thread_tmp_12_cast_fu_487_p1);
    sensitive << ( tmp_11_fu_482_p2 );

    SC_METHOD(thread_tmp_12_fu_492_p2);
    sensitive << ( tmp_4_reg_599 );
    sensitive << ( i2_1_cast1_fu_454_p1 );

    SC_METHOD(thread_tmp_13_cast_fu_497_p1);
    sensitive << ( tmp_12_fu_492_p2 );

    SC_METHOD(thread_tmp_16_fu_344_p1);
    sensitive << ( i1_reg_240 );

    SC_METHOD(thread_tmp_17_fu_432_p1);
    sensitive << ( i1_1_reg_275 );

    SC_METHOD(thread_tmp_18_fu_382_p1);
    sensitive << ( i2_reg_264 );

    SC_METHOD(thread_tmp_19_fu_470_p1);
    sensitive << ( i2_1_reg_299 );

    SC_METHOD(thread_tmp_1_fu_348_p3);
    sensitive << ( tmp_16_fu_344_p1 );

    SC_METHOD(thread_tmp_20_fu_502_p1);
    sensitive << ( a_q0 );

    SC_METHOD(thread_tmp_2_cast_fu_361_p1);
    sensitive << ( tmp_2_fu_356_p2 );

    SC_METHOD(thread_tmp_2_fu_356_p2);
    sensitive << ( i0_cast5_reg_524 );
    sensitive << ( tmp_1_fu_348_p3 );

    SC_METHOD(thread_tmp_3_fu_386_p3);
    sensitive << ( tmp_18_fu_382_p1 );

    SC_METHOD(thread_tmp_4_fu_436_p3);
    sensitive << ( tmp_17_fu_432_p1 );

    SC_METHOD(thread_tmp_5_cast_fu_449_p1);
    sensitive << ( tmp_5_fu_444_p2 );

    SC_METHOD(thread_tmp_5_fu_444_p2);
    sensitive << ( i0_cast5_reg_524 );
    sensitive << ( tmp_4_fu_436_p3 );

    SC_METHOD(thread_tmp_6_cast_fu_399_p1);
    sensitive << ( tmp_6_fu_394_p2 );

    SC_METHOD(thread_tmp_6_fu_394_p2);
    sensitive << ( i0_cast5_reg_524 );
    sensitive << ( tmp_3_fu_386_p3 );

    SC_METHOD(thread_tmp_9_cast_fu_409_p1);
    sensitive << ( tmp_9_fu_404_p2 );

    SC_METHOD(thread_tmp_9_fu_404_p2);
    sensitive << ( tmp_1_reg_548 );
    sensitive << ( i2_cast3_fu_366_p1 );

    SC_METHOD(thread_tmp_read_fu_124_p2);
    sensitive << ( s_start_i );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_read_fu_124_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_fu_332_p2 );
    sensitive << ( exitcond4_fu_370_p2 );
    sensitive << ( exitcond3_fu_420_p2 );
    sensitive << ( exitcond_fu_458_p2 );
    sensitive << ( tmp_read_fu_124_p2 );
    sensitive << ( exitcond1_fu_320_p2 );

    ap_CS_fsm = "00000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "sc_FIFO_DCT_Prc2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, data_ok, "(port)data_ok");
    sc_trace(mVcdFile, data_ok_ap_vld, "(port)data_ok_ap_vld");
    sc_trace(mVcdFile, done, "(port)done");
    sc_trace(mVcdFile, done_ap_vld, "(port)done_ap_vld");
    sc_trace(mVcdFile, dout, "(port)dout");
    sc_trace(mVcdFile, dout_ap_vld, "(port)dout_ap_vld");
    sc_trace(mVcdFile, s_start_i, "(port)s_start_i");
    sc_trace(mVcdFile, s_start_o, "(port)s_start_o");
    sc_trace(mVcdFile, s_start_o_ap_vld, "(port)s_start_o_ap_vld");
    sc_trace(mVcdFile, s_working, "(port)s_working");
    sc_trace(mVcdFile, s_working_ap_vld, "(port)s_working_ap_vld");
    sc_trace(mVcdFile, sc_FIFO_DCT_mA_V_address0, "(port)sc_FIFO_DCT_mA_V_address0");
    sc_trace(mVcdFile, sc_FIFO_DCT_mA_V_ce0, "(port)sc_FIFO_DCT_mA_V_ce0");
    sc_trace(mVcdFile, sc_FIFO_DCT_mA_V_q0, "(port)sc_FIFO_DCT_mA_V_q0");
    sc_trace(mVcdFile, sc_FIFO_DCT_mB_V_address0, "(port)sc_FIFO_DCT_mB_V_address0");
    sc_trace(mVcdFile, sc_FIFO_DCT_mB_V_ce0, "(port)sc_FIFO_DCT_mB_V_ce0");
    sc_trace(mVcdFile, sc_FIFO_DCT_mB_V_we0, "(port)sc_FIFO_DCT_mB_V_we0");
    sc_trace(mVcdFile, sc_FIFO_DCT_mB_V_d0, "(port)sc_FIFO_DCT_mB_V_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, b_a_address0, "b_a_address0");
    sc_trace(mVcdFile, b_a_ce0, "b_a_ce0");
    sc_trace(mVcdFile, b_a_q0, "b_a_q0");
    sc_trace(mVcdFile, b_address0, "b_address0");
    sc_trace(mVcdFile, b_ce0, "b_ce0");
    sc_trace(mVcdFile, b_q0, "b_q0");
    sc_trace(mVcdFile, i0_cast5_fu_316_p1, "i0_cast5_fu_316_p1");
    sc_trace(mVcdFile, i0_cast5_reg_524, "i0_cast5_reg_524");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, i0_1_fu_326_p2, "i0_1_fu_326_p2");
    sc_trace(mVcdFile, i0_1_reg_535, "i0_1_reg_535");
    sc_trace(mVcdFile, i1_2_fu_338_p2, "i1_2_fu_338_p2");
    sc_trace(mVcdFile, i1_2_reg_543, "i1_2_reg_543");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_1_fu_348_p3, "tmp_1_fu_348_p3");
    sc_trace(mVcdFile, tmp_1_reg_548, "tmp_1_reg_548");
    sc_trace(mVcdFile, exitcond2_fu_332_p2, "exitcond2_fu_332_p2");
    sc_trace(mVcdFile, a_addr_reg_553, "a_addr_reg_553");
    sc_trace(mVcdFile, i2_2_fu_376_p2, "i2_2_fu_376_p2");
    sc_trace(mVcdFile, i2_2_reg_561, "i2_2_reg_561");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, exitcond4_fu_370_p2, "exitcond4_fu_370_p2");
    sc_trace(mVcdFile, b_a_load_reg_576, "b_a_load_reg_576");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, sc_FIFO_DCT_mA_V_loa_reg_581, "sc_FIFO_DCT_mA_V_loa_reg_581");
    sc_trace(mVcdFile, grp_fu_509_p3, "grp_fu_509_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, i1_3_fu_426_p2, "i1_3_fu_426_p2");
    sc_trace(mVcdFile, i1_3_reg_594, "i1_3_reg_594");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, tmp_4_fu_436_p3, "tmp_4_fu_436_p3");
    sc_trace(mVcdFile, tmp_4_reg_599, "tmp_4_reg_599");
    sc_trace(mVcdFile, exitcond3_fu_420_p2, "exitcond3_fu_420_p2");
    sc_trace(mVcdFile, sc_FIFO_DCT_mB_V_add_reg_604, "sc_FIFO_DCT_mB_V_add_reg_604");
    sc_trace(mVcdFile, i2_3_fu_464_p2, "i2_3_fu_464_p2");
    sc_trace(mVcdFile, i2_3_reg_612, "i2_3_reg_612");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, exitcond_fu_458_p2, "exitcond_fu_458_p2");
    sc_trace(mVcdFile, b_load_reg_627, "b_load_reg_627");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, tmp_20_fu_502_p1, "tmp_20_fu_502_p1");
    sc_trace(mVcdFile, tmp_20_reg_632, "tmp_20_reg_632");
    sc_trace(mVcdFile, grp_fu_517_p3, "grp_fu_517_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, a_address0, "a_address0");
    sc_trace(mVcdFile, a_ce0, "a_ce0");
    sc_trace(mVcdFile, a_we0, "a_we0");
    sc_trace(mVcdFile, a_q0, "a_q0");
    sc_trace(mVcdFile, i0_reg_229, "i0_reg_229");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_read_fu_124_p2, "tmp_read_fu_124_p2");
    sc_trace(mVcdFile, i1_reg_240, "i1_reg_240");
    sc_trace(mVcdFile, exitcond1_fu_320_p2, "exitcond1_fu_320_p2");
    sc_trace(mVcdFile, a_load_reg_251, "a_load_reg_251");
    sc_trace(mVcdFile, i2_reg_264, "i2_reg_264");
    sc_trace(mVcdFile, i1_1_reg_275, "i1_1_reg_275");
    sc_trace(mVcdFile, ap_CS_fsm_state13, "ap_CS_fsm_state13");
    sc_trace(mVcdFile, sc_FIFO_DCT_mB_V_loa_reg_286, "sc_FIFO_DCT_mB_V_loa_reg_286");
    sc_trace(mVcdFile, i2_1_reg_299, "i2_1_reg_299");
    sc_trace(mVcdFile, tmp_2_cast_fu_361_p1, "tmp_2_cast_fu_361_p1");
    sc_trace(mVcdFile, tmp_6_cast_fu_399_p1, "tmp_6_cast_fu_399_p1");
    sc_trace(mVcdFile, tmp_9_cast_fu_409_p1, "tmp_9_cast_fu_409_p1");
    sc_trace(mVcdFile, tmp_5_cast_fu_449_p1, "tmp_5_cast_fu_449_p1");
    sc_trace(mVcdFile, tmp_12_cast_fu_487_p1, "tmp_12_cast_fu_487_p1");
    sc_trace(mVcdFile, tmp_13_cast_fu_497_p1, "tmp_13_cast_fu_497_p1");
    sc_trace(mVcdFile, tmp_16_fu_344_p1, "tmp_16_fu_344_p1");
    sc_trace(mVcdFile, tmp_2_fu_356_p2, "tmp_2_fu_356_p2");
    sc_trace(mVcdFile, tmp_18_fu_382_p1, "tmp_18_fu_382_p1");
    sc_trace(mVcdFile, tmp_3_fu_386_p3, "tmp_3_fu_386_p3");
    sc_trace(mVcdFile, tmp_6_fu_394_p2, "tmp_6_fu_394_p2");
    sc_trace(mVcdFile, i2_cast3_fu_366_p1, "i2_cast3_fu_366_p1");
    sc_trace(mVcdFile, tmp_9_fu_404_p2, "tmp_9_fu_404_p2");
    sc_trace(mVcdFile, tmp_17_fu_432_p1, "tmp_17_fu_432_p1");
    sc_trace(mVcdFile, tmp_5_fu_444_p2, "tmp_5_fu_444_p2");
    sc_trace(mVcdFile, tmp_19_fu_470_p1, "tmp_19_fu_470_p1");
    sc_trace(mVcdFile, tmp_10_fu_474_p3, "tmp_10_fu_474_p3");
    sc_trace(mVcdFile, tmp_11_fu_482_p2, "tmp_11_fu_482_p2");
    sc_trace(mVcdFile, i2_1_cast1_fu_454_p1, "i2_1_cast1_fu_454_p1");
    sc_trace(mVcdFile, tmp_12_fu_492_p2, "tmp_12_fu_492_p2");
    sc_trace(mVcdFile, grp_fu_509_p1, "grp_fu_509_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, grp_fu_509_p10, "grp_fu_509_p10");
#endif

    }
}

sc_FIFO_DCT_Prc2::~sc_FIFO_DCT_Prc2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete b_a_U;
    delete b_U;
    delete a_U;
    delete sc_FIFO_DCT_mac_mcud_U6;
    delete sc_FIFO_DCT_mac_mdEe_U7;
}

void sc_FIFO_DCT_Prc2::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state8.read()))) {
        a_load_reg_251 = grp_fu_509_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_332_p2.read(), ap_const_lv1_0))) {
        a_load_reg_251 = ap_const_lv32_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state9.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_420_p2.read()))) {
        i0_reg_229 = i0_1_reg_535.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()) && 
                !esl_seteq<1,1,1>(tmp_read_fu_124_p2.read(), ap_const_lv1_0))) {
        i0_reg_229 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()) && 
         !esl_seteq<1,1,1>(exitcond2_fu_332_p2.read(), ap_const_lv1_0))) {
        i1_1_reg_275 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state13.read()))) {
        i1_1_reg_275 = i1_3_reg_594.read();
    }
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state4.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_320_p2.read()))) {
        i1_reg_240 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_370_p2.read()))) {
        i1_reg_240 = i1_2_reg_543.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state12.read()))) {
        i2_1_reg_299 = i2_3_reg_612.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state9.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_420_p2.read()))) {
        i2_1_reg_299 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state8.read()))) {
        i2_reg_264 = i2_2_reg_561.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_332_p2.read(), ap_const_lv1_0))) {
        i2_reg_264 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state12.read()))) {
        sc_FIFO_DCT_mB_V_loa_reg_286 = grp_fu_517_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state9.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_420_p2.read()))) {
        sc_FIFO_DCT_mB_V_loa_reg_286 = ap_const_lv18_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(exitcond2_fu_332_p2.read(), ap_const_lv1_0))) {
        a_addr_reg_553 =  (sc_lv<6>) (tmp_2_cast_fu_361_p1.read());
        tmp_1_reg_548 = tmp_1_fu_348_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state7.read()))) {
        b_a_load_reg_576 = b_a_q0.read();
        sc_FIFO_DCT_mA_V_loa_reg_581 = sc_FIFO_DCT_mA_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state11.read()))) {
        b_load_reg_627 = b_q0.read();
        tmp_20_reg_632 = tmp_20_fu_502_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state4.read(), ap_const_lv1_1))) {
        i0_1_reg_535 = i0_1_fu_326_p2.read();
        i0_cast5_reg_524 = i0_cast5_fu_316_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()))) {
        i1_2_reg_543 = i1_2_fu_338_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state9.read()))) {
        i1_3_reg_594 = i1_3_fu_426_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()))) {
        i2_2_reg_561 = i2_2_fu_376_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()))) {
        i2_3_reg_612 = i2_3_fu_464_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_420_p2.read()))) {
        sc_FIFO_DCT_mB_V_add_reg_604 =  (sc_lv<6>) (tmp_5_cast_fu_449_p1.read());
        tmp_4_reg_599 = tmp_4_fu_436_p3.read();
    }
}

void sc_FIFO_DCT_Prc2::thread_a_address0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()))) {
        a_address0 =  (sc_lv<6>) (tmp_12_cast_fu_487_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()))) {
        a_address0 = a_addr_reg_553.read();
    } else {
        a_address0 = "XXXXXX";
    }
}

void sc_FIFO_DCT_Prc2::thread_a_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read())))) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_a_we0() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read())))) {
        a_we0 = ap_const_logic_1;
    } else {
        a_we0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read().range(9, 9);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read().range(10, 10);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read().range(11, 11);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state13() {
    ap_CS_fsm_state13 = ap_CS_fsm.read().range(12, 12);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read().range(2, 2);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read().range(3, 3);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read().range(4, 4);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read().range(5, 5);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read().range(6, 6);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read().range(7, 7);
}

void sc_FIFO_DCT_Prc2::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read().range(8, 8);
}

void sc_FIFO_DCT_Prc2::thread_b_a_address0() {
    b_a_address0 =  (sc_lv<6>) (tmp_6_cast_fu_399_p1.read());
}

void sc_FIFO_DCT_Prc2::thread_b_a_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()))) {
        b_a_ce0 = ap_const_logic_1;
    } else {
        b_a_ce0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_b_address0() {
    b_address0 =  (sc_lv<6>) (tmp_13_cast_fu_497_p1.read());
}

void sc_FIFO_DCT_Prc2::thread_b_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()))) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_data_ok() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state13.read()))) {
        data_ok =  (sc_logic) (ap_const_lv1_0[0]);
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_458_p2.read()))) {
        data_ok =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        data_ok = sc_logic('X');
    }
}

void sc_FIFO_DCT_Prc2::thread_data_ok_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state13.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_458_p2.read())))) {
        data_ok_ap_vld = ap_const_logic_1;
    } else {
        data_ok_ap_vld = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_done() {
    done =  (sc_logic) (ap_const_lv1_1[0]);
}

void sc_FIFO_DCT_Prc2::thread_done_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state4.read(), ap_const_lv1_1) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_320_p2.read()))) {
        done_ap_vld = ap_const_logic_1;
    } else {
        done_ap_vld = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_dout() {
    dout = ap_const_lv8_7F;
}

void sc_FIFO_DCT_Prc2::thread_dout_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_458_p2.read()))) {
        dout_ap_vld = ap_const_logic_1;
    } else {
        dout_ap_vld = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_exitcond1_fu_320_p2() {
    exitcond1_fu_320_p2 = (!i0_reg_229.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i0_reg_229.read() == ap_const_lv4_8);
}

void sc_FIFO_DCT_Prc2::thread_exitcond2_fu_332_p2() {
    exitcond2_fu_332_p2 = (!i1_reg_240.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i1_reg_240.read() == ap_const_lv4_8);
}

void sc_FIFO_DCT_Prc2::thread_exitcond3_fu_420_p2() {
    exitcond3_fu_420_p2 = (!i1_1_reg_275.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i1_1_reg_275.read() == ap_const_lv4_8);
}

void sc_FIFO_DCT_Prc2::thread_exitcond4_fu_370_p2() {
    exitcond4_fu_370_p2 = (!i2_reg_264.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i2_reg_264.read() == ap_const_lv4_8);
}

void sc_FIFO_DCT_Prc2::thread_exitcond_fu_458_p2() {
    exitcond_fu_458_p2 = (!i2_1_reg_299.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i2_1_reg_299.read() == ap_const_lv4_8);
}

void sc_FIFO_DCT_Prc2::thread_grp_fu_509_p1() {
    grp_fu_509_p1 =  (sc_lv<18>) (grp_fu_509_p10.read());
}

void sc_FIFO_DCT_Prc2::thread_grp_fu_509_p10() {
    grp_fu_509_p10 = esl_zext<26,18>(sc_FIFO_DCT_mA_V_loa_reg_581.read());
}

void sc_FIFO_DCT_Prc2::thread_i0_1_fu_326_p2() {
    i0_1_fu_326_p2 = (!i0_reg_229.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i0_reg_229.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void sc_FIFO_DCT_Prc2::thread_i0_cast5_fu_316_p1() {
    i0_cast5_fu_316_p1 = esl_zext<6,4>(i0_reg_229.read());
}

void sc_FIFO_DCT_Prc2::thread_i1_2_fu_338_p2() {
    i1_2_fu_338_p2 = (!i1_reg_240.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i1_reg_240.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void sc_FIFO_DCT_Prc2::thread_i1_3_fu_426_p2() {
    i1_3_fu_426_p2 = (!i1_1_reg_275.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i1_1_reg_275.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void sc_FIFO_DCT_Prc2::thread_i2_1_cast1_fu_454_p1() {
    i2_1_cast1_fu_454_p1 = esl_zext<6,4>(i2_1_reg_299.read());
}

void sc_FIFO_DCT_Prc2::thread_i2_2_fu_376_p2() {
    i2_2_fu_376_p2 = (!i2_reg_264.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i2_reg_264.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void sc_FIFO_DCT_Prc2::thread_i2_3_fu_464_p2() {
    i2_3_fu_464_p2 = (!i2_1_reg_299.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i2_1_reg_299.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void sc_FIFO_DCT_Prc2::thread_i2_cast3_fu_366_p1() {
    i2_cast3_fu_366_p1 = esl_zext<6,4>(i2_reg_264.read());
}

void sc_FIFO_DCT_Prc2::thread_s_start_o() {
    s_start_o =  (sc_logic) (ap_const_lv1_0[0]);
}

void sc_FIFO_DCT_Prc2::thread_s_start_o_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()) && 
         !esl_seteq<1,1,1>(tmp_read_fu_124_p2.read(), ap_const_lv1_0))) {
        s_start_o_ap_vld = ap_const_logic_1;
    } else {
        s_start_o_ap_vld = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_s_working() {
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state4.read(), ap_const_lv1_1) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_320_p2.read()))) {
        s_working =  (sc_logic) (ap_const_lv1_0[0]);
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()) && 
                !esl_seteq<1,1,1>(tmp_read_fu_124_p2.read(), ap_const_lv1_0))) {
        s_working =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        s_working = sc_logic('X');
    }
}

void sc_FIFO_DCT_Prc2::thread_s_working_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()) && 
          !esl_seteq<1,1,1>(tmp_read_fu_124_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_CS_fsm_state4.read(), ap_const_lv1_1) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_320_p2.read())))) {
        s_working_ap_vld = ap_const_logic_1;
    } else {
        s_working_ap_vld = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_sc_FIFO_DCT_mA_V_address0() {
    sc_FIFO_DCT_mA_V_address0 =  (sc_lv<6>) (tmp_9_cast_fu_409_p1.read());
}

void sc_FIFO_DCT_Prc2::thread_sc_FIFO_DCT_mA_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()))) {
        sc_FIFO_DCT_mA_V_ce0 = ap_const_logic_1;
    } else {
        sc_FIFO_DCT_mA_V_ce0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_sc_FIFO_DCT_mB_V_address0() {
    sc_FIFO_DCT_mB_V_address0 = sc_FIFO_DCT_mB_V_add_reg_604.read();
}

void sc_FIFO_DCT_Prc2::thread_sc_FIFO_DCT_mB_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read()))) {
        sc_FIFO_DCT_mB_V_ce0 = ap_const_logic_1;
    } else {
        sc_FIFO_DCT_mB_V_ce0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_sc_FIFO_DCT_mB_V_d0() {
    sc_FIFO_DCT_mB_V_d0 = sc_FIFO_DCT_mB_V_loa_reg_286.read();
}

void sc_FIFO_DCT_Prc2::thread_sc_FIFO_DCT_mB_V_we0() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state10.read())))) {
        sc_FIFO_DCT_mB_V_we0 = ap_const_logic_1;
    } else {
        sc_FIFO_DCT_mB_V_we0 = ap_const_logic_0;
    }
}

void sc_FIFO_DCT_Prc2::thread_tmp_10_fu_474_p3() {
    tmp_10_fu_474_p3 = esl_concat<3,3>(tmp_19_fu_470_p1.read(), ap_const_lv3_0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_11_fu_482_p2() {
    tmp_11_fu_482_p2 = (!i0_cast5_reg_524.read().is_01() || !tmp_10_fu_474_p3.read().is_01())? sc_lv<6>(): (sc_biguint<6>(i0_cast5_reg_524.read()) + sc_biguint<6>(tmp_10_fu_474_p3.read()));
}

void sc_FIFO_DCT_Prc2::thread_tmp_12_cast_fu_487_p1() {
    tmp_12_cast_fu_487_p1 = esl_zext<32,6>(tmp_11_fu_482_p2.read());
}

void sc_FIFO_DCT_Prc2::thread_tmp_12_fu_492_p2() {
    tmp_12_fu_492_p2 = (!tmp_4_reg_599.read().is_01() || !i2_1_cast1_fu_454_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_4_reg_599.read()) + sc_biguint<6>(i2_1_cast1_fu_454_p1.read()));
}

void sc_FIFO_DCT_Prc2::thread_tmp_13_cast_fu_497_p1() {
    tmp_13_cast_fu_497_p1 = esl_zext<32,6>(tmp_12_fu_492_p2.read());
}

void sc_FIFO_DCT_Prc2::thread_tmp_16_fu_344_p1() {
    tmp_16_fu_344_p1 = i1_reg_240.read().range(3-1, 0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_17_fu_432_p1() {
    tmp_17_fu_432_p1 = i1_1_reg_275.read().range(3-1, 0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_18_fu_382_p1() {
    tmp_18_fu_382_p1 = i2_reg_264.read().range(3-1, 0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_19_fu_470_p1() {
    tmp_19_fu_470_p1 = i2_1_reg_299.read().range(3-1, 0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_1_fu_348_p3() {
    tmp_1_fu_348_p3 = esl_concat<3,3>(tmp_16_fu_344_p1.read(), ap_const_lv3_0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_20_fu_502_p1() {
    tmp_20_fu_502_p1 = a_q0.read().range(18-1, 0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_2_cast_fu_361_p1() {
    tmp_2_cast_fu_361_p1 = esl_zext<32,6>(tmp_2_fu_356_p2.read());
}

void sc_FIFO_DCT_Prc2::thread_tmp_2_fu_356_p2() {
    tmp_2_fu_356_p2 = (!i0_cast5_reg_524.read().is_01() || !tmp_1_fu_348_p3.read().is_01())? sc_lv<6>(): (sc_biguint<6>(i0_cast5_reg_524.read()) + sc_biguint<6>(tmp_1_fu_348_p3.read()));
}

void sc_FIFO_DCT_Prc2::thread_tmp_3_fu_386_p3() {
    tmp_3_fu_386_p3 = esl_concat<3,3>(tmp_18_fu_382_p1.read(), ap_const_lv3_0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_4_fu_436_p3() {
    tmp_4_fu_436_p3 = esl_concat<3,3>(tmp_17_fu_432_p1.read(), ap_const_lv3_0);
}

void sc_FIFO_DCT_Prc2::thread_tmp_5_cast_fu_449_p1() {
    tmp_5_cast_fu_449_p1 = esl_zext<32,6>(tmp_5_fu_444_p2.read());
}

void sc_FIFO_DCT_Prc2::thread_tmp_5_fu_444_p2() {
    tmp_5_fu_444_p2 = (!tmp_4_fu_436_p3.read().is_01() || !i0_cast5_reg_524.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_4_fu_436_p3.read()) + sc_biguint<6>(i0_cast5_reg_524.read()));
}

void sc_FIFO_DCT_Prc2::thread_tmp_6_cast_fu_399_p1() {
    tmp_6_cast_fu_399_p1 = esl_zext<32,6>(tmp_6_fu_394_p2.read());
}

void sc_FIFO_DCT_Prc2::thread_tmp_6_fu_394_p2() {
    tmp_6_fu_394_p2 = (!tmp_3_fu_386_p3.read().is_01() || !i0_cast5_reg_524.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_3_fu_386_p3.read()) + sc_biguint<6>(i0_cast5_reg_524.read()));
}

void sc_FIFO_DCT_Prc2::thread_tmp_9_cast_fu_409_p1() {
    tmp_9_cast_fu_409_p1 = esl_zext<32,6>(tmp_9_fu_404_p2.read());
}

void sc_FIFO_DCT_Prc2::thread_tmp_9_fu_404_p2() {
    tmp_9_fu_404_p2 = (!i2_cast3_fu_366_p1.read().is_01() || !tmp_1_reg_548.read().is_01())? sc_lv<6>(): (sc_biguint<6>(i2_cast3_fu_366_p1.read()) + sc_biguint<6>(tmp_1_reg_548.read()));
}

void sc_FIFO_DCT_Prc2::thread_tmp_read_fu_124_p2() {
    tmp_read_fu_124_p2 =  (sc_lv<1>) (s_start_i.read());
}

void sc_FIFO_DCT_Prc2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            if (!esl_seteq<1,1,1>(tmp_read_fu_124_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_320_p2.read())) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state14;
            }
            break;
        case 16 : 
            if (!esl_seteq<1,1,1>(exitcond2_fu_332_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_370_p2.read())) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 256 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_420_p2.read())) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_458_p2.read())) {
                ap_NS_fsm = ap_ST_fsm_state13;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<14>) ("XXXXXXXXXXXXXX");
            break;
    }
}

}

