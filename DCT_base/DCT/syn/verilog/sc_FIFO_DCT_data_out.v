// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sc_FIFO_DCT_data_out (
        ap_clk,
        ap_rst,
        dout_din,
        dout_full_n,
        dout_write,
        sc_FIFO_DCT_mC_address0,
        sc_FIFO_DCT_mC_ce0,
        sc_FIFO_DCT_mC_q0,
        s_DCT,
        s_done,
        s_done_ap_vld
);

parameter    ap_ST_fsm_state2 = 7'b10;
parameter    ap_ST_fsm_state3 = 7'b100;
parameter    ap_ST_fsm_state4 = 7'b1000;
parameter    ap_ST_fsm_state5 = 7'b10000;
parameter    ap_ST_fsm_state6 = 7'b100000;
parameter    ap_ST_fsm_state7 = 7'b1000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv7_40 = 7'b1000000;
parameter    ap_const_lv7_1 = 7'b1;

input   ap_clk;
input   ap_rst;
output  [7:0] dout_din;
input   dout_full_n;
output   dout_write;
output  [5:0] sc_FIFO_DCT_mC_address0;
output   sc_FIFO_DCT_mC_ce0;
input  [31:0] sc_FIFO_DCT_mC_q0;
input   s_DCT;
output   s_done;
output   s_done_ap_vld;

reg dout_write;
reg sc_FIFO_DCT_mC_ce0;
reg s_done;
reg s_done_ap_vld;

reg    dout_blk_n;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state5;
wire   [6:0] i_1_fu_158_p2;
reg   [6:0] i_1_reg_184;
wire   [0:0] ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_152_p2;
reg   [6:0] i_reg_130;
wire   [0:0] ap_CS_fsm_state3;
wire   [0:0] grp_read_fu_96_p2;
wire   [31:0] i_cast1_fu_147_p1;
wire   [0:0] ap_CS_fsm_state6;
wire   [0:0] tmp_2_fu_169_p2;
wire   [0:0] tmp_2_fu_169_p0;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'b10;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state2;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state5 == 1'b1) & ~(dout_full_n == 1'b0))) begin
        i_reg_130 <= i_1_reg_184;
    end else if (((1'b1 == ap_CS_fsm_state3) & ~(grp_read_fu_96_p2 == 1'b0))) begin
        i_reg_130 <= ap_const_lv7_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_1_reg_184 <= i_1_fu_158_p2;
    end
end

always @ (*) begin
    if ((ap_CS_fsm_state5 == 1'b1)) begin
        dout_blk_n = dout_full_n;
    end else begin
        dout_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state5 == 1'b1) & ~(dout_full_n == 1'b0))) begin
        dout_write = 1'b1;
    end else begin
        dout_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~(tmp_2_fu_169_p2 == 1'b0))) begin
        s_done = 1'b0;
    end else if (((1'b1 == ap_CS_fsm_state4) & ~(exitcond_fu_152_p2 == 1'b0))) begin
        s_done = 1'b1;
    end else begin
        s_done = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & ~(tmp_2_fu_169_p2 == 1'b0)) | ((1'b1 == ap_CS_fsm_state4) & ~(exitcond_fu_152_p2 == 1'b0)))) begin
        s_done_ap_vld = 1'b1;
    end else begin
        s_done_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sc_FIFO_DCT_mC_ce0 = 1'b1;
    end else begin
        sc_FIFO_DCT_mC_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (~(grp_read_fu_96_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (~(exitcond_fu_152_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (~(dout_full_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (~(tmp_2_fu_169_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_4];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_5];

assign dout_din = sc_FIFO_DCT_mC_q0[7:0];

assign exitcond_fu_152_p2 = ((i_reg_130 == ap_const_lv7_40) ? 1'b1 : 1'b0);

assign grp_read_fu_96_p2 = s_DCT;

assign i_1_fu_158_p2 = (i_reg_130 + ap_const_lv7_1);

assign i_cast1_fu_147_p1 = i_reg_130;

assign sc_FIFO_DCT_mC_address0 = i_cast1_fu_147_p1;

assign tmp_2_fu_169_p0 = s_DCT;

assign tmp_2_fu_169_p2 = (tmp_2_fu_169_p0 ^ 1'b1);

endmodule //sc_FIFO_DCT_data_out
