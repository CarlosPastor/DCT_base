-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.3
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sc_FIFO_DCT_DCT_b_a_rom is 
    generic(
             dwidth     : integer := 8; 
             awidth     : integer := 6; 
             mem_size    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of sc_FIFO_DCT_DCT_b_a_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "01011010", 1 => "01111101", 2 => "01110110", 3 => "01101010", 
    4 => "01011010", 5 => "01000111", 6 => "00110000", 7 => "00011000", 
    8 => "01011010", 9 => "01101010", 10 => "00110000", 11 => "11101000", 
    12 => "10100110", 13 => "10000011", 14 => "10001010", 15 => "10111001", 
    16 => "01011010", 17 => "01000111", 18 => "11010000", 19 => "10000011", 
    20 => "10100110", 21 => "00011000", 22 => "01110110", 23 => "01101010", 
    24 => "01011010", 25 => "00011000", 26 => "10001010", 27 => "10111001", 
    28 => "01011010", 29 => "01101010", 30 => "11010000", 31 => "10000011", 
    32 => "01011010", 33 => "11101000", 34 => "10001010", 35 => "01000111", 
    36 => "01011010", 37 => "10010110", 38 => "11010000", 39 => "01111101", 
    40 => "01011010", 41 => "10111001", 42 => "11010000", 43 => "01111101", 
    44 => "10100110", 45 => "11101000", 46 => "01110110", 47 => "10010110", 
    48 => "01011010", 49 => "10010110", 50 => "00110000", 51 => "00011000", 
    52 => "10100110", 53 => "01111101", 54 => "10001010", 55 => "01000111", 
    56 => "01011010", 57 => "10000011", 58 => "01110110", 59 => "10010110", 
    60 => "01011010", 61 => "10111001", 62 => "00110000", 63 => "11101000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity sc_FIFO_DCT_DCT_b_a is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of sc_FIFO_DCT_DCT_b_a is
    component sc_FIFO_DCT_DCT_b_a_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    sc_FIFO_DCT_DCT_b_a_rom_U :  component sc_FIFO_DCT_DCT_b_a_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


