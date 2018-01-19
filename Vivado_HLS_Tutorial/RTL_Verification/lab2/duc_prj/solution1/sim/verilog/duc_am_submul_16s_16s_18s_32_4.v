
`timescale 1 ns / 1 ps

  module duc_am_submul_16s_16s_18s_32_4_DSP48_3(clk, rst, ce, a, b, c, p);
input clk;
input rst;
input ce;
input signed [16 - 1 : 0] a; 
input signed [16 - 1 : 0] b; 
input signed [18 - 1 : 0] c; 
output signed [32 - 1 : 0] p; 

reg signed [32 - 1 : 0] p_reg; 

reg signed [17 - 1 : 0] ad_reg; 
reg signed [18 - 1 : 0] c_reg; 

reg signed [32 - 1 : 0] p_reg_tmp; 

always @ (posedge clk) begin
    if (rst) begin
        ad_reg <= 0;
        c_reg <= 0;
        p_reg_tmp <= 0;
        p_reg <= 0;
    end else
    if (ce) begin
        ad_reg <= $signed ( a) - $signed (b);
        p_reg_tmp <= $signed (ad_reg) * $signed (c_reg);
        c_reg <= c;
        p_reg <= p_reg_tmp;
    end
end

assign p = p_reg;

endmodule

`timescale 1 ns / 1 ps
module duc_am_submul_16s_16s_18s_32_4(
    clk,
    reset,
    ce,
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
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



duc_am_submul_16s_16s_18s_32_4_DSP48_3 duc_am_submul_16s_16s_18s_32_4_DSP48_3_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .c( din2 ),
    .p( dout ));

endmodule

