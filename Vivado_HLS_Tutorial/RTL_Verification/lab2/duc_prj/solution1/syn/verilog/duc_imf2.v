// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module duc_imf2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        ap_return
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_st5_fsm_4 = 7'b10000;
parameter    ap_ST_st6_fsm_5 = 7'b100000;
parameter    ap_ST_st7_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv4_B = 4'b1011;
parameter    ap_const_lv4_5 = 4'b101;
parameter    ap_const_lv38_0 = 38'b00000000000000000000000000000000000000;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_22 = 32'b100010;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [17:0] x;
output  [17:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm = 7'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_25;
reg   [3:0] i_3 = 4'b0000;
reg   [17:0] in_2 = 18'b000000000000000000;
wire   [3:0] c_1_address0;
reg    c_1_ce0;
wire   [17:0] c_1_q0;
reg   [0:0] init_3 = 1'b1;
reg   [0:0] ch_2 = 1'b0;
reg   [4:0] shift_reg_p_1_address0;
reg    shift_reg_p_1_ce0;
reg    shift_reg_p_1_we0;
wire   [37:0] shift_reg_p_1_d0;
wire   [37:0] shift_reg_p_1_q0;
reg   [1:0] cnt = 2'b00;
reg   [3:0] i_3_load_reg_257;
wire   [3:0] inc_fu_100_p2;
reg   [3:0] inc_reg_267;
reg   [17:0] c_1_load_reg_278;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_73;
reg   [0:0] ch_2_load_reg_283;
wire   [0:0] sel_tmp1_fu_127_p2;
reg   [0:0] sel_tmp1_reg_294;
wire   [0:0] sel_tmp2_fu_132_p2;
reg   [0:0] sel_tmp2_reg_300;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_90;
reg   [37:0] shift_reg_p_1_load_reg_310;
wire   [0:0] sel_tmp5_fu_155_p2;
reg   [0:0] sel_tmp5_reg_315;
wire   [37:0] s_assign_fu_172_p3;
reg   [37:0] s_assign_reg_330;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_106;
wire  signed [37:0] grp_fu_250_p3;
reg  signed [37:0] sum_reg_335;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_115;
wire   [63:0] tmp_s_fu_106_p1;
wire   [63:0] tmp_15_fu_122_p1;
wire   [63:0] tmp_17_fu_185_p1;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_126;
wire   [3:0] inc_3_fu_238_p3;
wire   [0:0] tmp_fu_88_p2;
wire   [0:0] tmp_21_fu_194_p2;
wire   [0:0] tmp_22_fu_206_p2;
wire   [1:0] tmp_23_fu_217_p2;
wire   [4:0] tmp_14_fu_115_p3;
wire   [0:0] sel_tmp4_fu_151_p2;
wire   [0:0] sel_tmp3_fu_145_p2;
wire   [0:0] tmp_20_fu_168_p2;
wire   [4:0] tmp_16_fu_179_p3;
wire  signed [17:0] grp_fu_250_p0;
wire  signed [17:0] grp_fu_250_p1;
wire   [37:0] grp_fu_250_p2;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_218;
wire    grp_fu_250_ce;
reg   [6:0] ap_NS_fsm;


duc_imf2_c_1 #(
    .DataWidth( 18 ),
    .AddressRange( 12 ),
    .AddressWidth( 4 ))
c_1_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( c_1_address0 ),
    .ce0( c_1_ce0 ),
    .q0( c_1_q0 )
);

duc_imf2_shift_reg_p_1 #(
    .DataWidth( 38 ),
    .AddressRange( 26 ),
    .AddressWidth( 5 ))
shift_reg_p_1_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( shift_reg_p_1_address0 ),
    .ce0( shift_reg_p_1_ce0 ),
    .we0( shift_reg_p_1_we0 ),
    .d0( shift_reg_p_1_d0 ),
    .q0( shift_reg_p_1_q0 )
);

duc_mac_muladd_18s_18s_38ns_38_4 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 18 ),
    .din2_WIDTH( 38 ),
    .dout_WIDTH( 38 ))
duc_mac_muladd_18s_18s_38ns_38_4_U0(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_250_p0 ),
    .din1( grp_fu_250_p1 ),
    .din2( grp_fu_250_p2 ),
    .ce( grp_fu_250_ce ),
    .dout( grp_fu_250_p3 )
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

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        c_1_load_reg_278 <= c_1_q0;
        ch_2_load_reg_283 <= ch_2;
        sel_tmp1_reg_294 <= sel_tmp1_fu_127_p2;
        sel_tmp2_reg_300 <= sel_tmp2_fu_132_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == sel_tmp1_reg_294) & ~(ap_const_lv1_0 == tmp_21_fu_194_p2))) begin
        ch_2 <= tmp_22_fu_206_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == sel_tmp1_reg_294))) begin
        cnt <= tmp_23_fu_217_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        i_3 <= inc_3_fu_238_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_3_load_reg_257 <= i_3;
        inc_reg_267 <= inc_fu_100_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_fu_88_p2))) begin
        in_2 <= x;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == sel_tmp1_reg_294) & ~(ap_const_lv1_0 == tmp_21_fu_194_p2) & ~(ap_const_lv1_0 == ch_2_load_reg_283))) begin
        init_3 <= ap_const_lv1_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        s_assign_reg_330 <= s_assign_fu_172_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        sel_tmp5_reg_315 <= sel_tmp5_fu_155_p2;
        shift_reg_p_1_load_reg_310 <= shift_reg_p_1_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        sum_reg_335 <= grp_fu_250_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st7_fsm_6)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6))) begin
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
always @ (ap_sig_cseq_ST_st7_fsm_6)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_25)
begin
    if (ap_sig_bdd_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_73)
begin
    if (ap_sig_bdd_73) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_90)
begin
    if (ap_sig_bdd_90) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_106)
begin
    if (ap_sig_bdd_106) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_218)
begin
    if (ap_sig_bdd_218) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_5 assign process. ///
always @ (ap_sig_bdd_115)
begin
    if (ap_sig_bdd_115) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_6 assign process. ///
always @ (ap_sig_bdd_126)
begin
    if (ap_sig_bdd_126) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

/// c_1_ce0 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        c_1_ce0 = ap_const_logic_1;
    end else begin
        c_1_ce0 = ap_const_logic_0;
    end
end

/// shift_reg_p_1_address0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or tmp_15_fu_122_p1 or tmp_17_fu_185_p1 or ap_sig_cseq_ST_st7_fsm_6)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        shift_reg_p_1_address0 = tmp_17_fu_185_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        shift_reg_p_1_address0 = tmp_15_fu_122_p1;
    end else begin
        shift_reg_p_1_address0 = 'bx;
    end
end

/// shift_reg_p_1_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st7_fsm_6)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        shift_reg_p_1_ce0 = ap_const_logic_1;
    end else begin
        shift_reg_p_1_ce0 = ap_const_logic_0;
    end
end

/// shift_reg_p_1_we0 assign process. ///
always @ (ap_sig_cseq_ST_st7_fsm_6)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        shift_reg_p_1_we0 = ap_const_logic_1;
    end else begin
        shift_reg_p_1_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm)
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
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_return = {{sum_reg_335[ap_const_lv32_22 : ap_const_lv32_11]}};

/// ap_sig_bdd_106 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_106 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_115 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_115 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_126 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_126 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_218 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_218 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_25 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_25 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_73 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_73 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_90 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_90 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end
assign c_1_address0 = tmp_s_fu_106_p1;
assign grp_fu_250_ce = ap_const_logic_1;
assign grp_fu_250_p0 = c_1_load_reg_278;
assign grp_fu_250_p1 = in_2;
assign grp_fu_250_p2 = s_assign_reg_330;
assign inc_3_fu_238_p3 = ((sel_tmp1_reg_294[0:0]===1'b1)? ap_const_lv4_0: inc_reg_267);
assign inc_fu_100_p2 = (i_3 + ap_const_lv4_1);
assign s_assign_fu_172_p3 = ((tmp_20_fu_168_p2[0:0]===1'b1)? ap_const_lv38_0: shift_reg_p_1_load_reg_310);
assign sel_tmp1_fu_127_p2 = (i_3_load_reg_257 == ap_const_lv4_B? 1'b1: 1'b0);
assign sel_tmp2_fu_132_p2 = (i_3_load_reg_257 == ap_const_lv4_5? 1'b1: 1'b0);
assign sel_tmp3_fu_145_p2 = (init_3 ^ ap_const_lv1_1);
assign sel_tmp4_fu_151_p2 = (sel_tmp1_reg_294 | sel_tmp2_reg_300);
assign sel_tmp5_fu_155_p2 = (sel_tmp4_fu_151_p2 & sel_tmp3_fu_145_p2);
assign shift_reg_p_1_d0 = sum_reg_335;
assign tmp_14_fu_115_p3 = {{inc_reg_267}, {ch_2}};
assign tmp_15_fu_122_p1 = tmp_14_fu_115_p3;
assign tmp_16_fu_179_p3 = {{i_3_load_reg_257}, {ch_2_load_reg_283}};
assign tmp_17_fu_185_p1 = tmp_16_fu_179_p3;
assign tmp_20_fu_168_p2 = (sel_tmp5_reg_315 | init_3);
assign tmp_21_fu_194_p2 = (cnt == ap_const_lv2_3? 1'b1: 1'b0);
assign tmp_22_fu_206_p2 = (ch_2_load_reg_283 ^ ap_const_lv1_1);
assign tmp_23_fu_217_p2 = (cnt + ap_const_lv2_1);
assign tmp_fu_88_p2 = (i_3 == ap_const_lv4_0? 1'b1: 1'b0);
assign tmp_s_fu_106_p1 = i_3;


endmodule //duc_imf2

