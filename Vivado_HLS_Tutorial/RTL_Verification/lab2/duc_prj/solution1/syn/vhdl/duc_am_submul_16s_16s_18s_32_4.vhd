
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity duc_am_submul_16s_16s_18s_32_4_DSP48_3 is
port (
    clk: in std_logic;
    rst: in std_logic;
    ce: in std_logic;
    a: in std_logic_vector(16 - 1 downto 0);
    b: in std_logic_vector(16 - 1 downto 0);
    c: in std_logic_vector(18 - 1 downto 0);
    p: out std_logic_vector(32 - 1 downto 0));

end entity;

architecture behav of duc_am_submul_16s_16s_18s_32_4_DSP48_3 is
    signal a_cvt: signed(17 - 1 downto 0);
    signal b_cvt: signed(17 - 1 downto 0);
    signal c_cvt: signed(18 - 1 downto 0);
    signal p_cvt: signed(32 - 1 downto 0);

    signal p_reg: signed(32 - 1 downto 0);
    signal ad_reg: signed(17 - 1 downto 0) ; 
    signal c_reg: signed(18 - 1 downto 0) ; 
    signal p_reg_tmp: signed(32 - 1 downto 0);
begin

    a_cvt <= resize(signed(a), 17);
    b_cvt <= resize(signed(b), 17);
    c_cvt <= signed(c);

    process(clk)
    begin
        if (clk'event and clk = '1') then
        if rst = '1' then
            ad_reg <= (others => '0');
            c_reg <= (others => '0');
            p_reg_tmp <= (others => '0');
            p_reg <= (others => '0');
        else
            if (ce = '1') then
                ad_reg <= resize((signed ( a_cvt) - signed (b_cvt)),17);
                c_reg <= c_cvt;
                p_reg_tmp <= p_cvt;
                p_reg <= p_reg_tmp;
            end if;
        end if;
        end if;
    end process;

    p_cvt <= resize((signed (ad_reg) * signed (c_reg)), 32);
    p <= std_logic_vector(p_reg);

end architecture;

Library IEEE;
use IEEE.std_logic_1164.all;

entity duc_am_submul_16s_16s_18s_32_4 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        ce : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        din2 : IN STD_LOGIC_VECTOR(din2_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of duc_am_submul_16s_16s_18s_32_4 is
    component duc_am_submul_16s_16s_18s_32_4_DSP48_3 is
        port (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            ce : IN STD_LOGIC;
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            c : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    duc_am_submul_16s_16s_18s_32_4_DSP48_3_U :  component duc_am_submul_16s_16s_18s_32_4_DSP48_3
    port map (
        clk => clk,
        rst => reset,
        ce => ce,
        a => din0,
        b => din1,
        c => din2,
        p => dout);

end architecture;

