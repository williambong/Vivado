-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity window_fn_top is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    outdata_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    outdata_V_ce0 : OUT STD_LOGIC;
    outdata_V_we0 : OUT STD_LOGIC;
    outdata_V_d0 : OUT STD_LOGIC_VECTOR (23 downto 0);
    indata_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    indata_V_ce0 : OUT STD_LOGIC;
    indata_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of window_fn_top is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "window_fn_top,hls_ip_2015_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.490000,HLS_SYN_LAT=193,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=91,HLS_SYN_LUT=26}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal coeff_tab1_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal coeff_tab1_ce0 : STD_LOGIC;
    signal coeff_tab1_q0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fu_81_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_108 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_57 : BOOLEAN;
    signal tmp_i_fu_87_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_reg_113 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond_i_fu_75_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal coeff_tab1_load_reg_128 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_75 : BOOLEAN;
    signal indata_V_load_reg_133 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_85 : BOOLEAN;
    signal grp_fu_99_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal p_Val2_i_reg_148 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_96 : BOOLEAN;
    signal i_i_reg_64 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_109 : BOOLEAN;
    signal grp_fu_99_p0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_99_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_99_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_99_p00 : STD_LOGIC_VECTOR (23 downto 0);

    component window_fn_top_mul_17ns_8s_24_3 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (16 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component window_fn_top_coeff_tab1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (16 downto 0) );
    end component;



begin
    coeff_tab1_U : component window_fn_top_coeff_tab1
    generic map (
        DataWidth => 17,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => coeff_tab1_address0,
        ce0 => coeff_tab1_ce0,
        q0 => coeff_tab1_q0);

    window_fn_top_mul_17ns_8s_24_3_U0 : component window_fn_top_mul_17ns_8s_24_3
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 17,
        din1_WIDTH => 8,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_99_p0,
        din1 => grp_fu_99_p1,
        ce => grp_fu_99_ce,
        dout => grp_fu_99_p2);





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


    -- i_i_reg_64 assign process. --
    i_i_reg_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then 
                i_i_reg_64 <= i_reg_108;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_i_reg_64 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                coeff_tab1_load_reg_128 <= coeff_tab1_q0;
                indata_V_load_reg_133 <= indata_V_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_reg_108 <= i_fu_81_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                p_Val2_i_reg_148 <= grp_fu_99_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_i_fu_75_p2 = ap_const_lv1_0))) then
                    tmp_i_reg_113(5 downto 0) <= tmp_i_fu_87_p1(5 downto 0);
            end if;
        end if;
    end process;
    tmp_i_reg_113(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_i_fu_75_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond_i_fu_75_p2 = ap_const_lv1_0))) then
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
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_i_fu_75_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_i_fu_75_p2 = ap_const_lv1_0)))) then 
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
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_i_fu_75_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_i_fu_75_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_109 assign process. --
    ap_sig_bdd_109_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_109 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_57 assign process. --
    ap_sig_bdd_57_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_57 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_75 assign process. --
    ap_sig_bdd_75_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_75 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_85 assign process. --
    ap_sig_bdd_85_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_85 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_96 assign process. --
    ap_sig_bdd_96_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_96 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_23)
    begin
        if (ap_sig_bdd_23) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_57)
    begin
        if (ap_sig_bdd_57) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_75)
    begin
        if (ap_sig_bdd_75) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_85)
    begin
        if (ap_sig_bdd_85) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st6_fsm_5 assign process. --
    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_bdd_96)
    begin
        if (ap_sig_bdd_96) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_6 assign process. --
    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_bdd_109)
    begin
        if (ap_sig_bdd_109) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;

    coeff_tab1_address0 <= tmp_i_fu_87_p1(5 - 1 downto 0);

    -- coeff_tab1_ce0 assign process. --
    coeff_tab1_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            coeff_tab1_ce0 <= ap_const_logic_1;
        else 
            coeff_tab1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_i_fu_75_p2 <= "1" when (i_i_reg_64 = ap_const_lv6_20) else "0";
    grp_fu_99_ce <= ap_const_logic_1;
    grp_fu_99_p0 <= grp_fu_99_p00(17 - 1 downto 0);
    grp_fu_99_p00 <= std_logic_vector(resize(unsigned(coeff_tab1_load_reg_128),24));
    grp_fu_99_p1 <= indata_V_load_reg_133;
    i_fu_81_p2 <= std_logic_vector(unsigned(i_i_reg_64) + unsigned(ap_const_lv6_1));
    indata_V_address0 <= tmp_i_fu_87_p1(5 - 1 downto 0);

    -- indata_V_ce0 assign process. --
    indata_V_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            indata_V_ce0 <= ap_const_logic_1;
        else 
            indata_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    outdata_V_address0 <= tmp_i_reg_113(5 - 1 downto 0);

    -- outdata_V_ce0 assign process. --
    outdata_V_ce0_assign_proc : process(ap_sig_cseq_ST_st7_fsm_6)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then 
            outdata_V_ce0 <= ap_const_logic_1;
        else 
            outdata_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    outdata_V_d0 <= p_Val2_i_reg_148;

    -- outdata_V_we0 assign process. --
    outdata_V_we0_assign_proc : process(ap_sig_cseq_ST_st7_fsm_6)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6))) then 
            outdata_V_we0 <= ap_const_logic_1;
        else 
            outdata_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_i_fu_87_p1 <= std_logic_vector(resize(unsigned(i_i_reg_64),64));
end behav;
