-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_mac_muladd_16s_14ns_29s_29_1_DSP48_2 is
port (
    a: in std_logic_vector(16 - 1 downto 0);
    b: in std_logic_vector(14 - 1 downto 0);
    c: in std_logic_vector(29 - 1 downto 0);
    p: out std_logic_vector(29 - 1 downto 0));

end entity;

architecture behav of dct_mac_muladd_16s_14ns_29s_29_1_DSP48_2 is
    signal a_cvt: signed(16 - 1 downto 0);
    signal b_cvt: unsigned(14 - 1 downto 0);
    signal c_cvt: signed(29 - 1 downto 0);
    signal p_cvt: signed(29 - 1 downto 0);

begin

    a_cvt <= signed(a);
    b_cvt <= unsigned(b);
    c_cvt <= resize(signed(c), 29);
    p_cvt <= resize((signed ( a_cvt) * signed ('0' & b_cvt) + signed (c_cvt)), 29);
    p <= std_logic_vector(p_cvt);

end architecture;

Library IEEE;
use IEEE.std_logic_1164.all;

entity dct_mac_muladd_16s_14ns_29s_29_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        din2 : IN STD_LOGIC_VECTOR(din2_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of dct_mac_muladd_16s_14ns_29s_29_1 is
    component dct_mac_muladd_16s_14ns_29s_29_1_DSP48_2 is
        port (
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            c : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dct_mac_muladd_16s_14ns_29s_29_1_DSP48_2_U :  component dct_mac_muladd_16s_14ns_29s_29_1_DSP48_2
    port map (
        a => din0,
        b => din1,
        c => din2,
        p => dout);

end architecture;


