-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.3
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sc_FIFO_DCT_buffering is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    din_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    din_empty_n : IN STD_LOGIC;
    din_read : OUT STD_LOGIC;
    sc_FIFO_DCT_mA_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    sc_FIFO_DCT_mA_ce0 : OUT STD_LOGIC;
    sc_FIFO_DCT_mA_we0 : OUT STD_LOGIC;
    sc_FIFO_DCT_mA_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_buffered : OUT STD_LOGIC;
    s_buffered_ap_vld : OUT STD_LOGIC;
    s_working : IN STD_LOGIC );
end;


architecture behav of sc_FIFO_DCT_buffering is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";

    signal din_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_5_nbreadreq_fu_98_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_88 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_2_fu_165_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_4_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_4_fu_138_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))) and (ap_const_lv1_0 = tmp_8_fu_171_p2))) then 
                i_fu_88 <= i_2_fu_165_p2;
            elsif ((((ap_const_lv1_1 = ap_CS_fsm_state2)) or ((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))) and not((ap_const_lv1_0 = tmp_8_fu_171_p2))))) then 
                i_fu_88 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (din_empty_n, ap_CS_fsm, tmp_5_nbreadreq_fu_98_p3, tmp_8_fu_171_p2, grp_read_fu_92_p2, tmp_4_fu_138_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (not((tmp_4_fu_138_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))) and (ap_const_lv1_0 = tmp_8_fu_171_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif ((not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))) and not((ap_const_lv1_0 = tmp_8_fu_171_p2)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (not((grp_read_fu_92_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1 downto 1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2 downto 2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3 downto 3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4 downto 4);

    din_blk_n_assign_proc : process(din_empty_n, ap_CS_fsm_state4)
    begin
        if (((ap_CS_fsm_state4 = ap_const_lv1_1))) then 
            din_blk_n <= din_empty_n;
        else 
            din_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    din_read_assign_proc : process(din_empty_n, ap_CS_fsm_state4, tmp_5_nbreadreq_fu_98_p3)
    begin
        if (((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))))) then 
            din_read <= ap_const_logic_1;
        else 
            din_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_read_fu_92_p2 <= (0=>s_working, others=>'-');
    i_2_fu_165_p2 <= std_logic_vector(unsigned(i_fu_88) + unsigned(ap_const_lv32_1));

    s_buffered_assign_proc : process(din_empty_n, ap_CS_fsm_state4, tmp_5_nbreadreq_fu_98_p3, tmp_8_fu_171_p2, grp_read_fu_92_p2, ap_CS_fsm_state5)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state5) and not((grp_read_fu_92_p2 = ap_const_lv1_0)))) then 
            s_buffered <= ap_const_logic_0;
        elsif (((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))) and not((ap_const_lv1_0 = tmp_8_fu_171_p2)))) then 
            s_buffered <= ap_const_logic_1;
        else 
            s_buffered <= 'X';
        end if; 
    end process;


    s_buffered_ap_vld_assign_proc : process(din_empty_n, ap_CS_fsm_state4, tmp_5_nbreadreq_fu_98_p3, tmp_8_fu_171_p2, grp_read_fu_92_p2, ap_CS_fsm_state5)
    begin
        if ((((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))) and not((ap_const_lv1_0 = tmp_8_fu_171_p2))) or ((ap_const_lv1_1 = ap_CS_fsm_state5) and not((grp_read_fu_92_p2 = ap_const_lv1_0))))) then 
            s_buffered_ap_vld <= ap_const_logic_1;
        else 
            s_buffered_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    sc_FIFO_DCT_mA_address0 <= i_fu_88(6 - 1 downto 0);

    sc_FIFO_DCT_mA_ce0_assign_proc : process(din_empty_n, ap_CS_fsm_state4, tmp_5_nbreadreq_fu_98_p3)
    begin
        if (((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0))))) then 
            sc_FIFO_DCT_mA_ce0 <= ap_const_logic_1;
        else 
            sc_FIFO_DCT_mA_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    sc_FIFO_DCT_mA_d0 <= std_logic_vector(resize(unsigned(din_dout),32));

    sc_FIFO_DCT_mA_we0_assign_proc : process(din_empty_n, ap_CS_fsm_state4, tmp_5_nbreadreq_fu_98_p3)
    begin
        if ((((ap_CS_fsm_state4 = ap_const_lv1_1) and not(((tmp_5_nbreadreq_fu_98_p3 = ap_const_lv1_0) or (din_empty_n = ap_const_logic_0)))))) then 
            sc_FIFO_DCT_mA_we0 <= ap_const_logic_1;
        else 
            sc_FIFO_DCT_mA_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_4_fu_138_p0 <= (0=>s_working, others=>'-');
    tmp_4_fu_138_p2 <= (tmp_4_fu_138_p0 xor ap_const_lv1_1);
    tmp_5_nbreadreq_fu_98_p3 <= (0=>din_empty_n, others=>'-');
    tmp_8_fu_171_p2 <= "1" when (i_2_fu_165_p2 = ap_const_lv32_40) else "0";
end behav;