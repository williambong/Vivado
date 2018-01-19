############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_unroll "array_io/For_Loop"
set_directive_interface -mode ap_fifo "array_io" d_o
set_directive_array_partition -type complete -dim 1 "array_io" d_o
set_directive_array_partition -type complete -dim 1 "array_io" d_i
