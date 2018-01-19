-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity array_io is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    d_o_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    d_o_ce0 : OUT STD_LOGIC;
    d_o_we0 : OUT STD_LOGIC;
    d_o_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    d_i_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    d_i_ce0 : OUT STD_LOGIC;
    d_i_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of array_io is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "array_io,hls_ip_2015_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.390000,HLS_SYN_LAT=129,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=186,HLS_SYN_LUT=55}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_21 : BOOLEAN;
    signal acc_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal acc_ce0 : STD_LOGIC;
    signal acc_we0 : STD_LOGIC;
    signal acc_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal acc_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_85_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_1_reg_116 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_58 : BOOLEAN;
    signal acc_addr_reg_121 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond_fu_79_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_96_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_reg_126 : STD_LOGIC_VECTOR (63 downto 0);
    signal acc_load_reg_136 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_76 : BOOLEAN;
    signal d_i_load_reg_141 : STD_LOGIC_VECTOR (15 downto 0);
    signal temp_fu_104_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_reg_146 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_86 : BOOLEAN;
    signal tmp_4_fu_109_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_4_reg_151 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_reg_64 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_101 : BOOLEAN;
    signal tmp_fu_91_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal rem_fu_75_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2_fu_101_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component array_io_acc IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    acc_U : component array_io_acc
    generic map (
        DataWidth => 32,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => acc_address0,
        ce0 => acc_ce0,
        we0 => acc_we0,
        d0 => acc_d0,
        q0 => acc_q0);





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


    -- i_reg_64 assign process. --
    i_reg_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
                i_reg_64 <= i_1_reg_116;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_64 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_79_p2 = ap_const_lv1_0))) then
                acc_addr_reg_121 <= tmp_fu_91_p1(3 - 1 downto 0);
                    tmp_1_reg_126(5 downto 0) <= tmp_1_fu_96_p1(5 downto 0);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                acc_load_reg_136 <= acc_q0;
                d_i_load_reg_141 <= d_i_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_1_reg_116 <= i_1_fu_85_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                temp_reg_146 <= temp_fu_104_p2;
                tmp_4_reg_151 <= tmp_4_fu_109_p1;
            end if;
        end if;
    end process;
    tmp_1_reg_126(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_79_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond_fu_79_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    -- acc_address0 assign process. --
    acc_address0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, acc_addr_reg_121, ap_sig_cseq_ST_st5_fsm_4, tmp_fu_91_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            acc_address0 <= acc_addr_reg_121;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            acc_address0 <= tmp_fu_91_p1(3 - 1 downto 0);
        else 
            acc_address0 <= "XXX";
        end if; 
    end process;


    -- acc_ce0 assign process. --
    acc_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, ap_sig_cseq_ST_st5_fsm_4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) or (ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            acc_ce0 <= ap_const_logic_1;
        else 
            acc_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    acc_d0 <= temp_reg_146;

    -- acc_we0 assign process. --
    acc_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            acc_we0 <= ap_const_logic_1;
        else 
            acc_we0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_79_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_79_p2 = ap_const_lv1_0)))) then 
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
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_79_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_79_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_101 assign process. --
    ap_sig_bdd_101_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_101 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_21 assign process. --
    ap_sig_bdd_21_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_21 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_58 assign process. --
    ap_sig_bdd_58_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_58 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_76 assign process. --
    ap_sig_bdd_76_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_76 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_86 assign process. --
    ap_sig_bdd_86_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_86 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_21)
    begin
        if (ap_sig_bdd_21) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_58)
    begin
        if (ap_sig_bdd_58) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_76)
    begin
        if (ap_sig_bdd_76) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_86)
    begin
        if (ap_sig_bdd_86) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_4 assign process. --
    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_bdd_101)
    begin
        if (ap_sig_bdd_101) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;

    d_i_address0 <= tmp_1_fu_96_p1(5 - 1 downto 0);

    -- d_i_ce0 assign process. --
    d_i_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            d_i_ce0 <= ap_const_logic_1;
        else 
            d_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    d_o_address0 <= tmp_1_reg_126(5 - 1 downto 0);

    -- d_o_ce0 assign process. --
    d_o_ce0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            d_o_ce0 <= ap_const_logic_1;
        else 
            d_o_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    d_o_d0 <= tmp_4_reg_151;

    -- d_o_we0 assign process. --
    d_o_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            d_o_we0 <= ap_const_logic_1;
        else 
            d_o_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_79_p2 <= "1" when (i_reg_64 = ap_const_lv6_20) else "0";
    i_1_fu_85_p2 <= std_logic_vector(unsigned(ap_const_lv6_1) + unsigned(i_reg_64));
    rem_fu_75_p1 <= i_reg_64(3 - 1 downto 0);
    temp_fu_104_p2 <= std_logic_vector(unsigned(acc_load_reg_136) + unsigned(tmp_2_fu_101_p1));
    tmp_1_fu_96_p1 <= std_logic_vector(resize(unsigned(i_reg_64),64));
        tmp_2_fu_101_p1 <= std_logic_vector(resize(signed(d_i_load_reg_141),32));

    tmp_4_fu_109_p1 <= temp_fu_104_p2(16 - 1 downto 0);
    tmp_fu_91_p1 <= std_logic_vector(resize(unsigned(rem_fu_75_p1),64));
end behav;