-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_ap_vld : OUT STD_LOGIC;
    c_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    x : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir,hls_ip_2015_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200tfbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.240000,HLS_SYN_LAT=89,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=180,HLS_SYN_LUT=158}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_25 : BOOLEAN;
    signal shift_reg_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce0 : STD_LOGIC;
    signal shift_reg_we0 : STD_LOGIC;
    signal shift_reg_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_fu_126_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_reg_191 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_63 : BOOLEAN;
    signal tmp_1_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_200 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_130_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_82 : BOOLEAN;
    signal i_1_fu_167_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_1_reg_219 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_96 : BOOLEAN;
    signal acc_1_fu_179_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_bdd_105 : BOOLEAN;
    signal acc_reg_91 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_104 : STD_LOGIC_VECTOR (4 downto 0);
    signal data1_reg_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_154_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_159_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_163_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_144_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_148_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_fu_173_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_173_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_173_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_173_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component fir_mul_32s_32s_32_6 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_shift_reg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    shift_reg_U : component fir_shift_reg
    generic map (
        DataWidth => 32,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => shift_reg_address0,
        ce0 => shift_reg_ce0,
        we0 => shift_reg_we0,
        d0 => shift_reg_d0,
        q0 => shift_reg_q0);

    fir_mul_32s_32s_32_6_U0 : component fir_mul_32s_32s_32_6
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_173_p0,
        din1 => grp_fu_173_p1,
        ce => grp_fu_173_ce,
        dout => grp_fu_173_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- acc_reg_91 assign process. --
    acc_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then 
                acc_reg_91 <= acc_1_fu_179_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                acc_reg_91 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- data1_reg_116 assign process. --
    data1_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (tmp_1_reg_200 = ap_const_lv1_0))) then 
                data1_reg_116 <= shift_reg_q0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and not((tmp_1_fu_138_p2 = ap_const_lv1_0)))) then 
                data1_reg_116 <= x;
            end if; 
        end if;
    end process;

    -- i_reg_104 assign process. --
    i_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then 
                i_reg_104 <= i_1_reg_219;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_104 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                i_1_reg_219 <= i_1_fu_167_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_cast_reg_191 <= i_cast_fu_126_p1;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0))) then
                tmp_1_reg_200 <= tmp_1_fu_138_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, tmp_fu_130_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((tmp_fu_130_p3 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    acc_1_fu_179_p2 <= std_logic_vector(signed(grp_fu_173_p2) + signed(acc_reg_91));

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_fu_130_p3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((tmp_fu_130_p3 = ap_const_lv1_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_fu_130_p3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((tmp_fu_130_p3 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_105 assign process. --
    ap_sig_bdd_105_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_105 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    -- ap_sig_bdd_25 assign process. --
    ap_sig_bdd_25_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_25 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_63 assign process. --
    ap_sig_bdd_63_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_63 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_82 assign process. --
    ap_sig_bdd_82_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_82 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_96 assign process. --
    ap_sig_bdd_96_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_96 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_25)
    begin
        if (ap_sig_bdd_25) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_63)
    begin
        if (ap_sig_bdd_63) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_82)
    begin
        if (ap_sig_bdd_82) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_96)
    begin
        if (ap_sig_bdd_96) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st9_fsm_8 assign process. --
    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_bdd_105)
    begin
        if (ap_sig_bdd_105) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;

    c_address0 <= tmp_5_fu_163_p1(4 - 1 downto 0);

    -- c_ce0 assign process. --
    c_ce0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_173_ce <= ap_const_logic_1;
    grp_fu_173_p0 <= c_q0;
    grp_fu_173_p1 <= data1_reg_116;
    i_1_fu_167_p2 <= std_logic_vector(unsigned(i_reg_104) + unsigned(ap_const_lv5_1F));
        i_cast_fu_126_p1 <= std_logic_vector(resize(signed(i_reg_104),32));


    -- shift_reg_address0 assign process. --
    shift_reg_address0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_1_fu_138_p2, tmp_fu_130_p3, ap_sig_cseq_ST_st3_fsm_2, tmp_3_fu_154_p1, tmp_4_fu_159_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            shift_reg_address0 <= tmp_4_fu_159_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and not((tmp_1_fu_138_p2 = ap_const_lv1_0)))) then 
            shift_reg_address0 <= ap_const_lv4_0;
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and (tmp_1_fu_138_p2 = ap_const_lv1_0))) then 
            shift_reg_address0 <= tmp_3_fu_154_p1(4 - 1 downto 0);
        else 
            shift_reg_address0 <= "XXXX";
        end if; 
    end process;


    -- shift_reg_ce0 assign process. --
    shift_reg_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_1_fu_138_p2, tmp_fu_130_p3, ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and (tmp_1_fu_138_p2 = ap_const_lv1_0)) or (ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and not((tmp_1_fu_138_p2 = ap_const_lv1_0))))) then 
            shift_reg_ce0 <= ap_const_logic_1;
        else 
            shift_reg_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- shift_reg_d0 assign process. --
    shift_reg_d0_assign_proc : process(x, shift_reg_q0, ap_sig_cseq_ST_st2_fsm_1, tmp_1_fu_138_p2, tmp_fu_130_p3, ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            shift_reg_d0 <= shift_reg_q0;
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and not((tmp_1_fu_138_p2 = ap_const_lv1_0)))) then 
            shift_reg_d0 <= x;
        else 
            shift_reg_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- shift_reg_we0 assign process. --
    shift_reg_we0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_1_fu_138_p2, tmp_1_reg_200, tmp_fu_130_p3, ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (tmp_1_reg_200 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_fu_130_p3 = ap_const_lv1_0) and not((tmp_1_fu_138_p2 = ap_const_lv1_0))))) then 
            shift_reg_we0 <= ap_const_logic_1;
        else 
            shift_reg_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_138_p2 <= "1" when (i_reg_104 = ap_const_lv5_0) else "0";
    tmp_2_fu_148_p2 <= std_logic_vector(signed(ap_const_lv4_F) + signed(tmp_7_fu_144_p1));
    tmp_3_fu_154_p1 <= std_logic_vector(resize(unsigned(tmp_2_fu_148_p2),64));
    tmp_4_fu_159_p1 <= std_logic_vector(resize(unsigned(i_cast_reg_191),64));
    tmp_5_fu_163_p1 <= std_logic_vector(resize(unsigned(i_cast_reg_191),64));
    tmp_7_fu_144_p1 <= i_reg_104(4 - 1 downto 0);
    tmp_fu_130_p3 <= i_reg_104(4 downto 4);
    y <= acc_reg_91;

    -- y_ap_vld assign process. --
    y_ap_vld_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_fu_130_p3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((tmp_fu_130_p3 = ap_const_lv1_0)))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
