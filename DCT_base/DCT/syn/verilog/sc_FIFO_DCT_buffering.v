// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sc_FIFO_DCT_buffering (
        ap_clk,
        ap_rst,
        din_dout,
        din_empty_n,
        din_read,
        sc_FIFO_DCT_mA_address0,
        sc_FIFO_DCT_mA_ce0,
        sc_FIFO_DCT_mA_we0,
        sc_FIFO_DCT_mA_d0,
        s_buffered,
        s_buffered_ap_vld,
        s_working
);

parameter    ap_ST_fsm_state1 = 6'b1;
parameter    ap_ST_fsm_state2 = 6'b10;
parameter    ap_ST_fsm_state3 = 6'b100;
parameter    ap_ST_fsm_state4 = 6'b1000;
parameter    ap_ST_fsm_state5 = 6'b10000;
parameter    ap_ST_fsm_state6 = 6'b100000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_40 = 32'b1000000;

input   ap_clk;
input   ap_rst;
input  [7:0] din_dout;
input   din_empty_n;
output   din_read;
output  [5:0] sc_FIFO_DCT_mA_address0;
output   sc_FIFO_DCT_mA_ce0;
output   sc_FIFO_DCT_mA_we0;
output  [31:0] sc_FIFO_DCT_mA_d0;
output   s_buffered;
output   s_buffered_ap_vld;
input   s_working;

reg din_read;
reg sc_FIFO_DCT_mA_ce0;
reg sc_FIFO_DCT_mA_we0;
reg s_buffered;
reg s_buffered_ap_vld;

reg    din_blk_n;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state4;
wire   [0:0] tmp_5_nbreadreq_fu_98_p3;
reg   [31:0] i_fu_88;
wire   [0:0] ap_CS_fsm_state2;
wire   [31:0] i_2_fu_165_p2;
wire   [0:0] tmp_8_fu_171_p2;
wire   [0:0] grp_read_fu_92_p2;
wire   [0:0] ap_CS_fsm_state3;
wire   [0:0] tmp_4_fu_138_p2;
wire   [0:0] ap_CS_fsm_state5;
wire   [0:0] tmp_4_fu_138_p0;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)) & (1'b0 == tmp_8_fu_171_p2))) begin
        i_fu_88 <= i_2_fu_165_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) | ((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)) & ~(1'b0 == tmp_8_fu_171_p2)))) begin
        i_fu_88 <= ap_const_lv32_0;
    end
end

always @ (*) begin
    if ((ap_CS_fsm_state4 == 1'b1)) begin
        din_blk_n = din_empty_n;
    end else begin
        din_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)))) begin
        din_read = 1'b1;
    end else begin
        din_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~(grp_read_fu_92_p2 == 1'b0))) begin
        s_buffered = 1'b0;
    end else if (((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)) & ~(1'b0 == tmp_8_fu_171_p2))) begin
        s_buffered = 1'b1;
    end else begin
        s_buffered = 'bx;
    end
end

always @ (*) begin
    if ((((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)) & ~(1'b0 == tmp_8_fu_171_p2)) | ((1'b1 == ap_CS_fsm_state5) & ~(grp_read_fu_92_p2 == 1'b0)))) begin
        s_buffered_ap_vld = 1'b1;
    end else begin
        s_buffered_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)))) begin
        sc_FIFO_DCT_mA_ce0 = 1'b1;
    end else begin
        sc_FIFO_DCT_mA_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state4 == 1'b1) & ~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)))) begin
        sc_FIFO_DCT_mA_we0 = 1'b1;
    end else begin
        sc_FIFO_DCT_mA_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (~(tmp_4_fu_138_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)) & (1'b0 == tmp_8_fu_171_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~((tmp_5_nbreadreq_fu_98_p3 == 1'b0) | (din_empty_n == 1'b0)) & ~(1'b0 == tmp_8_fu_171_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (~(grp_read_fu_92_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_4];

assign grp_read_fu_92_p2 = s_working;

assign i_2_fu_165_p2 = (i_fu_88 + ap_const_lv32_1);

assign sc_FIFO_DCT_mA_address0 = i_fu_88;

assign sc_FIFO_DCT_mA_d0 = din_dout;

assign tmp_4_fu_138_p0 = s_working;

assign tmp_4_fu_138_p2 = (tmp_4_fu_138_p0 ^ 1'b1);

assign tmp_5_nbreadreq_fu_98_p3 = din_empty_n;

assign tmp_8_fu_171_p2 = ((i_2_fu_165_p2 == ap_const_lv32_40) ? 1'b1 : 1'b0);

endmodule //sc_FIFO_DCT_buffering
