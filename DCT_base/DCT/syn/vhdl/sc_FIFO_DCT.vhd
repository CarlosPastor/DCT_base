-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.3
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sc_FIFO_DCT is
port (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    dout_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dout_full_n : IN STD_LOGIC;
    dout_write : OUT STD_LOGIC;
    din_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    din_empty_n : IN STD_LOGIC;
    din_read : OUT STD_LOGIC );
end;


architecture behav of sc_FIFO_DCT is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "sc_FIFO_DCT,hls_ip_2016_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35ticpg236-1l,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.620000,HLS_SYN_LAT=1288,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=4,HLS_SYN_FF=1980,HLS_SYN_LUT=2992}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal sc_FIFO_DCT_mA_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal sc_FIFO_DCT_mA_ce0 : STD_LOGIC;
    signal sc_FIFO_DCT_mA_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal sc_FIFO_DCT_mC_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal sc_FIFO_DCT_mC_ce0 : STD_LOGIC;
    signal sc_FIFO_DCT_mC_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal sc_FIFO_DCT_ssdm_s_load_fu_260_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sc_FIFO_DCT_ssdm_1_load_fu_264_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_sc_FIFO_DCT_data_out_fu_160_dout_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_sc_FIFO_DCT_data_out_fu_160_dout_write : STD_LOGIC;
    signal grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_data_out_fu_160_s_DCT : STD_LOGIC;
    signal grp_sc_FIFO_DCT_data_out_fu_160_s_done : STD_LOGIC;
    signal grp_sc_FIFO_DCT_data_out_fu_160_s_done_ap_vld : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_ce0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_we0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_we0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o_ap_vld : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_s_buffered : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_s_working : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_s_working_ap_vld : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_s_DCT : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_s_DCT_ap_vld : STD_LOGIC;
    signal grp_sc_FIFO_DCT_DCT_fu_192_s_done : STD_LOGIC;
    signal grp_sc_FIFO_DCT_buffering_fu_228_din_read : STD_LOGIC;
    signal grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_we0 : STD_LOGIC;
    signal grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sc_FIFO_DCT_buffering_fu_228_s_buffered : STD_LOGIC;
    signal grp_sc_FIFO_DCT_buffering_fu_228_s_buffered_ap_vld : STD_LOGIC;
    signal grp_sc_FIFO_DCT_buffering_fu_228_s_working : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sc_FIFO_DCT_exec_cnt : STD_LOGIC_VECTOR (31 downto 0);
    signal s_buffered : STD_LOGIC_VECTOR (0 downto 0);
    signal s_working : STD_LOGIC_VECTOR (0 downto 0);
    signal s_DCT : STD_LOGIC_VECTOR (0 downto 0);
    signal s_done : STD_LOGIC_VECTOR (0 downto 0);
    signal sc_FIFO_DCT_ssdm_2_load_fu_268_p1 : STD_LOGIC_VECTOR (0 downto 0);

    component sc_FIFO_DCT_data_out IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        dout_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        dout_full_n : IN STD_LOGIC;
        dout_write : OUT STD_LOGIC;
        sc_FIFO_DCT_mC_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        sc_FIFO_DCT_mC_ce0 : OUT STD_LOGIC;
        sc_FIFO_DCT_mC_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        s_DCT : IN STD_LOGIC;
        s_done : OUT STD_LOGIC;
        s_done_ap_vld : OUT STD_LOGIC );
    end component;


    component sc_FIFO_DCT_DCT IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        sc_FIFO_DCT_mA_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        sc_FIFO_DCT_mA_ce0 : OUT STD_LOGIC;
        sc_FIFO_DCT_mA_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        sc_FIFO_DCT_mB_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        sc_FIFO_DCT_mB_ce0 : OUT STD_LOGIC;
        sc_FIFO_DCT_mB_we0 : OUT STD_LOGIC;
        sc_FIFO_DCT_mB_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        sc_FIFO_DCT_mC_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        sc_FIFO_DCT_mC_ce0 : OUT STD_LOGIC;
        sc_FIFO_DCT_mC_we0 : OUT STD_LOGIC;
        sc_FIFO_DCT_mC_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        sc_FIFO_DCT_exec_cnt_i : IN STD_LOGIC_VECTOR (31 downto 0);
        sc_FIFO_DCT_exec_cnt_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        sc_FIFO_DCT_exec_cnt_o_ap_vld : OUT STD_LOGIC;
        s_buffered : IN STD_LOGIC;
        s_working : OUT STD_LOGIC;
        s_working_ap_vld : OUT STD_LOGIC;
        s_DCT : OUT STD_LOGIC;
        s_DCT_ap_vld : OUT STD_LOGIC;
        s_done : IN STD_LOGIC );
    end component;


    component sc_FIFO_DCT_buffering IS
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
    end component;


    component sc_FIFO_DCT_DCT_a IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component sc_FIFO_DCT_sc_FIeOg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    sc_FIFO_DCT_mA_U : component sc_FIFO_DCT_DCT_a
    generic map (
        DataWidth => 32,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => clock,
        reset => reset,
        address0 => sc_FIFO_DCT_mA_address0,
        ce0 => sc_FIFO_DCT_mA_ce0,
        we0 => grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_we0,
        d0 => grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_d0,
        q0 => sc_FIFO_DCT_mA_q0);

    sc_FIFO_DCT_mB_U : component sc_FIFO_DCT_sc_FIeOg
    generic map (
        DataWidth => 32,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => clock,
        reset => reset,
        address0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_address0,
        ce0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_ce0,
        we0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_we0,
        d0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_d0);

    sc_FIFO_DCT_mC_U : component sc_FIFO_DCT_DCT_a
    generic map (
        DataWidth => 32,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => clock,
        reset => reset,
        address0 => sc_FIFO_DCT_mC_address0,
        ce0 => sc_FIFO_DCT_mC_ce0,
        we0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_we0,
        d0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_d0,
        q0 => sc_FIFO_DCT_mC_q0);

    grp_sc_FIFO_DCT_data_out_fu_160 : component sc_FIFO_DCT_data_out
    port map (
        ap_clk => clock,
        ap_rst => reset,
        dout_din => grp_sc_FIFO_DCT_data_out_fu_160_dout_din,
        dout_full_n => dout_full_n,
        dout_write => grp_sc_FIFO_DCT_data_out_fu_160_dout_write,
        sc_FIFO_DCT_mC_address0 => grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_address0,
        sc_FIFO_DCT_mC_ce0 => grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0,
        sc_FIFO_DCT_mC_q0 => sc_FIFO_DCT_mC_q0,
        s_DCT => grp_sc_FIFO_DCT_data_out_fu_160_s_DCT,
        s_done => grp_sc_FIFO_DCT_data_out_fu_160_s_done,
        s_done_ap_vld => grp_sc_FIFO_DCT_data_out_fu_160_s_done_ap_vld);

    grp_sc_FIFO_DCT_DCT_fu_192 : component sc_FIFO_DCT_DCT
    port map (
        ap_clk => clock,
        ap_rst => reset,
        sc_FIFO_DCT_mA_address0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_address0,
        sc_FIFO_DCT_mA_ce0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0,
        sc_FIFO_DCT_mA_q0 => sc_FIFO_DCT_mA_q0,
        sc_FIFO_DCT_mB_address0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_address0,
        sc_FIFO_DCT_mB_ce0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_ce0,
        sc_FIFO_DCT_mB_we0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_we0,
        sc_FIFO_DCT_mB_d0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mB_d0,
        sc_FIFO_DCT_mC_address0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_address0,
        sc_FIFO_DCT_mC_ce0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0,
        sc_FIFO_DCT_mC_we0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_we0,
        sc_FIFO_DCT_mC_d0 => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_d0,
        sc_FIFO_DCT_exec_cnt_i => sc_FIFO_DCT_exec_cnt,
        sc_FIFO_DCT_exec_cnt_o => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o,
        sc_FIFO_DCT_exec_cnt_o_ap_vld => grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o_ap_vld,
        s_buffered => grp_sc_FIFO_DCT_DCT_fu_192_s_buffered,
        s_working => grp_sc_FIFO_DCT_DCT_fu_192_s_working,
        s_working_ap_vld => grp_sc_FIFO_DCT_DCT_fu_192_s_working_ap_vld,
        s_DCT => grp_sc_FIFO_DCT_DCT_fu_192_s_DCT,
        s_DCT_ap_vld => grp_sc_FIFO_DCT_DCT_fu_192_s_DCT_ap_vld,
        s_done => grp_sc_FIFO_DCT_DCT_fu_192_s_done);

    grp_sc_FIFO_DCT_buffering_fu_228 : component sc_FIFO_DCT_buffering
    port map (
        ap_clk => clock,
        ap_rst => reset,
        din_dout => din_dout,
        din_empty_n => din_empty_n,
        din_read => grp_sc_FIFO_DCT_buffering_fu_228_din_read,
        sc_FIFO_DCT_mA_address0 => grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_address0,
        sc_FIFO_DCT_mA_ce0 => grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0,
        sc_FIFO_DCT_mA_we0 => grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_we0,
        sc_FIFO_DCT_mA_d0 => grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_d0,
        s_buffered => grp_sc_FIFO_DCT_buffering_fu_228_s_buffered,
        s_buffered_ap_vld => grp_sc_FIFO_DCT_buffering_fu_228_s_buffered_ap_vld,
        s_working => grp_sc_FIFO_DCT_buffering_fu_228_s_working);





    s_DCT_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_s_load_fu_260_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_1_load_fu_264_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_2_load_fu_268_p1))) then 
                s_DCT <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_s_DCT_ap_vld)) then 
                s_DCT <= (0=>grp_sc_FIFO_DCT_DCT_fu_192_s_DCT, others=>'-');
            end if; 
        end if;
    end process;


    s_buffered_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_s_load_fu_260_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_1_load_fu_264_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_2_load_fu_268_p1))) then 
                s_buffered <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_buffering_fu_228_s_buffered_ap_vld)) then 
                s_buffered <= (0=>grp_sc_FIFO_DCT_buffering_fu_228_s_buffered, others=>'-');
            end if; 
        end if;
    end process;


    s_done_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_s_load_fu_260_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_1_load_fu_264_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_2_load_fu_268_p1))) then 
                s_done <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_data_out_fu_160_s_done_ap_vld)) then 
                s_done <= (0=>grp_sc_FIFO_DCT_data_out_fu_160_s_done, others=>'-');
            end if; 
        end if;
    end process;


    s_working_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_s_load_fu_260_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_1_load_fu_264_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_2_load_fu_268_p1))) then 
                s_working <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_s_working_ap_vld)) then 
                s_working <= (0=>grp_sc_FIFO_DCT_DCT_fu_192_s_working, others=>'-');
            end if; 
        end if;
    end process;


    sc_FIFO_DCT_exec_cnt_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_s_load_fu_260_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_1_load_fu_264_p1) and (ap_const_lv1_0 = sc_FIFO_DCT_ssdm_2_load_fu_268_p1))) then 
                sc_FIFO_DCT_exec_cnt <= ap_const_lv32_0;
            elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o_ap_vld)) then 
                sc_FIFO_DCT_exec_cnt <= grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_exec_cnt_o;
            end if; 
        end if;
    end process;

    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1 downto 1);
    din_read <= grp_sc_FIFO_DCT_buffering_fu_228_din_read;
    dout_din <= grp_sc_FIFO_DCT_data_out_fu_160_dout_din;
    dout_write <= grp_sc_FIFO_DCT_data_out_fu_160_dout_write;
    grp_sc_FIFO_DCT_DCT_fu_192_s_buffered <= s_buffered(0);
    grp_sc_FIFO_DCT_DCT_fu_192_s_done <= s_done(0);
    grp_sc_FIFO_DCT_buffering_fu_228_s_working <= s_working(0);
    grp_sc_FIFO_DCT_data_out_fu_160_s_DCT <= s_DCT(0);

    sc_FIFO_DCT_mA_address0_assign_proc : process(grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_address0, grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0, grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_address0, grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0)
    begin
        if ((ap_const_logic_1 = grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0)) then 
            sc_FIFO_DCT_mA_address0 <= grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_address0;
        elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0)) then 
            sc_FIFO_DCT_mA_address0 <= grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_address0;
        else 
            sc_FIFO_DCT_mA_address0 <= "XXXXXX";
        end if; 
    end process;


    sc_FIFO_DCT_mA_ce0_assign_proc : process(grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0, grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0)
    begin
        if ((ap_const_logic_1 = grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0)) then 
            sc_FIFO_DCT_mA_ce0 <= grp_sc_FIFO_DCT_buffering_fu_228_sc_FIFO_DCT_mA_ce0;
        elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0)) then 
            sc_FIFO_DCT_mA_ce0 <= grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mA_ce0;
        else 
            sc_FIFO_DCT_mA_ce0 <= 'X';
        end if; 
    end process;


    sc_FIFO_DCT_mC_address0_assign_proc : process(grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_address0, grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0, grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_address0, grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0)
    begin
        if ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0)) then 
            sc_FIFO_DCT_mC_address0 <= grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_address0;
        elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0)) then 
            sc_FIFO_DCT_mC_address0 <= grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_address0;
        else 
            sc_FIFO_DCT_mC_address0 <= "XXXXXX";
        end if; 
    end process;


    sc_FIFO_DCT_mC_ce0_assign_proc : process(grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0, grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0)
    begin
        if ((ap_const_logic_1 = grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0)) then 
            sc_FIFO_DCT_mC_ce0 <= grp_sc_FIFO_DCT_DCT_fu_192_sc_FIFO_DCT_mC_ce0;
        elsif ((ap_const_logic_1 = grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0)) then 
            sc_FIFO_DCT_mC_ce0 <= grp_sc_FIFO_DCT_data_out_fu_160_sc_FIFO_DCT_mC_ce0;
        else 
            sc_FIFO_DCT_mC_ce0 <= 'X';
        end if; 
    end process;

    sc_FIFO_DCT_ssdm_1_load_fu_264_p1 <= ap_const_lv1_0;
    sc_FIFO_DCT_ssdm_2_load_fu_268_p1 <= ap_const_lv1_0;
    sc_FIFO_DCT_ssdm_s_load_fu_260_p1 <= ap_const_lv1_0;
end behav;
