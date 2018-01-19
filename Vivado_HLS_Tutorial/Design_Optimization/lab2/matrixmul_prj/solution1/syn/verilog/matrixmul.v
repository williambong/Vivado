// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2015_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=13.333333,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=10.421000,HLS_SYN_LAT=13,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=153,HLS_SYN_LUT=153}" *)

module matrixmul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_dout,
        a_empty_n,
        a_read,
        b_dout,
        b_empty_n,
        b_read,
        res_din,
        res_full_n,
        res_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 3'b10;
parameter    ap_ST_st6_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv4_9 = 4'b1001;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] a_dout;
input   a_empty_n;
output   a_read;
input  [23:0] b_dout;
input   b_empty_n;
output   b_read;
output  [15:0] res_din;
input   res_full_n;
output   res_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_read;
reg b_read;
reg res_write;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm = 3'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_19;
reg   [3:0] indvar_flatten_reg_133;
reg   [1:0] i_reg_144;
reg   [1:0] j_reg_155;
wire   [0:0] exitcond_flatten_fu_166_p2;
reg   [0:0] exitcond_flatten_reg_669;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_bdd_51;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg   [0:0] tmp_3_reg_695;
reg   [0:0] tmp_reg_691;
reg    ap_sig_bdd_67;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2;
reg    ap_sig_bdd_77;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it1;
wire   [3:0] indvar_flatten_next_fu_172_p2;
wire   [1:0] j_mid2_fu_184_p3;
reg   [1:0] j_mid2_reg_678;
reg   [1:0] ap_reg_ppstg_j_mid2_reg_678_pp0_it1;
wire   [1:0] i_mid2_fu_198_p3;
reg   [1:0] i_mid2_reg_686;
wire   [0:0] tmp_fu_206_p2;
wire   [0:0] tmp_3_fu_212_p2;
reg   [0:0] ap_reg_ppstg_tmp_3_reg_695_pp0_it1;
wire   [1:0] j_1_fu_218_p2;
wire   [7:0] a_row_0_1_fu_224_p1;
reg   [7:0] a_row_0_1_reg_713;
wire   [7:0] tmp_1_fu_507_p5;
reg   [7:0] tmp_1_reg_718;
wire  signed [15:0] grp_fu_580_p3;
reg  signed [15:0] tmp9_reg_723;
reg   [1:0] i_phi_fu_148_p4;
wire  signed [15:0] grp_fu_572_p3;
reg   [7:0] a_row_0_fu_66;
reg   [7:0] a_row_1_1_fu_70;
reg   [7:0] a_row_2_1_fu_74;
reg   [7:0] b_copy_0_2_3_fu_78;
wire   [7:0] b_copy_0_2_7_fu_324_p3;
reg   [7:0] b_copy_0_2_6_fu_82;
wire   [7:0] b_copy_0_2_5_fu_317_p3;
reg   [7:0] b_copy_0_2_1_fu_86;
wire   [7:0] b_copy_0_2_2_fu_302_p3;
reg   [7:0] b_copy_1_2_3_fu_90;
wire   [7:0] b_copy_1_2_7_fu_371_p3;
reg   [7:0] b_copy_1_2_6_fu_94;
wire   [7:0] b_copy_1_2_5_fu_364_p3;
reg   [7:0] b_copy_1_2_1_fu_98;
wire   [7:0] b_copy_1_2_2_fu_349_p3;
reg   [7:0] b_copy_2_2_3_fu_102;
wire   [7:0] b_copy_2_2_7_fu_418_p3;
reg   [7:0] b_copy_2_2_6_fu_106;
wire   [7:0] b_copy_2_2_5_fu_411_p3;
reg   [7:0] b_copy_2_2_1_fu_110;
wire   [7:0] b_copy_2_2_2_fu_396_p3;
wire   [0:0] exitcond_fu_178_p2;
wire   [1:0] i_s_fu_192_p2;
wire   [0:0] sel_tmp_fu_289_p2;
wire   [7:0] b_copy_0_2_9_fu_285_p1;
wire   [7:0] b_copy_0_2_fu_294_p3;
wire   [7:0] b_copy_0_2_4_fu_309_p3;
wire   [7:0] b_copy_1_2_9_fu_331_p4;
wire   [7:0] b_copy_1_2_fu_341_p3;
wire   [7:0] b_copy_1_2_4_fu_356_p3;
wire   [7:0] b_copy_2_2_9_fu_378_p4;
wire   [7:0] b_copy_2_2_fu_388_p3;
wire   [7:0] b_copy_2_2_4_fu_403_p3;
wire   [7:0] tmp_1_fu_507_p1;
wire   [7:0] tmp_1_fu_507_p2;
wire   [7:0] tmp_1_fu_507_p3;
wire   [1:0] tmp_1_fu_507_p4;
wire   [7:0] tmp_7_fu_522_p1;
wire   [7:0] tmp_7_fu_522_p2;
wire   [7:0] tmp_7_fu_522_p3;
wire   [1:0] tmp_7_fu_522_p4;
wire   [7:0] tmp_7_fu_522_p5;
wire  signed [7:0] tmp_10_1_fu_537_p0;
wire  signed [7:0] tmp_10_1_fu_537_p1;
wire   [7:0] tmp_8_fu_547_p1;
wire   [7:0] tmp_8_fu_547_p2;
wire   [7:0] tmp_8_fu_547_p3;
wire   [1:0] tmp_8_fu_547_p4;
wire   [7:0] tmp_8_fu_547_p5;
wire  signed [7:0] grp_fu_572_p0;
wire  signed [7:0] grp_fu_572_p1;
wire  signed [15:0] grp_fu_572_p2;
wire  signed [7:0] grp_fu_580_p0;
wire  signed [7:0] grp_fu_580_p1;
wire  signed [15:0] grp_fu_580_p2;
reg    ap_sig_cseq_ST_st6_fsm_2;
reg    ap_sig_bdd_412;
reg   [2:0] ap_NS_fsm;


matrixmul_mux_3to1_sel2_8_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
matrixmul_mux_3to1_sel2_8_1_U0(
    .din1( tmp_1_fu_507_p1 ),
    .din2( tmp_1_fu_507_p2 ),
    .din3( tmp_1_fu_507_p3 ),
    .din4( tmp_1_fu_507_p4 ),
    .dout( tmp_1_fu_507_p5 )
);

matrixmul_mux_3to1_sel2_8_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
matrixmul_mux_3to1_sel2_8_1_U1(
    .din1( tmp_7_fu_522_p1 ),
    .din2( tmp_7_fu_522_p2 ),
    .din3( tmp_7_fu_522_p3 ),
    .din4( tmp_7_fu_522_p4 ),
    .dout( tmp_7_fu_522_p5 )
);

matrixmul_mux_3to1_sel2_8_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
matrixmul_mux_3to1_sel2_8_1_U2(
    .din1( tmp_8_fu_547_p1 ),
    .din2( tmp_8_fu_547_p2 ),
    .din3( tmp_8_fu_547_p3 ),
    .din4( tmp_8_fu_547_p4 ),
    .dout( tmp_8_fu_547_p5 )
);

matrixmul_mac_muladd_8s_8s_16s_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_muladd_8s_8s_16s_16_1_U3(
    .din0( grp_fu_572_p0 ),
    .din1( grp_fu_572_p1 ),
    .din2( grp_fu_572_p2 ),
    .dout( grp_fu_572_p3 )
);

matrixmul_mac_muladd_8s_8s_16s_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_muladd_8s_8s_16s_16_1_U4(
    .din0( grp_fu_580_p0 ),
    .din1( grp_fu_580_p1 ),
    .din2( grp_fu_580_p2 ),
    .dout( grp_fu_580_p3 )
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond_flatten_fu_166_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond_flatten_fu_166_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond_flatten_fu_166_p2 == ap_const_lv1_0)))) begin
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
        if (~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
            ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond_flatten_reg_669 == ap_const_lv1_0))) begin
        i_reg_144 <= i_mid2_reg_686;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_144 <= ap_const_lv2_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond_flatten_fu_166_p2 == ap_const_lv1_0))) begin
        indvar_flatten_reg_133 <= indvar_flatten_next_fu_172_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        indvar_flatten_reg_133 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond_flatten_fu_166_p2 == ap_const_lv1_0))) begin
        j_reg_155 <= j_1_fu_218_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        j_reg_155 <= ap_const_lv2_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(tmp_3_reg_695 == ap_const_lv1_0) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        a_row_0_1_reg_713 <= a_row_0_1_fu_224_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_3_reg_695_pp0_it1))) begin
        a_row_0_fu_66 <= a_row_0_1_reg_713;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(tmp_3_reg_695 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        a_row_1_1_fu_70 <= {{a_dout[ap_const_lv32_F : ap_const_lv32_8]}};
        a_row_2_1_fu_74 <= {{a_dout[ap_const_lv32_17 : ap_const_lv32_10]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it1 <= exitcond_flatten_reg_669;
        ap_reg_ppstg_j_mid2_reg_678_pp0_it1 <= j_mid2_reg_678;
        ap_reg_ppstg_tmp_3_reg_695_pp0_it1 <= tmp_3_reg_695;
        exitcond_flatten_reg_669 <= exitcond_flatten_fu_166_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
        ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2 <= ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(ap_const_lv1_0 == tmp_reg_691) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        b_copy_0_2_1_fu_86 <= b_copy_0_2_2_fu_302_p3;
        b_copy_0_2_3_fu_78 <= b_copy_0_2_7_fu_324_p3;
        b_copy_0_2_6_fu_82 <= b_copy_0_2_5_fu_317_p3;
        b_copy_1_2_1_fu_98 <= b_copy_1_2_2_fu_349_p3;
        b_copy_1_2_3_fu_90 <= b_copy_1_2_7_fu_371_p3;
        b_copy_1_2_6_fu_94 <= b_copy_1_2_5_fu_364_p3;
        b_copy_2_2_1_fu_110 <= b_copy_2_2_2_fu_396_p3;
        b_copy_2_2_3_fu_102 <= b_copy_2_2_7_fu_418_p3;
        b_copy_2_2_6_fu_106 <= b_copy_2_2_5_fu_411_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond_flatten_fu_166_p2 == ap_const_lv1_0))) begin
        i_mid2_reg_686 <= i_mid2_fu_198_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond_flatten_fu_166_p2 == ap_const_lv1_0))) begin
        j_mid2_reg_678 <= j_mid2_fu_184_p3;
        tmp_3_reg_695 <= tmp_3_fu_212_p2;
        tmp_reg_691 <= tmp_fu_206_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it1))) begin
        tmp9_reg_723 <= grp_fu_580_p3;
        tmp_1_reg_718 <= tmp_1_fu_507_p5;
    end
end

/// a_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or tmp_3_reg_695 or ap_sig_bdd_67 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_77 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(tmp_3_reg_695 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        a_read = ap_const_logic_1;
    end else begin
        a_read = ap_const_logic_0;
    end
end

/// ap_done assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_2)) begin
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
always @ (ap_sig_cseq_ST_st6_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_2)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. ///
always @ (ap_sig_bdd_51)
begin
    if (ap_sig_bdd_51) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_19)
begin
    if (ap_sig_bdd_19) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_2 assign process. ///
always @ (ap_sig_bdd_412)
begin
    if (ap_sig_bdd_412) begin
        ap_sig_cseq_ST_st6_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_2 = ap_const_logic_0;
    end
end

/// b_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or tmp_reg_691 or ap_sig_bdd_67 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_77 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(ap_const_lv1_0 == tmp_reg_691) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        b_read = ap_const_logic_1;
    end else begin
        b_read = ap_const_logic_0;
    end
end

/// i_phi_fu_148_p4 assign process. ///
always @ (i_reg_144 or exitcond_flatten_reg_669 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or i_mid2_reg_686)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_669 == ap_const_lv1_0))) begin
        i_phi_fu_148_p4 = i_mid2_reg_686;
    end else begin
        i_phi_fu_148_p4 = i_reg_144;
    end
end

/// res_write assign process. ///
always @ (ap_sig_bdd_67 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2 or ap_sig_bdd_77 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        res_write = ap_const_logic_1;
    end else begin
        res_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond_flatten_fu_166_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_67 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_77 or ap_reg_ppiten_pp0_it3)
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
            if ((~((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond_flatten_fu_166_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_67 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond_flatten_fu_166_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st6_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end
        end
        ap_ST_st6_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_row_0_1_fu_224_p1 = a_dout[7:0];

/// ap_sig_bdd_19 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_19 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_412 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_412 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_51 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_51 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_67 assign process. ///
always @ (a_empty_n or b_empty_n or tmp_3_reg_695 or tmp_reg_691)
begin
    ap_sig_bdd_67 = (((a_empty_n == ap_const_logic_0) & ~(tmp_3_reg_695 == ap_const_lv1_0)) | ((b_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_691)));
end

/// ap_sig_bdd_77 assign process. ///
always @ (res_full_n or ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2)
begin
    ap_sig_bdd_77 = ((res_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2));
end
assign b_copy_0_2_2_fu_302_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_0_2_1_fu_86: b_copy_0_2_fu_294_p3);
assign b_copy_0_2_4_fu_309_p3 = ((sel_tmp_fu_289_p2[0:0]===1'b1)? b_copy_0_2_9_fu_285_p1: b_copy_0_2_6_fu_82);
assign b_copy_0_2_5_fu_317_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_0_2_6_fu_82: b_copy_0_2_4_fu_309_p3);
assign b_copy_0_2_7_fu_324_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_0_2_9_fu_285_p1: b_copy_0_2_3_fu_78);
assign b_copy_0_2_9_fu_285_p1 = b_dout[7:0];
assign b_copy_0_2_fu_294_p3 = ((sel_tmp_fu_289_p2[0:0]===1'b1)? b_copy_0_2_1_fu_86: b_copy_0_2_9_fu_285_p1);
assign b_copy_1_2_2_fu_349_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_1_2_1_fu_98: b_copy_1_2_fu_341_p3);
assign b_copy_1_2_4_fu_356_p3 = ((sel_tmp_fu_289_p2[0:0]===1'b1)? b_copy_1_2_9_fu_331_p4: b_copy_1_2_6_fu_94);
assign b_copy_1_2_5_fu_364_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_1_2_6_fu_94: b_copy_1_2_4_fu_356_p3);
assign b_copy_1_2_7_fu_371_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_1_2_9_fu_331_p4: b_copy_1_2_3_fu_90);
assign b_copy_1_2_9_fu_331_p4 = {{b_dout[ap_const_lv32_F : ap_const_lv32_8]}};
assign b_copy_1_2_fu_341_p3 = ((sel_tmp_fu_289_p2[0:0]===1'b1)? b_copy_1_2_1_fu_98: b_copy_1_2_9_fu_331_p4);
assign b_copy_2_2_2_fu_396_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_2_2_1_fu_110: b_copy_2_2_fu_388_p3);
assign b_copy_2_2_4_fu_403_p3 = ((sel_tmp_fu_289_p2[0:0]===1'b1)? b_copy_2_2_9_fu_378_p4: b_copy_2_2_6_fu_106);
assign b_copy_2_2_5_fu_411_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_2_2_6_fu_106: b_copy_2_2_4_fu_403_p3);
assign b_copy_2_2_7_fu_418_p3 = ((tmp_3_reg_695[0:0]===1'b1)? b_copy_2_2_9_fu_378_p4: b_copy_2_2_3_fu_102);
assign b_copy_2_2_9_fu_378_p4 = {{b_dout[ap_const_lv32_17 : ap_const_lv32_10]}};
assign b_copy_2_2_fu_388_p3 = ((sel_tmp_fu_289_p2[0:0]===1'b1)? b_copy_2_2_1_fu_110: b_copy_2_2_9_fu_378_p4);
assign exitcond_flatten_fu_166_p2 = (indvar_flatten_reg_133 == ap_const_lv4_9? 1'b1: 1'b0);
assign exitcond_fu_178_p2 = (j_reg_155 == ap_const_lv2_3? 1'b1: 1'b0);
assign grp_fu_572_p0 = a_row_0_fu_66;
assign grp_fu_572_p1 = tmp_1_reg_718;
assign grp_fu_572_p2 = tmp9_reg_723;
assign grp_fu_580_p0 = a_row_2_1_fu_74;
assign grp_fu_580_p1 = tmp_8_fu_547_p5;
assign grp_fu_580_p2 = ($signed(tmp_10_1_fu_537_p0) * $signed(tmp_10_1_fu_537_p1));
assign i_mid2_fu_198_p3 = ((exitcond_fu_178_p2[0:0]===1'b1)? i_s_fu_192_p2: i_phi_fu_148_p4);
assign i_s_fu_192_p2 = (i_phi_fu_148_p4 + ap_const_lv2_1);
assign indvar_flatten_next_fu_172_p2 = (indvar_flatten_reg_133 + ap_const_lv4_1);
assign j_1_fu_218_p2 = (j_mid2_fu_184_p3 + ap_const_lv2_1);
assign j_mid2_fu_184_p3 = ((exitcond_fu_178_p2[0:0]===1'b1)? ap_const_lv2_0: j_reg_155);
assign res_din = grp_fu_572_p3;
assign sel_tmp_fu_289_p2 = (j_mid2_reg_678 == ap_const_lv2_1? 1'b1: 1'b0);
assign tmp_10_1_fu_537_p0 = a_row_1_1_fu_70;
assign tmp_10_1_fu_537_p1 = tmp_7_fu_522_p5;
assign tmp_1_fu_507_p1 = b_copy_0_2_3_fu_78;
assign tmp_1_fu_507_p2 = b_copy_0_2_6_fu_82;
assign tmp_1_fu_507_p3 = b_copy_0_2_1_fu_86;
assign tmp_1_fu_507_p4 = ap_reg_ppstg_j_mid2_reg_678_pp0_it1;
assign tmp_3_fu_212_p2 = (j_mid2_fu_184_p3 == ap_const_lv2_0? 1'b1: 1'b0);
assign tmp_7_fu_522_p1 = b_copy_1_2_3_fu_90;
assign tmp_7_fu_522_p2 = b_copy_1_2_6_fu_94;
assign tmp_7_fu_522_p3 = b_copy_1_2_1_fu_98;
assign tmp_7_fu_522_p4 = ap_reg_ppstg_j_mid2_reg_678_pp0_it1;
assign tmp_8_fu_547_p1 = b_copy_2_2_3_fu_102;
assign tmp_8_fu_547_p2 = b_copy_2_2_6_fu_106;
assign tmp_8_fu_547_p3 = b_copy_2_2_1_fu_110;
assign tmp_8_fu_547_p4 = ap_reg_ppstg_j_mid2_reg_678_pp0_it1;
assign tmp_fu_206_p2 = (i_mid2_fu_198_p3 == ap_const_lv2_0? 1'b1: 1'b0);


endmodule //matrixmul
