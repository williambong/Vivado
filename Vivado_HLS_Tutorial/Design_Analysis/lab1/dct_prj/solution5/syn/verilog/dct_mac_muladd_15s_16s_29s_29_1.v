// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

  module dct_mac_muladd_15s_16s_29s_29_1_DSP48_0(a, b, c, p);
input signed [15 - 1 : 0] a; 
input signed [16 - 1 : 0] b; 
input signed [29 - 1 : 0] c; 
output signed [29 - 1 : 0] p; 

assign p =  $signed (a) * $signed (b) + $signed (c); 
endmodule

`timescale 1 ns / 1 ps
module dct_mac_muladd_15s_16s_29s_29_1(
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



dct_mac_muladd_15s_16s_29s_29_1_DSP48_0 dct_mac_muladd_15s_16s_29s_29_1_DSP48_0_U(
    .a( din0 ),
    .b( din1 ),
    .c( din2 ),
    .p( dout ));

endmodule

