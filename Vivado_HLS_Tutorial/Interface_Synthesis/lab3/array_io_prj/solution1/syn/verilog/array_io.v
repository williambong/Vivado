// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="array_io,hls_ip_2015_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.390000,HLS_SYN_LAT=129,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=186,HLS_SYN_LUT=55}" *)

module array_io (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        d_o_address0,
        d_o_ce0,
        d_o_we0,
        d_o_d0,
        d_i_address0,
        d_i_ce0,
        d_i_q0
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 5'b1;
parameter    ap_ST_st2_fsm_1 = 5'b10;
parameter    ap_ST_st3_fsm_2 = 5'b100;
parameter    ap_ST_st4_fsm_3 = 5'b1000;
parameter    ap_ST_st5_fsm_4 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv6_20 = 6'b100000;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] d_o_address0;
output   d_o_ce0;
output   d_o_we0;
output  [15:0] d_o_d0;
output  [4:0] d_i_address0;
output   d_i_ce0;
input  [15:0] d_i_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg d_o_ce0;
reg d_o_we0;
reg d_i_ce0;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm = 5'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_21;
reg   [2:0] acc_address0;
reg    acc_ce0;
reg    acc_we0;
wire   [31:0] acc_d0;
wire   [31:0] acc_q0;
wire   [5:0] i_1_fu_85_p2;
reg   [5:0] i_1_reg_116;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_58;
reg   [2:0] acc_addr_reg_121;
wire   [0:0] exitcond_fu_79_p2;
wire   [63:0] tmp_1_fu_96_p1;
reg   [63:0] tmp_1_reg_126;
reg   [31:0] acc_load_reg_136;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_76;
reg   [15:0] d_i_load_reg_141;
wire  signed [31:0] temp_fu_104_p2;
reg  signed [31:0] temp_reg_146;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_86;
wire   [15:0] tmp_4_fu_109_p1;
reg   [15:0] tmp_4_reg_151;
reg   [5:0] i_reg_64;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_101;
wire   [63:0] tmp_fu_91_p1;
wire   [2:0] rem_fu_75_p1;
wire  signed [31:0] tmp_2_fu_101_p1;
reg   [4:0] ap_NS_fsm;


array_io_acc #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
acc_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( acc_address0 ),
    .ce0( acc_ce0 ),
    .we0( acc_we0 ),
    .d0( acc_d0 ),
    .q0( acc_q0 )
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
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        i_reg_64 <= i_1_reg_116;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_64 <= ap_const_lv6_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_79_p2 == ap_const_lv1_0))) begin
        acc_addr_reg_121 <= tmp_fu_91_p1;
        tmp_1_reg_126[5 : 0] <= tmp_1_fu_96_p1[5 : 0];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        acc_load_reg_136 <= acc_q0;
        d_i_load_reg_141 <= d_i_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_1_reg_116 <= i_1_fu_85_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        temp_reg_146 <= temp_fu_104_p2;
        tmp_4_reg_151 <= tmp_4_fu_109_p1;
    end
end

/// acc_address0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or acc_addr_reg_121 or ap_sig_cseq_ST_st5_fsm_4 or tmp_fu_91_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        acc_address0 = acc_addr_reg_121;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        acc_address0 = tmp_fu_91_p1;
    end else begin
        acc_address0 = 'bx;
    end
end

/// acc_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st5_fsm_4)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) | (ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        acc_ce0 = ap_const_logic_1;
    end else begin
        acc_ce0 = ap_const_logic_0;
    end
end

/// acc_we0 assign process. ///
always @ (ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        acc_we0 = ap_const_logic_1;
    end else begin
        acc_we0 = ap_const_logic_0;
    end
end

/// ap_done assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_79_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_79_p2 == ap_const_lv1_0))) begin
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
always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_79_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_79_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_21)
begin
    if (ap_sig_bdd_21) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_58)
begin
    if (ap_sig_bdd_58) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_76)
begin
    if (ap_sig_bdd_76) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_86)
begin
    if (ap_sig_bdd_86) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_101)
begin
    if (ap_sig_bdd_101) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// d_i_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        d_i_ce0 = ap_const_logic_1;
    end else begin
        d_i_ce0 = ap_const_logic_0;
    end
end

/// d_o_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        d_o_ce0 = ap_const_logic_1;
    end else begin
        d_o_ce0 = ap_const_logic_0;
    end
end

/// d_o_we0 assign process. ///
always @ (ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        d_o_we0 = ap_const_logic_1;
    end else begin
        d_o_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond_fu_79_p2)
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
            if (~(exitcond_fu_79_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
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
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_d0 = temp_reg_146;

/// ap_sig_bdd_101 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_101 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_21 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_21 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_58 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_58 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_76 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_76 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_86 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_86 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end
assign d_i_address0 = tmp_1_fu_96_p1;
assign d_o_address0 = tmp_1_reg_126;
assign d_o_d0 = tmp_4_reg_151;
assign exitcond_fu_79_p2 = (i_reg_64 == ap_const_lv6_20? 1'b1: 1'b0);
assign i_1_fu_85_p2 = (ap_const_lv6_1 + i_reg_64);
assign rem_fu_75_p1 = i_reg_64[2:0];
assign temp_fu_104_p2 = ($signed(acc_load_reg_136) + $signed(tmp_2_fu_101_p1));
assign tmp_1_fu_96_p1 = i_reg_64;
assign tmp_2_fu_101_p1 = $signed(d_i_load_reg_141);
assign tmp_4_fu_109_p1 = temp_fu_104_p2[15:0];
assign tmp_fu_91_p1 = rem_fu_75_p1;
always @ (posedge ap_clk)
begin
    tmp_1_reg_126[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end



endmodule //array_io
