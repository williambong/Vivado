// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_Loop_Col_DCT_Loop_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        col_inbuf_0_address0,
        col_inbuf_0_ce0,
        col_inbuf_0_q0,
        col_inbuf_1_address0,
        col_inbuf_1_ce0,
        col_inbuf_1_q0,
        col_inbuf_2_address0,
        col_inbuf_2_ce0,
        col_inbuf_2_q0,
        col_inbuf_3_address0,
        col_inbuf_3_ce0,
        col_inbuf_3_q0,
        col_inbuf_4_address0,
        col_inbuf_4_ce0,
        col_inbuf_4_q0,
        col_inbuf_5_address0,
        col_inbuf_5_ce0,
        col_inbuf_5_q0,
        col_inbuf_6_address0,
        col_inbuf_6_ce0,
        col_inbuf_6_q0,
        col_inbuf_7_address0,
        col_inbuf_7_ce0,
        col_inbuf_7_q0,
        col_outbuf_i_address0,
        col_outbuf_i_ce0,
        col_outbuf_i_we0,
        col_outbuf_i_d0
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 3'b10;
parameter    ap_ST_st7_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_true = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv7_40 = 7'b1000000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_1C = 32'b11100;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv29_1000 = 29'b1000000000000;
parameter    ap_const_lv32_2 = 32'b10;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] col_inbuf_0_address0;
output   col_inbuf_0_ce0;
input  [15:0] col_inbuf_0_q0;
output  [2:0] col_inbuf_1_address0;
output   col_inbuf_1_ce0;
input  [15:0] col_inbuf_1_q0;
output  [2:0] col_inbuf_2_address0;
output   col_inbuf_2_ce0;
input  [15:0] col_inbuf_2_q0;
output  [2:0] col_inbuf_3_address0;
output   col_inbuf_3_ce0;
input  [15:0] col_inbuf_3_q0;
output  [2:0] col_inbuf_4_address0;
output   col_inbuf_4_ce0;
input  [15:0] col_inbuf_4_q0;
output  [2:0] col_inbuf_5_address0;
output   col_inbuf_5_ce0;
input  [15:0] col_inbuf_5_q0;
output  [2:0] col_inbuf_6_address0;
output   col_inbuf_6_ce0;
input  [15:0] col_inbuf_6_q0;
output  [2:0] col_inbuf_7_address0;
output   col_inbuf_7_ce0;
input  [15:0] col_inbuf_7_q0;
output  [5:0] col_outbuf_i_address0;
output   col_outbuf_i_ce0;
output   col_outbuf_i_we0;
output  [15:0] col_outbuf_i_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg col_inbuf_0_ce0;
reg col_inbuf_1_ce0;
reg col_inbuf_2_ce0;
reg col_inbuf_3_ce0;
reg col_inbuf_4_ce0;
reg col_inbuf_5_ce0;
reg col_inbuf_6_ce0;
reg col_inbuf_7_ce0;
reg col_outbuf_i_ce0;
reg col_outbuf_i_we0;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm = 3'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_22;
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
reg   [6:0] indvar_flatten_reg_286;
reg   [3:0] i_2_i_reg_297;
reg   [3:0] k_i_reg_308;
wire   [0:0] exitcond_flatten_fu_319_p2;
reg   [0:0] exitcond_flatten_reg_544;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_bdd_153;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
reg    ap_reg_ppiten_pp0_it4 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it1;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it2;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it3;
wire   [6:0] indvar_flatten_next_fu_325_p2;
wire   [3:0] k_i_mid2_fu_337_p3;
reg   [3:0] k_i_mid2_reg_553;
reg   [3:0] ap_reg_ppstg_k_i_mid2_reg_553_pp0_it1;
reg   [3:0] ap_reg_ppstg_k_i_mid2_reg_553_pp0_it2;
reg   [3:0] ap_reg_ppstg_k_i_mid2_reg_553_pp0_it3;
wire   [3:0] i_2_i_mid2_fu_351_p3;
reg   [3:0] i_2_i_mid2_reg_558;
reg   [3:0] ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it1;
reg   [3:0] ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it2;
reg   [3:0] ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it3;
wire   [3:0] k_fu_383_p2;
reg   [13:0] dct_coeff_table_0_load_reg_649;
reg   [15:0] col_inbuf_0_load_reg_654;
reg   [14:0] dct_coeff_table_1_load_reg_659;
reg   [14:0] ap_reg_ppstg_dct_coeff_table_1_load_reg_659_pp0_it2;
reg   [15:0] col_inbuf_1_load_reg_664;
reg   [15:0] ap_reg_ppstg_col_inbuf_1_load_reg_664_pp0_it2;
reg   [14:0] dct_coeff_table_2_load_reg_669;
reg   [15:0] col_inbuf_2_load_reg_674;
reg   [14:0] dct_coeff_table_3_load_reg_679;
reg   [14:0] ap_reg_ppstg_dct_coeff_table_3_load_reg_679_pp0_it2;
reg   [15:0] col_inbuf_3_load_reg_684;
reg   [15:0] ap_reg_ppstg_col_inbuf_3_load_reg_684_pp0_it2;
reg   [14:0] dct_coeff_table_4_load_reg_689;
reg   [15:0] col_inbuf_4_load_reg_694;
reg   [14:0] dct_coeff_table_5_load_reg_699;
reg   [14:0] ap_reg_ppstg_dct_coeff_table_5_load_reg_699_pp0_it2;
reg   [15:0] col_inbuf_5_load_reg_704;
reg   [15:0] ap_reg_ppstg_col_inbuf_5_load_reg_704_pp0_it2;
reg   [14:0] dct_coeff_table_6_load_reg_709;
reg   [15:0] col_inbuf_6_load_reg_714;
reg   [14:0] dct_coeff_table_7_load_reg_719;
reg   [15:0] col_inbuf_7_load_reg_724;
wire  signed [28:0] tmp_8_i_fu_395_p2;
reg  signed [28:0] tmp_8_i_reg_729;
wire  signed [28:0] tmp_8_2_i_fu_407_p2;
reg  signed [28:0] tmp_8_2_i_reg_734;
wire  signed [28:0] tmp_8_4_i_fu_419_p2;
reg  signed [28:0] tmp_8_4_i_reg_739;
wire  signed [28:0] grp_fu_504_p3;
reg  signed [28:0] tmp5_reg_744;
reg   [15:0] tmp_4_i_reg_749;
reg    ap_sig_bdd_267;
reg   [3:0] i_2_i_phi_fu_301_p4;
wire   [63:0] tmp_i_10_fu_371_p1;
wire   [63:0] tmp_71_cast_i_fu_359_p1;
wire   [63:0] tmp_9_fu_499_p1;
wire   [0:0] exitcond1_i4_fu_331_p2;
wire   [3:0] i2_fu_345_p2;
wire  signed [15:0] tmp_8_i_fu_395_p0;
wire   [13:0] tmp_8_i_fu_395_p1;
wire  signed [15:0] tmp_8_2_i_fu_407_p0;
wire  signed [14:0] tmp_8_2_i_fu_407_p1;
wire  signed [15:0] tmp_8_4_i_fu_419_p0;
wire  signed [14:0] tmp_8_4_i_fu_419_p1;
wire  signed [28:0] grp_fu_511_p3;
wire  signed [28:0] grp_fu_536_p3;
wire  signed [28:0] grp_fu_519_p3;
(* use_dsp48 = "no" *) wire  signed [28:0] tmp3_fu_459_p2;
(* use_dsp48 = "no" *) wire  signed [28:0] tmp_fu_455_p2;
wire  signed [28:0] tmp_2_i_fu_463_p2;
wire   [6:0] tmp_8_fu_482_p3;
wire   [7:0] tmp_i_trn_cast_fu_479_p1;
wire   [7:0] p_addr_cast_fu_489_p1;
wire   [7:0] p_addr1_fu_493_p2;
wire  signed [15:0] grp_fu_504_p0;
wire  signed [14:0] grp_fu_504_p1;
wire  signed [28:0] grp_fu_504_p2;
wire  signed [28:0] grp_fu_527_p3;
wire  signed [15:0] grp_fu_511_p0;
wire  signed [14:0] grp_fu_511_p1;
wire  signed [28:0] grp_fu_511_p2;
wire  signed [15:0] grp_fu_519_p0;
wire  signed [14:0] grp_fu_519_p1;
wire  signed [28:0] grp_fu_519_p2;
wire  signed [15:0] grp_fu_527_p0;
wire  signed [14:0] grp_fu_527_p1;
wire   [13:0] grp_fu_527_p2;
wire  signed [15:0] grp_fu_536_p0;
wire  signed [14:0] grp_fu_536_p1;
wire  signed [28:0] grp_fu_536_p2;
reg    ap_sig_cseq_ST_st7_fsm_2;
reg    ap_sig_bdd_446;
reg   [2:0] ap_NS_fsm;
wire   [28:0] tmp_8_i_fu_395_p10;


dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_0 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_1 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_2 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_3 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_4 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_5 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_6 #(
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

dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_7 #(
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
dct_mac_muladd_16s_15s_29s_29_1_U40(
    .din0( grp_fu_504_p0 ),
    .din1( grp_fu_504_p1 ),
    .din2( grp_fu_504_p2 ),
    .dout( grp_fu_504_p3 )
);

dct_mac_muladd_16s_15s_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_29s_29_1_U41(
    .din0( grp_fu_511_p0 ),
    .din1( grp_fu_511_p1 ),
    .din2( grp_fu_511_p2 ),
    .dout( grp_fu_511_p3 )
);

dct_mac_muladd_16s_15s_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_29s_29_1_U42(
    .din0( grp_fu_519_p0 ),
    .din1( grp_fu_519_p1 ),
    .din2( grp_fu_519_p2 ),
    .dout( grp_fu_519_p3 )
);

dct_mac_muladd_16s_15s_14ns_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_14ns_29_1_U43(
    .din0( grp_fu_527_p0 ),
    .din1( grp_fu_527_p1 ),
    .din2( grp_fu_527_p2 ),
    .dout( grp_fu_527_p3 )
);

dct_mac_muladd_16s_15s_29s_29_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16s_15s_29s_29_1_U44(
    .din0( grp_fu_536_p0 ),
    .din1( grp_fu_536_p1 ),
    .din2( grp_fu_536_p2 ),
    .dout( grp_fu_536_p3 )
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

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_2)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_flatten_fu_319_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_267)) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_fu_319_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_267) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_flatten_fu_319_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
    end
end

/// ap_reg_ppiten_pp0_it4 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it4
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
    end else begin
        ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_544 == ap_const_lv1_0))) begin
        i_2_i_reg_297 <= i_2_i_mid2_reg_558;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_267)) begin
        i_2_i_reg_297 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_319_p2 == ap_const_lv1_0))) begin
        indvar_flatten_reg_286 <= indvar_flatten_next_fu_325_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_267)) begin
        indvar_flatten_reg_286 <= ap_const_lv7_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_319_p2 == ap_const_lv1_0))) begin
        k_i_reg_308 <= k_fu_383_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_267)) begin
        k_i_reg_308 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_true == ap_true)) begin
        ap_reg_ppstg_col_inbuf_1_load_reg_664_pp0_it2 <= col_inbuf_1_load_reg_664;
        ap_reg_ppstg_col_inbuf_3_load_reg_684_pp0_it2 <= col_inbuf_3_load_reg_684;
        ap_reg_ppstg_col_inbuf_5_load_reg_704_pp0_it2 <= col_inbuf_5_load_reg_704;
        ap_reg_ppstg_dct_coeff_table_1_load_reg_659_pp0_it2 <= dct_coeff_table_1_load_reg_659;
        ap_reg_ppstg_dct_coeff_table_3_load_reg_679_pp0_it2 <= dct_coeff_table_3_load_reg_679;
        ap_reg_ppstg_dct_coeff_table_5_load_reg_699_pp0_it2 <= dct_coeff_table_5_load_reg_699;
        ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it2 <= ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it1;
        ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it3 <= ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it2;
        ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it2 <= ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it1;
        ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it3 <= ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it2;
        ap_reg_ppstg_k_i_mid2_reg_553_pp0_it2 <= ap_reg_ppstg_k_i_mid2_reg_553_pp0_it1;
        ap_reg_ppstg_k_i_mid2_reg_553_pp0_it3 <= ap_reg_ppstg_k_i_mid2_reg_553_pp0_it2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it1 <= exitcond_flatten_reg_544;
        ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it1 <= i_2_i_mid2_reg_558;
        ap_reg_ppstg_k_i_mid2_reg_553_pp0_it1 <= k_i_mid2_reg_553;
        exitcond_flatten_reg_544 <= exitcond_flatten_fu_319_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_reg_544 == ap_const_lv1_0))) begin
        col_inbuf_0_load_reg_654 <= col_inbuf_0_q0;
        col_inbuf_1_load_reg_664 <= col_inbuf_1_q0;
        col_inbuf_2_load_reg_674 <= col_inbuf_2_q0;
        col_inbuf_3_load_reg_684 <= col_inbuf_3_q0;
        col_inbuf_4_load_reg_694 <= col_inbuf_4_q0;
        col_inbuf_5_load_reg_704 <= col_inbuf_5_q0;
        col_inbuf_6_load_reg_714 <= col_inbuf_6_q0;
        col_inbuf_7_load_reg_724 <= col_inbuf_7_q0;
        dct_coeff_table_0_load_reg_649 <= dct_coeff_table_0_q0;
        dct_coeff_table_1_load_reg_659 <= dct_coeff_table_1_q0;
        dct_coeff_table_2_load_reg_669 <= dct_coeff_table_2_q0;
        dct_coeff_table_3_load_reg_679 <= dct_coeff_table_3_q0;
        dct_coeff_table_4_load_reg_689 <= dct_coeff_table_4_q0;
        dct_coeff_table_5_load_reg_699 <= dct_coeff_table_5_q0;
        dct_coeff_table_6_load_reg_709 <= dct_coeff_table_6_q0;
        dct_coeff_table_7_load_reg_719 <= dct_coeff_table_7_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_319_p2 == ap_const_lv1_0))) begin
        i_2_i_mid2_reg_558 <= i_2_i_mid2_fu_351_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_fu_319_p2 == ap_const_lv1_0))) begin
        k_i_mid2_reg_553 <= k_i_mid2_fu_337_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it1 == ap_const_lv1_0)) begin
        tmp5_reg_744 <= grp_fu_504_p3;
        tmp_8_2_i_reg_734 <= tmp_8_2_i_fu_407_p2;
        tmp_8_4_i_reg_739 <= tmp_8_4_i_fu_419_p2;
        tmp_8_i_reg_729 <= tmp_8_i_fu_395_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it2 == ap_const_lv1_0)) begin
        tmp_4_i_reg_749 <= {{tmp_2_i_fu_463_p2[ap_const_lv32_1C : ap_const_lv32_D]}};
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st7_fsm_2)
begin
    if (((ap_const_logic_1 == ap_done_reg) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_2))) begin
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
always @ (ap_sig_cseq_ST_st7_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_2)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. ///
always @ (ap_sig_bdd_153)
begin
    if (ap_sig_bdd_153) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_22)
begin
    if (ap_sig_bdd_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_2 assign process. ///
always @ (ap_sig_bdd_446)
begin
    if (ap_sig_bdd_446) begin
        ap_sig_cseq_ST_st7_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_2 = ap_const_logic_0;
    end
end

/// col_inbuf_0_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_0_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_0_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_1_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_1_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_1_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_2_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_2_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_2_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_3_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_3_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_3_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_4_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_4_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_4_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_5_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_5_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_5_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_6_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_6_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_6_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_7_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        col_inbuf_7_ce0 = ap_const_logic_1;
    end else begin
        col_inbuf_7_ce0 = ap_const_logic_0;
    end
end

/// col_outbuf_i_ce0 assign process. ///
always @ (ap_reg_ppiten_pp0_it4)
begin
    if ((ap_const_logic_1 == ap_reg_ppiten_pp0_it4)) begin
        col_outbuf_i_ce0 = ap_const_logic_1;
    end else begin
        col_outbuf_i_ce0 = ap_const_logic_0;
    end
end

/// col_outbuf_i_we0 assign process. ///
always @ (ap_reg_ppiten_pp0_it4 or ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it4) & (ap_reg_ppstg_exitcond_flatten_reg_544_pp0_it3 == ap_const_lv1_0))) begin
        col_outbuf_i_we0 = ap_const_logic_1;
    end else begin
        col_outbuf_i_we0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_0_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_0_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_0_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_1_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_1_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_1_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_2_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_2_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_2_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_3_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_3_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_3_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_4_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_4_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_4_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_5_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_5_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_5_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_6_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_6_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_6_ce0 = ap_const_logic_0;
    end
end

/// dct_coeff_table_7_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        dct_coeff_table_7_ce0 = ap_const_logic_1;
    end else begin
        dct_coeff_table_7_ce0 = ap_const_logic_0;
    end
end

/// i_2_i_phi_fu_301_p4 assign process. ///
always @ (i_2_i_reg_297 or exitcond_flatten_reg_544 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or i_2_i_mid2_reg_558)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_544 == ap_const_lv1_0))) begin
        i_2_i_phi_fu_301_p4 = i_2_i_mid2_reg_558;
    end else begin
        i_2_i_phi_fu_301_p4 = i_2_i_reg_297;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or exitcond_flatten_fu_319_p2 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it3 or ap_reg_ppiten_pp0_it4 or ap_sig_bdd_267)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_267) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : 
        begin
            if ((~((ap_const_logic_1 == ap_reg_ppiten_pp0_it4) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it3)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_319_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_319_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
                ap_NS_fsm = ap_ST_st7_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_2;
            end
        end
        ap_ST_st7_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_153 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_153 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_22 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_22 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_267 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_267 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_446 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_446 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end
assign col_inbuf_0_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_1_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_2_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_3_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_4_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_5_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_6_address0 = tmp_71_cast_i_fu_359_p1;
assign col_inbuf_7_address0 = tmp_71_cast_i_fu_359_p1;
assign col_outbuf_i_address0 = tmp_9_fu_499_p1;
assign col_outbuf_i_d0 = tmp_4_i_reg_749;
assign dct_coeff_table_0_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_1_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_2_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_3_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_4_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_5_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_6_address0 = tmp_i_10_fu_371_p1;
assign dct_coeff_table_7_address0 = tmp_i_10_fu_371_p1;
assign exitcond1_i4_fu_331_p2 = (k_i_reg_308 == ap_const_lv4_8? 1'b1: 1'b0);
assign exitcond_flatten_fu_319_p2 = (indvar_flatten_reg_286 == ap_const_lv7_40? 1'b1: 1'b0);
assign grp_fu_504_p0 = col_inbuf_6_load_reg_714;
assign grp_fu_504_p1 = dct_coeff_table_6_load_reg_709;
assign grp_fu_504_p2 = grp_fu_527_p3;
assign grp_fu_511_p0 = ap_reg_ppstg_col_inbuf_3_load_reg_684_pp0_it2;
assign grp_fu_511_p1 = ap_reg_ppstg_dct_coeff_table_3_load_reg_679_pp0_it2;
assign grp_fu_511_p2 = tmp_8_2_i_reg_734;
assign grp_fu_519_p0 = ap_reg_ppstg_col_inbuf_5_load_reg_704_pp0_it2;
assign grp_fu_519_p1 = ap_reg_ppstg_dct_coeff_table_5_load_reg_699_pp0_it2;
assign grp_fu_519_p2 = tmp_8_4_i_reg_739;
assign grp_fu_527_p0 = col_inbuf_7_load_reg_724;
assign grp_fu_527_p1 = dct_coeff_table_7_load_reg_719;
assign grp_fu_527_p2 = ap_const_lv29_1000;
assign grp_fu_536_p0 = ap_reg_ppstg_col_inbuf_1_load_reg_664_pp0_it2;
assign grp_fu_536_p1 = ap_reg_ppstg_dct_coeff_table_1_load_reg_659_pp0_it2;
assign grp_fu_536_p2 = tmp_8_i_reg_729;
assign i2_fu_345_p2 = (i_2_i_phi_fu_301_p4 + ap_const_lv4_1);
assign i_2_i_mid2_fu_351_p3 = ((exitcond1_i4_fu_331_p2[0:0]===1'b1)? i2_fu_345_p2: i_2_i_phi_fu_301_p4);
assign indvar_flatten_next_fu_325_p2 = (indvar_flatten_reg_286 + ap_const_lv7_1);
assign k_fu_383_p2 = (k_i_mid2_fu_337_p3 + ap_const_lv4_1);
assign k_i_mid2_fu_337_p3 = ((exitcond1_i4_fu_331_p2[0:0]===1'b1)? ap_const_lv4_0: k_i_reg_308);
assign p_addr1_fu_493_p2 = (tmp_i_trn_cast_fu_479_p1 + p_addr_cast_fu_489_p1);
assign p_addr_cast_fu_489_p1 = tmp_8_fu_482_p3;
assign tmp3_fu_459_p2 = ($signed(tmp5_reg_744) + $signed(grp_fu_519_p3));
assign tmp_2_i_fu_463_p2 = ($signed(tmp3_fu_459_p2) + $signed(tmp_fu_455_p2));
assign tmp_71_cast_i_fu_359_p1 = i_2_i_mid2_fu_351_p3;
assign tmp_8_2_i_fu_407_p0 = col_inbuf_2_load_reg_674;
assign tmp_8_2_i_fu_407_p1 = dct_coeff_table_2_load_reg_669;
assign tmp_8_2_i_fu_407_p2 = ($signed(tmp_8_2_i_fu_407_p0) * $signed(tmp_8_2_i_fu_407_p1));
assign tmp_8_4_i_fu_419_p0 = col_inbuf_4_load_reg_694;
assign tmp_8_4_i_fu_419_p1 = dct_coeff_table_4_load_reg_689;
assign tmp_8_4_i_fu_419_p2 = ($signed(tmp_8_4_i_fu_419_p0) * $signed(tmp_8_4_i_fu_419_p1));
assign tmp_8_fu_482_p3 = {{ap_reg_ppstg_i_2_i_mid2_reg_558_pp0_it3}, {ap_const_lv3_0}};
assign tmp_8_i_fu_395_p0 = col_inbuf_0_load_reg_654;
assign tmp_8_i_fu_395_p1 = tmp_8_i_fu_395_p10;
assign tmp_8_i_fu_395_p10 = dct_coeff_table_0_load_reg_649;
assign tmp_8_i_fu_395_p2 = ($signed(tmp_8_i_fu_395_p0) * $signed({{1'b0}, {tmp_8_i_fu_395_p1}}));
assign tmp_9_fu_499_p1 = p_addr1_fu_493_p2;
assign tmp_fu_455_p2 = ($signed(grp_fu_511_p3) + $signed(grp_fu_536_p3));
assign tmp_i_10_fu_371_p1 = k_i_mid2_fu_337_p3;
assign tmp_i_trn_cast_fu_479_p1 = ap_reg_ppstg_k_i_mid2_reg_553_pp0_it3;


endmodule //dct_Loop_Col_DCT_Loop_proc

