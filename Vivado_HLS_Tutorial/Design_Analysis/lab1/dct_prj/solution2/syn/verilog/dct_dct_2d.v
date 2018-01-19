// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_dct_2d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_block_address0,
        in_block_ce0,
        in_block_q0,
        out_block_address0,
        out_block_ce0,
        out_block_we0,
        out_block_d0
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 8'b1;
parameter    ap_ST_st2_fsm_1 = 8'b10;
parameter    ap_ST_st3_fsm_2 = 8'b100;
parameter    ap_ST_pp0_stg0_fsm_3 = 8'b1000;
parameter    ap_ST_st6_fsm_4 = 8'b10000;
parameter    ap_ST_st7_fsm_5 = 8'b100000;
parameter    ap_ST_pp1_stg0_fsm_6 = 8'b1000000;
parameter    ap_ST_st10_fsm_7 = 8'b10000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv7_40 = 7'b1000000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] in_block_address0;
output   in_block_ce0;
input  [15:0] in_block_q0;
output  [5:0] out_block_address0;
output   out_block_ce0;
output   out_block_we0;
output  [15:0] out_block_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_block_ce0;
reg out_block_ce0;
reg out_block_we0;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm = 8'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_26;
reg   [6:0] indvar_flatten_reg_131;
reg   [3:0] j_reg_142;
reg   [3:0] i_1_reg_153;
reg   [6:0] indvar_flatten2_reg_176;
reg   [3:0] j_1_reg_187;
reg   [3:0] i_3_reg_198;
wire   [0:0] exitcond5_fu_224_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_63;
wire   [3:0] i_4_fu_230_p2;
reg   [3:0] i_4_reg_448;
wire   [0:0] exitcond_flatten_fu_236_p2;
reg   [0:0] exitcond_flatten_reg_453;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_3;
reg    ap_sig_bdd_74;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [6:0] indvar_flatten_next_fu_242_p2;
wire   [3:0] i_1_mid2_fu_254_p3;
reg   [3:0] i_1_mid2_reg_462;
wire   [3:0] j_mid2_fu_268_p3;
reg   [3:0] j_mid2_reg_467;
wire   [3:0] i_6_fu_303_p2;
wire   [0:0] exitcond2_fu_334_p2;
reg    ap_sig_cseq_ST_st6_fsm_4;
reg    ap_sig_bdd_102;
wire   [3:0] i_5_fu_340_p2;
reg   [3:0] i_5_reg_487;
wire   [0:0] exitcond_flatten2_fu_346_p2;
reg   [0:0] exitcond_flatten2_reg_492;
reg    ap_sig_cseq_ST_pp1_stg0_fsm_6;
reg    ap_sig_bdd_113;
reg    ap_reg_ppiten_pp1_it0 = 1'b0;
reg    ap_reg_ppiten_pp1_it1 = 1'b0;
wire   [6:0] indvar_flatten_next2_fu_352_p2;
wire   [3:0] i_3_mid2_fu_364_p3;
reg   [3:0] i_3_mid2_reg_501;
wire   [3:0] j_1_mid2_fu_378_p3;
reg   [3:0] j_1_mid2_reg_506;
wire   [3:0] i_7_fu_413_p2;
reg   [5:0] row_outbuf_address0;
reg    row_outbuf_ce0;
reg    row_outbuf_we0;
wire   [15:0] row_outbuf_d0;
wire   [15:0] row_outbuf_q0;
reg   [5:0] col_outbuf_address0;
reg    col_outbuf_ce0;
reg    col_outbuf_we0;
wire   [15:0] col_outbuf_d0;
wire   [15:0] col_outbuf_q0;
reg   [5:0] col_inbuf_address0;
reg    col_inbuf_ce0;
reg    col_inbuf_we0;
wire   [15:0] col_inbuf_d0;
wire   [15:0] col_inbuf_q0;
wire    grp_dct_dct_1d_fu_209_ap_start;
wire    grp_dct_dct_1d_fu_209_ap_done;
wire    grp_dct_dct_1d_fu_209_ap_idle;
wire    grp_dct_dct_1d_fu_209_ap_ready;
wire   [5:0] grp_dct_dct_1d_fu_209_src_address0;
wire    grp_dct_dct_1d_fu_209_src_ce0;
reg   [15:0] grp_dct_dct_1d_fu_209_src_q0;
reg   [3:0] grp_dct_dct_1d_fu_209_tmp_1;
wire   [5:0] grp_dct_dct_1d_fu_209_dst_address0;
wire    grp_dct_dct_1d_fu_209_dst_ce0;
wire    grp_dct_dct_1d_fu_209_dst_we0;
wire   [15:0] grp_dct_dct_1d_fu_209_dst_d0;
reg   [3:0] grp_dct_dct_1d_fu_209_tmp_11;
reg   [3:0] i_reg_119;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_199;
reg   [3:0] j_phi_fu_146_p4;
reg   [3:0] i_2_reg_164;
reg    ap_sig_cseq_ST_st7_fsm_5;
reg    ap_sig_bdd_218;
reg   [3:0] j_1_phi_fu_191_p4;
reg    grp_dct_dct_1d_fu_209_ap_start_ap_start_reg = 1'b0;
wire   [63:0] tmp_6_fu_298_p1;
wire   [63:0] tmp_8_fu_329_p1;
wire   [63:0] tmp_1_fu_408_p1;
wire   [63:0] tmp_3_fu_439_p1;
wire   [0:0] exitcond_fu_248_p2;
wire   [3:0] j_s_fu_262_p2;
wire   [6:0] tmp_fu_280_p3;
wire   [7:0] tmp_trn_cast_fu_276_p1;
wire   [7:0] p_addr_cast_fu_288_p1;
wire   [7:0] p_addr5_fu_292_p2;
wire   [6:0] tmp_7_fu_312_p3;
wire   [7:0] tmp_2_trn_cast_fu_309_p1;
wire   [7:0] p_addr6_cast_fu_319_p1;
wire   [7:0] p_addr7_fu_323_p2;
wire   [0:0] exitcond1_fu_358_p2;
wire   [3:0] j_2_fu_372_p2;
wire   [6:0] tmp_s_fu_390_p3;
wire   [7:0] tmp_3_trn_cast_fu_386_p1;
wire   [7:0] p_addr8_cast_fu_398_p1;
wire   [7:0] p_addr9_fu_402_p2;
wire   [6:0] tmp_2_fu_422_p3;
wire   [7:0] tmp_4_trn_cast_fu_419_p1;
wire   [7:0] p_addr3_cast_fu_429_p1;
wire   [7:0] p_addr4_fu_433_p2;
reg    ap_sig_cseq_ST_st10_fsm_7;
reg    ap_sig_bdd_386;
reg   [7:0] ap_NS_fsm;


dct_dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( row_outbuf_address0 ),
    .ce0( row_outbuf_ce0 ),
    .we0( row_outbuf_we0 ),
    .d0( row_outbuf_d0 ),
    .q0( row_outbuf_q0 )
);

dct_dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( col_outbuf_address0 ),
    .ce0( col_outbuf_ce0 ),
    .we0( col_outbuf_we0 ),
    .d0( col_outbuf_d0 ),
    .q0( col_outbuf_q0 )
);

dct_dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_inbuf_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( col_inbuf_address0 ),
    .ce0( col_inbuf_ce0 ),
    .we0( col_inbuf_we0 ),
    .d0( col_inbuf_d0 ),
    .q0( col_inbuf_q0 )
);

dct_dct_1d grp_dct_dct_1d_fu_209(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_dct_dct_1d_fu_209_ap_start ),
    .ap_done( grp_dct_dct_1d_fu_209_ap_done ),
    .ap_idle( grp_dct_dct_1d_fu_209_ap_idle ),
    .ap_ready( grp_dct_dct_1d_fu_209_ap_ready ),
    .src_address0( grp_dct_dct_1d_fu_209_src_address0 ),
    .src_ce0( grp_dct_dct_1d_fu_209_src_ce0 ),
    .src_q0( grp_dct_dct_1d_fu_209_src_q0 ),
    .tmp_1( grp_dct_dct_1d_fu_209_tmp_1 ),
    .dst_address0( grp_dct_dct_1d_fu_209_dst_address0 ),
    .dst_ce0( grp_dct_dct_1d_fu_209_dst_ce0 ),
    .dst_we0( grp_dct_dct_1d_fu_209_dst_we0 ),
    .dst_d0( grp_dct_dct_1d_fu_209_dst_d0 ),
    .tmp_11( grp_dct_dct_1d_fu_209_tmp_11 )
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & ~(exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_224_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_224_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & ~(exitcond_flatten_fu_236_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp1_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & ~(ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4) & ~(ap_const_lv1_0 == exitcond2_fu_334_p2))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp1_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4) & ~(ap_const_lv1_0 == exitcond2_fu_334_p2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & ~(ap_const_lv1_0 == exitcond_flatten2_fu_346_p2)))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
        end
    end
end

/// grp_dct_dct_1d_fu_209_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_dct_dct_1d_fu_209_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_dct_dct_1d_fu_209_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond5_fu_224_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4) & (ap_const_lv1_0 == exitcond2_fu_334_p2)))) begin
            grp_dct_dct_1d_fu_209_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_dct_dct_1d_fu_209_ap_ready)) begin
            grp_dct_dct_1d_fu_209_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_224_p2 == ap_const_lv1_0))) begin
        i_1_reg_153 <= ap_const_lv4_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
        i_1_reg_153 <= i_6_fu_303_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
        i_2_reg_164 <= ap_const_lv4_0;
    end else if ((~(ap_const_logic_0 == grp_dct_dct_1d_fu_209_ap_done) & (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5))) begin
        i_2_reg_164 <= i_5_reg_487;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4) & ~(ap_const_lv1_0 == exitcond2_fu_334_p2))) begin
        i_3_reg_198 <= ap_const_lv4_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & (ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
        i_3_reg_198 <= i_7_fu_413_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_logic_0 == grp_dct_dct_1d_fu_209_ap_done))) begin
        i_reg_119 <= i_4_reg_448;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_119 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4) & ~(ap_const_lv1_0 == exitcond2_fu_334_p2))) begin
        indvar_flatten2_reg_176 <= ap_const_lv7_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & (ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
        indvar_flatten2_reg_176 <= indvar_flatten_next2_fu_352_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_224_p2 == ap_const_lv1_0))) begin
        indvar_flatten_reg_131 <= ap_const_lv7_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
        indvar_flatten_reg_131 <= indvar_flatten_next_fu_242_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4) & ~(ap_const_lv1_0 == exitcond2_fu_334_p2))) begin
        j_1_reg_187 <= ap_const_lv4_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & (ap_const_lv1_0 == exitcond_flatten2_reg_492))) begin
        j_1_reg_187 <= j_1_mid2_reg_506;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_224_p2 == ap_const_lv1_0))) begin
        j_reg_142 <= ap_const_lv4_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_453 == ap_const_lv1_0))) begin
        j_reg_142 <= j_mid2_reg_467;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6)) begin
        exitcond_flatten2_reg_492 <= exitcond_flatten2_fu_346_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3)) begin
        exitcond_flatten_reg_453 <= exitcond_flatten_fu_236_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
        i_1_mid2_reg_462 <= i_1_mid2_fu_254_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
        i_3_mid2_reg_501 <= i_3_mid2_fu_364_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_4_reg_448 <= i_4_fu_230_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_4)) begin
        i_5_reg_487 <= i_5_fu_340_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & (ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
        j_1_mid2_reg_506 <= j_1_mid2_fu_378_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
        j_mid2_reg_467 <= j_mid2_fu_268_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st10_fsm_7)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_7))) begin
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
always @ (ap_sig_cseq_ST_st10_fsm_7)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_7)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_3 assign process. ///
always @ (ap_sig_bdd_74)
begin
    if (ap_sig_bdd_74) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp1_stg0_fsm_6 assign process. ///
always @ (ap_sig_bdd_113)
begin
    if (ap_sig_bdd_113) begin
        ap_sig_cseq_ST_pp1_stg0_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp1_stg0_fsm_6 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st10_fsm_7 assign process. ///
always @ (ap_sig_bdd_386)
begin
    if (ap_sig_bdd_386) begin
        ap_sig_cseq_ST_st10_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_26)
begin
    if (ap_sig_bdd_26) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_63)
begin
    if (ap_sig_bdd_63) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_199)
begin
    if (ap_sig_bdd_199) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_4 assign process. ///
always @ (ap_sig_bdd_102)
begin
    if (ap_sig_bdd_102) begin
        ap_sig_cseq_ST_st6_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_5 assign process. ///
always @ (ap_sig_bdd_218)
begin
    if (ap_sig_bdd_218) begin
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_0;
    end
end

/// col_inbuf_address0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_3 or ap_reg_ppiten_pp0_it1 or grp_dct_dct_1d_fu_209_src_address0 or ap_sig_cseq_ST_st7_fsm_5 or tmp_8_fu_329_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
        col_inbuf_address0 = tmp_8_fu_329_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_inbuf_address0 = grp_dct_dct_1d_fu_209_src_address0;
    end else begin
        col_inbuf_address0 = 'bx;
    end
end

/// col_inbuf_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_3 or ap_reg_ppiten_pp0_it1 or grp_dct_dct_1d_fu_209_src_ce0 or ap_sig_cseq_ST_st7_fsm_5)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
        col_inbuf_ce0 = ap_const_logic_1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_inbuf_ce0 = grp_dct_dct_1d_fu_209_src_ce0;
    end else begin
        col_inbuf_ce0 = ap_const_logic_0;
    end
end

/// col_inbuf_we0 assign process. ///
always @ (exitcond_flatten_reg_453 or ap_sig_cseq_ST_pp0_stg0_fsm_3 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_453 == ap_const_lv1_0))) begin
        col_inbuf_we0 = ap_const_logic_1;
    end else begin
        col_inbuf_we0 = ap_const_logic_0;
    end
end

/// col_outbuf_address0 assign process. ///
always @ (ap_sig_cseq_ST_pp1_stg0_fsm_6 or ap_reg_ppiten_pp1_it0 or grp_dct_dct_1d_fu_209_dst_address0 or ap_sig_cseq_ST_st7_fsm_5 or tmp_1_fu_408_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0))) begin
        col_outbuf_address0 = tmp_1_fu_408_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_outbuf_address0 = grp_dct_dct_1d_fu_209_dst_address0;
    end else begin
        col_outbuf_address0 = 'bx;
    end
end

/// col_outbuf_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp1_stg0_fsm_6 or ap_reg_ppiten_pp1_it0 or grp_dct_dct_1d_fu_209_dst_ce0 or ap_sig_cseq_ST_st7_fsm_5)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0))) begin
        col_outbuf_ce0 = ap_const_logic_1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_outbuf_ce0 = grp_dct_dct_1d_fu_209_dst_ce0;
    end else begin
        col_outbuf_ce0 = ap_const_logic_0;
    end
end

/// col_outbuf_we0 assign process. ///
always @ (grp_dct_dct_1d_fu_209_dst_we0 or ap_sig_cseq_ST_st7_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_outbuf_we0 = grp_dct_dct_1d_fu_209_dst_we0;
    end else begin
        col_outbuf_we0 = ap_const_logic_0;
    end
end

/// grp_dct_dct_1d_fu_209_src_q0 assign process. ///
always @ (in_block_q0 or col_inbuf_q0 or ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st7_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        grp_dct_dct_1d_fu_209_src_q0 = col_inbuf_q0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_dct_dct_1d_fu_209_src_q0 = in_block_q0;
    end else begin
        grp_dct_dct_1d_fu_209_src_q0 = 'bx;
    end
end

/// grp_dct_dct_1d_fu_209_tmp_1 assign process. ///
always @ (i_reg_119 or ap_sig_cseq_ST_st3_fsm_2 or i_2_reg_164 or ap_sig_cseq_ST_st7_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        grp_dct_dct_1d_fu_209_tmp_1 = i_2_reg_164;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_dct_dct_1d_fu_209_tmp_1 = i_reg_119;
    end else begin
        grp_dct_dct_1d_fu_209_tmp_1 = 'bx;
    end
end

/// grp_dct_dct_1d_fu_209_tmp_11 assign process. ///
always @ (i_reg_119 or ap_sig_cseq_ST_st3_fsm_2 or i_2_reg_164 or ap_sig_cseq_ST_st7_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        grp_dct_dct_1d_fu_209_tmp_11 = i_2_reg_164;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_dct_dct_1d_fu_209_tmp_11 = i_reg_119;
    end else begin
        grp_dct_dct_1d_fu_209_tmp_11 = 'bx;
    end
end

/// in_block_ce0 assign process. ///
always @ (grp_dct_dct_1d_fu_209_src_ce0 or ap_sig_cseq_ST_st3_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        in_block_ce0 = grp_dct_dct_1d_fu_209_src_ce0;
    end else begin
        in_block_ce0 = ap_const_logic_0;
    end
end

/// j_1_phi_fu_191_p4 assign process. ///
always @ (j_1_reg_187 or exitcond_flatten2_reg_492 or ap_sig_cseq_ST_pp1_stg0_fsm_6 or ap_reg_ppiten_pp1_it1 or j_1_mid2_reg_506)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & (ap_const_lv1_0 == exitcond_flatten2_reg_492))) begin
        j_1_phi_fu_191_p4 = j_1_mid2_reg_506;
    end else begin
        j_1_phi_fu_191_p4 = j_1_reg_187;
    end
end

/// j_phi_fu_146_p4 assign process. ///
always @ (j_reg_142 or exitcond_flatten_reg_453 or ap_sig_cseq_ST_pp0_stg0_fsm_3 or ap_reg_ppiten_pp0_it1 or j_mid2_reg_467)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_453 == ap_const_lv1_0))) begin
        j_phi_fu_146_p4 = j_mid2_reg_467;
    end else begin
        j_phi_fu_146_p4 = j_reg_142;
    end
end

/// out_block_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp1_stg0_fsm_6 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        out_block_ce0 = ap_const_logic_1;
    end else begin
        out_block_ce0 = ap_const_logic_0;
    end
end

/// out_block_we0 assign process. ///
always @ (exitcond_flatten2_reg_492 or ap_sig_cseq_ST_pp1_stg0_fsm_6 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & (ap_const_lv1_0 == exitcond_flatten2_reg_492))) begin
        out_block_we0 = ap_const_logic_1;
    end else begin
        out_block_we0 = ap_const_logic_0;
    end
end

/// row_outbuf_address0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_3 or ap_reg_ppiten_pp0_it0 or grp_dct_dct_1d_fu_209_dst_address0 or ap_sig_cseq_ST_st3_fsm_2 or tmp_6_fu_298_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        row_outbuf_address0 = tmp_6_fu_298_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_outbuf_address0 = grp_dct_dct_1d_fu_209_dst_address0;
    end else begin
        row_outbuf_address0 = 'bx;
    end
end

/// row_outbuf_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_3 or ap_reg_ppiten_pp0_it0 or grp_dct_dct_1d_fu_209_dst_ce0 or ap_sig_cseq_ST_st3_fsm_2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        row_outbuf_ce0 = ap_const_logic_1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_outbuf_ce0 = grp_dct_dct_1d_fu_209_dst_ce0;
    end else begin
        row_outbuf_ce0 = ap_const_logic_0;
    end
end

/// row_outbuf_we0 assign process. ///
always @ (grp_dct_dct_1d_fu_209_dst_we0 or ap_sig_cseq_ST_st3_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_outbuf_we0 = grp_dct_dct_1d_fu_209_dst_we0;
    end else begin
        row_outbuf_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond5_fu_224_p2 or exitcond_flatten_fu_236_p2 or ap_reg_ppiten_pp0_it0 or exitcond2_fu_334_p2 or exitcond_flatten2_fu_346_p2 or ap_reg_ppiten_pp1_it0 or grp_dct_dct_1d_fu_209_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond5_fu_224_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if (~(ap_const_logic_0 == grp_dct_dct_1d_fu_209_ap_done)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_3 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_236_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_4;
            end
        end
        ap_ST_st6_fsm_4 : 
        begin
            if (~(ap_const_lv1_0 == exitcond2_fu_334_p2)) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end
        end
        ap_ST_st7_fsm_5 : 
        begin
            if (~(ap_const_logic_0 == grp_dct_dct_1d_fu_209_ap_done)) begin
                ap_NS_fsm = ap_ST_st6_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end
        end
        ap_ST_pp1_stg0_fsm_6 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~(ap_const_lv1_0 == exitcond_flatten2_fu_346_p2))) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_7;
            end
        end
        ap_ST_st10_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_102 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_102 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_113 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_113 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_199 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_199 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_218 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_218 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_26 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_26 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_386 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_386 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_63 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_74 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_74 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end
assign col_inbuf_d0 = row_outbuf_q0;
assign col_outbuf_d0 = grp_dct_dct_1d_fu_209_dst_d0;
assign exitcond1_fu_358_p2 = (i_3_reg_198 == ap_const_lv4_8? 1'b1: 1'b0);
assign exitcond2_fu_334_p2 = (i_2_reg_164 == ap_const_lv4_8? 1'b1: 1'b0);
assign exitcond5_fu_224_p2 = (i_reg_119 == ap_const_lv4_8? 1'b1: 1'b0);
assign exitcond_flatten2_fu_346_p2 = (indvar_flatten2_reg_176 == ap_const_lv7_40? 1'b1: 1'b0);
assign exitcond_flatten_fu_236_p2 = (indvar_flatten_reg_131 == ap_const_lv7_40? 1'b1: 1'b0);
assign exitcond_fu_248_p2 = (i_1_reg_153 == ap_const_lv4_8? 1'b1: 1'b0);
assign grp_dct_dct_1d_fu_209_ap_start = grp_dct_dct_1d_fu_209_ap_start_ap_start_reg;
assign i_1_mid2_fu_254_p3 = ((exitcond_fu_248_p2[0:0]===1'b1)? ap_const_lv4_0: i_1_reg_153);
assign i_3_mid2_fu_364_p3 = ((exitcond1_fu_358_p2[0:0]===1'b1)? ap_const_lv4_0: i_3_reg_198);
assign i_4_fu_230_p2 = (i_reg_119 + ap_const_lv4_1);
assign i_5_fu_340_p2 = (i_2_reg_164 + ap_const_lv4_1);
assign i_6_fu_303_p2 = (i_1_mid2_fu_254_p3 + ap_const_lv4_1);
assign i_7_fu_413_p2 = (i_3_mid2_fu_364_p3 + ap_const_lv4_1);
assign in_block_address0 = grp_dct_dct_1d_fu_209_src_address0;
assign indvar_flatten_next2_fu_352_p2 = (indvar_flatten2_reg_176 + ap_const_lv7_1);
assign indvar_flatten_next_fu_242_p2 = (indvar_flatten_reg_131 + ap_const_lv7_1);
assign j_1_mid2_fu_378_p3 = ((exitcond1_fu_358_p2[0:0]===1'b1)? j_2_fu_372_p2: j_1_phi_fu_191_p4);
assign j_2_fu_372_p2 = (j_1_phi_fu_191_p4 + ap_const_lv4_1);
assign j_mid2_fu_268_p3 = ((exitcond_fu_248_p2[0:0]===1'b1)? j_s_fu_262_p2: j_phi_fu_146_p4);
assign j_s_fu_262_p2 = (j_phi_fu_146_p4 + ap_const_lv4_1);
assign out_block_address0 = tmp_3_fu_439_p1;
assign out_block_d0 = col_outbuf_q0;
assign p_addr3_cast_fu_429_p1 = tmp_2_fu_422_p3;
assign p_addr4_fu_433_p2 = (tmp_4_trn_cast_fu_419_p1 + p_addr3_cast_fu_429_p1);
assign p_addr5_fu_292_p2 = (tmp_trn_cast_fu_276_p1 + p_addr_cast_fu_288_p1);
assign p_addr6_cast_fu_319_p1 = tmp_7_fu_312_p3;
assign p_addr7_fu_323_p2 = (tmp_2_trn_cast_fu_309_p1 + p_addr6_cast_fu_319_p1);
assign p_addr8_cast_fu_398_p1 = tmp_s_fu_390_p3;
assign p_addr9_fu_402_p2 = (tmp_3_trn_cast_fu_386_p1 + p_addr8_cast_fu_398_p1);
assign p_addr_cast_fu_288_p1 = tmp_fu_280_p3;
assign row_outbuf_d0 = grp_dct_dct_1d_fu_209_dst_d0;
assign tmp_1_fu_408_p1 = p_addr9_fu_402_p2;
assign tmp_2_fu_422_p3 = {{j_1_mid2_reg_506}, {ap_const_lv3_0}};
assign tmp_2_trn_cast_fu_309_p1 = i_1_mid2_reg_462;
assign tmp_3_fu_439_p1 = p_addr4_fu_433_p2;
assign tmp_3_trn_cast_fu_386_p1 = j_1_mid2_fu_378_p3;
assign tmp_4_trn_cast_fu_419_p1 = i_3_mid2_reg_501;
assign tmp_6_fu_298_p1 = p_addr5_fu_292_p2;
assign tmp_7_fu_312_p3 = {{j_mid2_reg_467}, {ap_const_lv3_0}};
assign tmp_8_fu_329_p1 = p_addr7_fu_323_p2;
assign tmp_fu_280_p3 = {{i_1_mid2_fu_254_p3}, {ap_const_lv3_0}};
assign tmp_s_fu_390_p3 = {{i_3_mid2_fu_364_p3}, {ap_const_lv3_0}};
assign tmp_trn_cast_fu_276_p1 = j_mid2_fu_268_p3;


endmodule //dct_dct_2d

