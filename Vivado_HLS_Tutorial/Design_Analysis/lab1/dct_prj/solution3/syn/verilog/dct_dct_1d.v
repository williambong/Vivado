// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_dct_1d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_address0,
        src_ce0,
        src_q0,
        src_address1,
        src_ce1,
        src_q1,
        tmp_1,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        tmp_11
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 6'b10;
parameter    ap_ST_pp0_stg1_fsm_2 = 6'b100;
parameter    ap_ST_pp0_stg2_fsm_3 = 6'b1000;
parameter    ap_ST_pp0_stg3_fsm_4 = 6'b10000;
parameter    ap_ST_st10_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv25_0 = 25'b0000000000000000000000000;
parameter    ap_const_lv7_2 = 7'b10;
parameter    ap_const_lv7_3 = 7'b11;
parameter    ap_const_lv7_4 = 7'b100;
parameter    ap_const_lv7_5 = 7'b101;
parameter    ap_const_lv7_6 = 7'b110;
parameter    ap_const_lv7_7 = 7'b111;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_1C = 32'b11100;
parameter    ap_const_lv29_1000 = 29'b1000000000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] src_address0;
output   src_ce0;
input  [15:0] src_q0;
output  [5:0] src_address1;
output   src_ce1;
input  [15:0] src_q1;
input  [3:0] tmp_1;
output  [5:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [15:0] dst_d0;
input  [3:0] tmp_11;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] src_address0;
reg src_ce0;
reg[5:0] src_address1;
reg src_ce1;
reg dst_ce0;
reg dst_we0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm = 6'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_24;
wire   [2:0] dct_coeff_table_0_address0;
reg    dct_coeff_table_0_ce0;
wire   [13:0] dct_coeff_table_0_q0;
wire   [2:0] dct_coeff_table_1_address0;
reg    dct_coeff_table_1_ce0;
wire   [14:0] dct_coeff_table_1_q0;
wire   [2:0] dct_coeff_table_2_address0;
reg    dct_coeff_table_2_ce0;
wire   [14:0] dct_coeff_table_2_q0;
wire   [2:0] dct_coeff_table_3_address0;
reg    dct_coeff_table_3_ce0;
wire   [14:0] dct_coeff_table_3_q0;
wire   [2:0] dct_coeff_table_4_address0;
reg    dct_coeff_table_4_ce0;
wire   [14:0] dct_coeff_table_4_q0;
wire   [2:0] dct_coeff_table_5_address0;
reg    dct_coeff_table_5_ce0;
wire   [14:0] dct_coeff_table_5_q0;
wire   [2:0] dct_coeff_table_6_address0;
reg    dct_coeff_table_6_ce0;
wire   [14:0] dct_coeff_table_6_q0;
wire   [2:0] dct_coeff_table_7_address0;
reg    dct_coeff_table_7_ce0;
wire   [14:0] dct_coeff_table_7_q0;
reg   [3:0] k_reg_267;
reg   [15:0] reg_278;
reg    ap_sig_cseq_ST_pp0_stg1_fsm_2;
reg    ap_sig_bdd_111;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg   [0:0] exitcond1_reg_653;
reg    ap_sig_cseq_ST_pp0_stg2_fsm_3;
reg    ap_sig_bdd_126;
reg    ap_sig_cseq_ST_pp0_stg3_fsm_4;
reg    ap_sig_bdd_135;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_bdd_144;
reg   [15:0] reg_282;
reg   [5:0] src_addr_reg_608;
reg   [5:0] src_addr_1_reg_613;
reg   [5:0] src_addr_2_reg_618;
reg   [5:0] src_addr_3_reg_623;
reg   [5:0] src_addr_4_reg_628;
reg   [5:0] src_addr_5_reg_633;
reg   [5:0] src_addr_6_reg_638;
reg   [5:0] src_addr_7_reg_643;
wire   [7:0] p_addr16_cast_fu_440_p1;
reg   [7:0] p_addr16_cast_reg_648;
wire   [0:0] exitcond1_fu_444_p2;
reg   [0:0] ap_reg_ppstg_exitcond1_reg_653_pp0_it1;
wire   [3:0] k_1_fu_450_p2;
reg   [3:0] k_1_reg_657;
wire   [63:0] tmp_fu_456_p1;
reg   [63:0] tmp_reg_662;
wire   [7:0] p_addr7_fu_465_p2;
reg   [7:0] p_addr7_reg_678;
reg   [7:0] ap_reg_ppstg_p_addr7_reg_678_pp0_it1;
reg   [14:0] dct_coeff_table_1_load_reg_688;
reg   [13:0] dct_coeff_table_0_load_reg_698;
wire  signed [28:0] tmp_8_1_fu_477_p2;
reg  signed [28:0] tmp_8_1_reg_703;
reg   [14:0] dct_coeff_table_3_load_reg_713;
reg   [15:0] src_load_5_reg_728;
reg   [14:0] dct_coeff_table_2_load_reg_743;
wire  signed [28:0] tmp_8_3_fu_497_p2;
reg  signed [28:0] tmp_8_3_reg_748;
reg   [14:0] dct_coeff_table_4_load_reg_753;
reg   [15:0] src_load_4_reg_758;
reg   [14:0] dct_coeff_table_5_load_reg_763;
reg   [14:0] dct_coeff_table_6_load_reg_768;
reg   [14:0] dct_coeff_table_7_load_reg_773;
wire  signed [28:0] grp_fu_592_p3;
reg  signed [28:0] tmp2_reg_778;
wire  signed [28:0] tmp_8_5_fu_516_p2;
reg  signed [28:0] tmp_8_5_reg_783;
(* use_dsp48 = "no" *) wire  signed [28:0] tmp1_fu_522_p2;
reg  signed [28:0] tmp1_reg_788;
wire  signed [28:0] grp_fu_585_p3;
reg  signed [28:0] tmp6_reg_793;
reg   [15:0] tmp_4_reg_798;
reg   [3:0] k_phi_fu_271_p4;
wire   [63:0] tmp_6_fu_294_p1;
wire   [63:0] tmp_9_fu_313_p1;
wire   [63:0] tmp_12_fu_332_p1;
wire   [63:0] tmp_14_fu_351_p1;
wire   [63:0] tmp_16_fu_370_p1;
wire   [63:0] tmp_18_fu_389_p1;
wire   [63:0] tmp_20_fu_408_p1;
wire   [63:0] tmp_22_fu_427_p1;
wire   [63:0] tmp_24_fu_565_p1;
wire   [6:0] tmp_5_fu_286_p3;
wire   [6:0] tmp_7_fu_299_p2;
wire   [31:0] p_addr_fu_305_p3;
wire   [6:0] tmp_10_fu_318_p2;
wire   [31:0] p_addr1_fu_324_p3;
wire   [6:0] tmp_13_fu_337_p2;
wire   [31:0] p_addr2_fu_343_p3;
wire   [6:0] tmp_15_fu_356_p2;
wire   [31:0] p_addr3_fu_362_p3;
wire   [6:0] tmp_17_fu_375_p2;
wire   [31:0] p_addr4_fu_381_p3;
wire   [6:0] tmp_19_fu_394_p2;
wire   [31:0] p_addr5_fu_400_p3;
wire   [6:0] tmp_21_fu_413_p2;
wire   [31:0] p_addr6_fu_419_p3;
wire   [6:0] tmp_23_fu_432_p3;
wire   [7:0] tmp_trn_cast_fu_461_p1;
wire  signed [15:0] tmp_8_1_fu_477_p0;
wire  signed [14:0] tmp_8_1_fu_477_p1;
wire  signed [15:0] tmp_8_3_fu_497_p0;
wire  signed [14:0] tmp_8_3_fu_497_p1;
wire  signed [15:0] tmp_8_5_fu_516_p0;
wire  signed [14:0] tmp_8_5_fu_516_p1;
wire  signed [28:0] grp_fu_569_p3;
wire  signed [28:0] grp_fu_577_p3;
(* use_dsp48 = "no" *) wire  signed [28:0] tmp4_fu_546_p2;
wire  signed [28:0] tmp_2_fu_550_p2;
wire  signed [15:0] grp_fu_569_p0;
wire  signed [14:0] grp_fu_569_p1;
wire  signed [28:0] grp_fu_569_p2;
wire  signed [15:0] grp_fu_577_p0;
wire  signed [14:0] grp_fu_577_p1;
wire  signed [28:0] grp_fu_577_p2;
wire  signed [15:0] grp_fu_585_p0;
wire  signed [14:0] grp_fu_585_p1;
wire  signed [28:0] grp_fu_585_p2;
wire  signed [28:0] grp_fu_599_p3;
wire  signed [15:0] grp_fu_592_p0;
wire   [13:0] grp_fu_592_p1;
wire  signed [28:0] grp_fu_592_p2;
wire  signed [15:0] grp_fu_599_p0;
wire  signed [14:0] grp_fu_599_p1;
wire   [13:0] grp_fu_599_p2;
reg    ap_sig_cseq_ST_st10_fsm_5;
reg    ap_sig_bdd_481;
reg   [5:0] ap_NS_fsm;
wire   [28:0] grp_fu_592_p10;


dct_dct_1d_dct_coeff_table_0 #(
    .DataWidth( 14 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_0_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_0_address0 ),
    .ce0( dct_coeff_table_0_ce0 ),
    .q0( dct_coeff_table_0_q0 )
);

dct_dct_1d_dct_coeff_table_1 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_1_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_1_address0 ),
    .ce0( dct_coeff_table_1_ce0 ),
    .q0( dct_coeff_table_1_q0 )
);

dct_dct_1d_dct_coeff_table_2 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_2_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_2_address0 ),
    .ce0( dct_coeff_table_2_ce0 ),
    .q0( dct_coeff_table_2_q0 )
);

dct_dct_1d_dct_coeff_table_3 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_3_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_3_address0 ),
    .ce0( dct_coeff_table_3_ce0 ),
    .q0( dct_coeff_table_3_q0 )
);

dct_dct_1d_dct_coeff_table_4 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_4_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_4_address0 ),
    .ce0( dct_coeff_table_4_ce0 ),
    .q0( dct_coeff_table_4_q0 )
);

dct_dct_1d_dct_coeff_table_5 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_5_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_5_address0 ),
    .ce0( dct_coeff_table_5_ce0 ),
    .q0( dct_coeff_table_5_q0 )
);

dct_dct_1d_dct_coeff_table_6 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_6_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_6_address0 ),
    .ce0( dct_coeff_table_6_ce0 ),
    .q0( dct_coeff_table_6_q0 )
);

dct_dct_1d_dct_coeff_table_7 #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_7_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( dct_coeff_table_7_address0 ),
    .ce0( dct_coeff_table_7_ce0 ),
    .q0( dct_coeff_table_7_q0 )
);

dct_mac_muladd_16s_15s_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_29s_29_1_U0(
    .din0( grp_fu_569_p0 ),
    .din1( grp_fu_569_p1 ),
    .din2( grp_fu_569_p2 ),
    .dout( grp_fu_569_p3 )
);

dct_mac_muladd_16s_15s_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_29s_29_1_U1(
    .din0( grp_fu_577_p0 ),
    .din1( grp_fu_577_p1 ),
    .din2( grp_fu_577_p2 ),
    .dout( grp_fu_577_p3 )
);

dct_mac_muladd_16s_15s_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_29s_29_1_U2(
    .din0( grp_fu_585_p0 ),
    .din1( grp_fu_585_p1 ),
    .din2( grp_fu_585_p2 ),
    .dout( grp_fu_585_p3 )
);

dct_mac_muladd_16s_14ns_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_14ns_29s_29_1_U3(
    .din0( grp_fu_592_p0 ),
    .din1( grp_fu_592_p1 ),
    .din2( grp_fu_592_p2 ),
    .dout( grp_fu_592_p3 )
);

dct_mac_muladd_16s_15s_14ns_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_14ns_29_1_U4(
    .din0( grp_fu_599_p0 ),
    .din1( grp_fu_599_p1 ),
    .din2( grp_fu_599_p2 ),
    .dout( grp_fu_599_p3 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(ap_const_lv1_0 == exitcond1_fu_444_p2))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & ~(exitcond1_reg_653 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        k_reg_267 <= k_1_reg_657;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        k_reg_267 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        ap_reg_ppstg_exitcond1_reg_653_pp0_it1 <= exitcond1_reg_653;
        ap_reg_ppstg_p_addr7_reg_678_pp0_it1 <= p_addr7_reg_678;
        exitcond1_reg_653 <= exitcond1_fu_444_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        dct_coeff_table_0_load_reg_698 <= dct_coeff_table_0_q0;
        dct_coeff_table_3_load_reg_713 <= dct_coeff_table_3_q0;
        src_load_5_reg_728 <= src_q1;
        tmp_8_1_reg_703 <= tmp_8_1_fu_477_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond1_reg_653 == ap_const_lv1_0))) begin
        dct_coeff_table_1_load_reg_688 <= dct_coeff_table_1_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
        dct_coeff_table_2_load_reg_743 <= dct_coeff_table_2_q0;
        dct_coeff_table_4_load_reg_753 <= dct_coeff_table_4_q0;
        dct_coeff_table_5_load_reg_763 <= dct_coeff_table_5_q0;
        dct_coeff_table_6_load_reg_768 <= dct_coeff_table_6_q0;
        dct_coeff_table_7_load_reg_773 <= dct_coeff_table_7_q0;
        src_load_4_reg_758 <= src_q1;
        tmp2_reg_778 <= grp_fu_592_p3;
        tmp_8_3_reg_748 <= tmp_8_3_fu_497_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        k_1_reg_657 <= k_1_fu_450_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p_addr16_cast_reg_648[6 : 3] <= p_addr16_cast_fu_440_p1[6 : 3];
        src_addr_1_reg_613[5 : 3] <= tmp_9_fu_313_p1[5 : 3];
        src_addr_2_reg_618[5 : 3] <= tmp_12_fu_332_p1[5 : 3];
        src_addr_3_reg_623[5 : 3] <= tmp_14_fu_351_p1[5 : 3];
        src_addr_4_reg_628[5 : 3] <= tmp_16_fu_370_p1[5 : 3];
        src_addr_5_reg_633[5 : 3] <= tmp_18_fu_389_p1[5 : 3];
        src_addr_6_reg_638[5 : 3] <= tmp_20_fu_408_p1[5 : 3];
        src_addr_7_reg_643[5 : 3] <= tmp_22_fu_427_p1[5 : 3];
        src_addr_reg_608[5 : 3] <= tmp_6_fu_294_p1[5 : 3];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_lv1_0 == exitcond1_fu_444_p2))) begin
        p_addr7_reg_678 <= p_addr7_fu_465_p2;
        tmp_reg_662[3 : 0] <= tmp_fu_456_p1[3 : 0];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond1_reg_653 == ap_const_lv1_0)) | ((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) | ((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)))) begin
        reg_278 <= src_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond1_reg_653 == ap_const_lv1_0)) | ((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)))) begin
        reg_282 <= src_q1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        tmp1_reg_788 <= tmp1_fu_522_p2;
        tmp_8_5_reg_783 <= tmp_8_5_fu_516_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_653_pp0_it1))) begin
        tmp6_reg_793 <= grp_fu_585_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_653_pp0_it1))) begin
        tmp_4_reg_798 <= {{tmp_2_fu_550_p2[ap_const_lv32_1C : ap_const_lv32_D]}};
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st10_fsm_5)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_5))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st10_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_5)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. ///
always @ (ap_sig_bdd_144)
begin
    if (ap_sig_bdd_144) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg1_fsm_2 assign process. ///
always @ (ap_sig_bdd_111)
begin
    if (ap_sig_bdd_111) begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg2_fsm_3 assign process. ///
always @ (ap_sig_bdd_126)
begin
    if (ap_sig_bdd_126) begin
        ap_sig_cseq_ST_pp0_stg2_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg2_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg3_fsm_4 assign process. ///
always @ (ap_sig_bdd_135)
begin
    if (ap_sig_bdd_135) begin
        ap_sig_cseq_ST_pp0_stg3_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg3_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st10_fsm_5 assign process. ///
always @ (ap_sig_bdd_481)
begin
    if (ap_sig_bdd_481) begin
        ap_sig_cseq_ST_st10_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_24)
begin
    if (ap_sig_bdd_24) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_0_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_0_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_0_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_1_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg0_fsm_1)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        dct_coeff_table_1_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_1_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_2_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        dct_coeff_table_2_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_2_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_3_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_3_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_3_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_4_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        dct_coeff_table_4_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_4_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_5_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        dct_coeff_table_5_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_5_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_6_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        dct_coeff_table_6_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_6_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_7_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        dct_coeff_table_7_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_7_ce0 = ap_const_logic_0;
    end
end

/// dst_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg3_fsm_4)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
        dst_ce0 = ap_const_logic_1;
    end else begin
        dst_ce0 = ap_const_logic_0;
    end
end

/// dst_we0 assign process. ///
always @ (ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or ap_reg_ppstg_exitcond1_reg_653_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_653_pp0_it1))) begin
        dst_we0 = ap_const_logic_1;
    end else begin
        dst_we0 = ap_const_logic_0;
    end
end

/// k_phi_fu_271_p4 assign process. ///
always @ (k_reg_267 or ap_reg_ppiten_pp0_it1 or exitcond1_reg_653 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or k_1_reg_657)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond1_reg_653 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        k_phi_fu_271_p4 = k_1_reg_657;
    end else begin
        k_phi_fu_271_p4 = k_reg_267;
    end
end

/// src_address0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or src_addr_reg_608 or src_addr_1_reg_613 or src_addr_2_reg_618 or src_addr_6_reg_638)
begin
    if ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) begin
            src_address0 = src_addr_6_reg_638;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) begin
            src_address0 = src_addr_2_reg_618;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) begin
            src_address0 = src_addr_reg_608;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
            src_address0 = src_addr_1_reg_613;
        end else begin
            src_address0 = 'bx;
        end
    end else begin
        src_address0 = 'bx;
    end
end

/// src_address1 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or src_addr_3_reg_623 or src_addr_4_reg_628 or src_addr_5_reg_633 or src_addr_7_reg_643)
begin
    if ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) begin
            src_address1 = src_addr_7_reg_643;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) begin
            src_address1 = src_addr_4_reg_628;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) begin
            src_address1 = src_addr_5_reg_633;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
            src_address1 = src_addr_3_reg_623;
        end else begin
            src_address1 = 'bx;
        end
    end else begin
        src_address1 = 'bx;
    end
end

/// src_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or ap_sig_cseq_ST_pp0_stg0_fsm_1)
begin
    if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        src_ce0 = ap_const_logic_1;
    end else begin
        src_ce0 = ap_const_logic_0;
    end
end

/// src_ce1 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or ap_sig_cseq_ST_pp0_stg0_fsm_1)
begin
    if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        src_ce1 = ap_const_logic_1;
    end else begin
        src_ce1 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or exitcond1_fu_444_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_const_lv1_0 == exitcond1_fu_444_p2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_5;
            end
        end
        ap_ST_pp0_stg1_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg2_fsm_3;
        end
        ap_ST_pp0_stg2_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg3_fsm_4;
        end
        ap_ST_pp0_stg3_fsm_4 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_5;
            end
        end
        ap_ST_st10_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_111 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_111 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_126 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_126 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_135 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_135 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_144 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_144 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_24 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_24 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_481 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_481 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end
assign dct_coeff_table_0_address0 = tmp_reg_662;
assign dct_coeff_table_1_address0 = tmp_fu_456_p1;
assign dct_coeff_table_2_address0 = tmp_reg_662;
assign dct_coeff_table_3_address0 = tmp_reg_662;
assign dct_coeff_table_4_address0 = tmp_reg_662;
assign dct_coeff_table_5_address0 = tmp_reg_662;
assign dct_coeff_table_6_address0 = tmp_reg_662;
assign dct_coeff_table_7_address0 = tmp_reg_662;
assign dst_address0 = tmp_24_fu_565_p1;
assign dst_d0 = tmp_4_reg_798;
assign exitcond1_fu_444_p2 = (k_phi_fu_271_p4 == ap_const_lv4_8? 1'b1: 1'b0);
assign grp_fu_569_p0 = reg_278;
assign grp_fu_569_p1 = dct_coeff_table_2_load_reg_743;
assign grp_fu_569_p2 = tmp_8_3_reg_748;
assign grp_fu_577_p0 = src_load_4_reg_758;
assign grp_fu_577_p1 = dct_coeff_table_4_load_reg_753;
assign grp_fu_577_p2 = tmp_8_5_reg_783;
assign grp_fu_585_p0 = reg_278;
assign grp_fu_585_p1 = dct_coeff_table_6_load_reg_768;
assign grp_fu_585_p2 = grp_fu_599_p3;
assign grp_fu_592_p0 = reg_278;
assign grp_fu_592_p1 = grp_fu_592_p10;
assign grp_fu_592_p10 = dct_coeff_table_0_load_reg_698;
assign grp_fu_592_p2 = tmp_8_1_reg_703;
assign grp_fu_599_p0 = reg_282;
assign grp_fu_599_p1 = dct_coeff_table_7_load_reg_773;
assign grp_fu_599_p2 = ap_const_lv29_1000;
assign k_1_fu_450_p2 = (k_phi_fu_271_p4 + ap_const_lv4_1);
assign p_addr16_cast_fu_440_p1 = tmp_23_fu_432_p3;
assign p_addr1_fu_324_p3 = {{ap_const_lv25_0}, {tmp_10_fu_318_p2}};
assign p_addr2_fu_343_p3 = {{ap_const_lv25_0}, {tmp_13_fu_337_p2}};
assign p_addr3_fu_362_p3 = {{ap_const_lv25_0}, {tmp_15_fu_356_p2}};
assign p_addr4_fu_381_p3 = {{ap_const_lv25_0}, {tmp_17_fu_375_p2}};
assign p_addr5_fu_400_p3 = {{ap_const_lv25_0}, {tmp_19_fu_394_p2}};
assign p_addr6_fu_419_p3 = {{ap_const_lv25_0}, {tmp_21_fu_413_p2}};
assign p_addr7_fu_465_p2 = (p_addr16_cast_reg_648 + tmp_trn_cast_fu_461_p1);
assign p_addr_fu_305_p3 = {{ap_const_lv25_0}, {tmp_7_fu_299_p2}};
assign tmp1_fu_522_p2 = ($signed(tmp2_reg_778) + $signed(grp_fu_569_p3));
assign tmp4_fu_546_p2 = ($signed(grp_fu_577_p3) + $signed(tmp6_reg_793));
assign tmp_10_fu_318_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_2);
assign tmp_12_fu_332_p1 = p_addr1_fu_324_p3;
assign tmp_13_fu_337_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_3);
assign tmp_14_fu_351_p1 = p_addr2_fu_343_p3;
assign tmp_15_fu_356_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_4);
assign tmp_16_fu_370_p1 = p_addr3_fu_362_p3;
assign tmp_17_fu_375_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_5);
assign tmp_18_fu_389_p1 = p_addr4_fu_381_p3;
assign tmp_19_fu_394_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_6);
assign tmp_20_fu_408_p1 = p_addr5_fu_400_p3;
assign tmp_21_fu_413_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_7);
assign tmp_22_fu_427_p1 = p_addr6_fu_419_p3;
assign tmp_23_fu_432_p3 = {{tmp_11}, {ap_const_lv3_0}};
assign tmp_24_fu_565_p1 = ap_reg_ppstg_p_addr7_reg_678_pp0_it1;
assign tmp_2_fu_550_p2 = ($signed(tmp1_reg_788) + $signed(tmp4_fu_546_p2));
assign tmp_5_fu_286_p3 = {{tmp_1}, {ap_const_lv3_0}};
assign tmp_6_fu_294_p1 = tmp_5_fu_286_p3;
assign tmp_7_fu_299_p2 = (tmp_5_fu_286_p3 | ap_const_lv7_1);
assign tmp_8_1_fu_477_p0 = reg_278;
assign tmp_8_1_fu_477_p1 = dct_coeff_table_1_load_reg_688;
assign tmp_8_1_fu_477_p2 = ($signed(tmp_8_1_fu_477_p0) * $signed(tmp_8_1_fu_477_p1));
assign tmp_8_3_fu_497_p0 = reg_282;
assign tmp_8_3_fu_497_p1 = dct_coeff_table_3_load_reg_713;
assign tmp_8_3_fu_497_p2 = ($signed(tmp_8_3_fu_497_p0) * $signed(tmp_8_3_fu_497_p1));
assign tmp_8_5_fu_516_p0 = src_load_5_reg_728;
assign tmp_8_5_fu_516_p1 = dct_coeff_table_5_load_reg_763;
assign tmp_8_5_fu_516_p2 = ($signed(tmp_8_5_fu_516_p0) * $signed(tmp_8_5_fu_516_p1));
assign tmp_9_fu_313_p1 = p_addr_fu_305_p3;
assign tmp_fu_456_p1 = k_phi_fu_271_p4;
assign tmp_trn_cast_fu_461_p1 = k_phi_fu_271_p4;
always @ (posedge ap_clk)
begin
    src_addr_reg_608[2:0] <= 3'b000;
    src_addr_1_reg_613[2:0] <= 3'b001;
    src_addr_2_reg_618[2:0] <= 3'b010;
    src_addr_3_reg_623[2:0] <= 3'b011;
    src_addr_4_reg_628[2:0] <= 3'b100;
    src_addr_5_reg_633[2:0] <= 3'b101;
    src_addr_6_reg_638[2:0] <= 3'b110;
    src_addr_7_reg_643[2:0] <= 3'b111;
    p_addr16_cast_reg_648[2:0] <= 3'b000;
    p_addr16_cast_reg_648[7] <= 1'b0;
    tmp_reg_662[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end



endmodule //dct_dct_1d
