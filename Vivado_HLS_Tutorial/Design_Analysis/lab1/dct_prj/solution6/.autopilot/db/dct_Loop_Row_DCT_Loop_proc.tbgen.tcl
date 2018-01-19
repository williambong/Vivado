set moduleName dct_Loop_Row_DCT_Loop_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct_Loop_Row_DCT_Loop_proc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ buf_2d_in_0 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_1 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_2 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_3 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_4 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_5 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_6 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ buf_2d_in_7 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ row_outbuf_i int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf_2d_in_0", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_1", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_2", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_3", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_4", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_5", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_6", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "buf_2d_in_7", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "row_outbuf_i", "interface" : "memory", "bitwidth" : 16 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_2d_in_0_address0 sc_out sc_lv 3 signal 0 } 
	{ buf_2d_in_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf_2d_in_0_q0 sc_in sc_lv 16 signal 0 } 
	{ buf_2d_in_1_address0 sc_out sc_lv 3 signal 1 } 
	{ buf_2d_in_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_2d_in_1_q0 sc_in sc_lv 16 signal 1 } 
	{ buf_2d_in_2_address0 sc_out sc_lv 3 signal 2 } 
	{ buf_2d_in_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_2d_in_2_q0 sc_in sc_lv 16 signal 2 } 
	{ buf_2d_in_3_address0 sc_out sc_lv 3 signal 3 } 
	{ buf_2d_in_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_2d_in_3_q0 sc_in sc_lv 16 signal 3 } 
	{ buf_2d_in_4_address0 sc_out sc_lv 3 signal 4 } 
	{ buf_2d_in_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_2d_in_4_q0 sc_in sc_lv 16 signal 4 } 
	{ buf_2d_in_5_address0 sc_out sc_lv 3 signal 5 } 
	{ buf_2d_in_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_2d_in_5_q0 sc_in sc_lv 16 signal 5 } 
	{ buf_2d_in_6_address0 sc_out sc_lv 3 signal 6 } 
	{ buf_2d_in_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_2d_in_6_q0 sc_in sc_lv 16 signal 6 } 
	{ buf_2d_in_7_address0 sc_out sc_lv 3 signal 7 } 
	{ buf_2d_in_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_2d_in_7_q0 sc_in sc_lv 16 signal 7 } 
	{ row_outbuf_i_address0 sc_out sc_lv 6 signal 8 } 
	{ row_outbuf_i_ce0 sc_out sc_logic 1 signal 8 } 
	{ row_outbuf_i_we0 sc_out sc_logic 1 signal 8 } 
	{ row_outbuf_i_d0 sc_out sc_lv 16 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_2d_in_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_0", "role": "address0" }} , 
 	{ "name": "buf_2d_in_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_0", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_0", "role": "q0" }} , 
 	{ "name": "buf_2d_in_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_1", "role": "address0" }} , 
 	{ "name": "buf_2d_in_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_1", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_1", "role": "q0" }} , 
 	{ "name": "buf_2d_in_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_2", "role": "address0" }} , 
 	{ "name": "buf_2d_in_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_2", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_2", "role": "q0" }} , 
 	{ "name": "buf_2d_in_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_3", "role": "address0" }} , 
 	{ "name": "buf_2d_in_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_3", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_3", "role": "q0" }} , 
 	{ "name": "buf_2d_in_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_4", "role": "address0" }} , 
 	{ "name": "buf_2d_in_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_4", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_4", "role": "q0" }} , 
 	{ "name": "buf_2d_in_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_5", "role": "address0" }} , 
 	{ "name": "buf_2d_in_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_5", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_5", "role": "q0" }} , 
 	{ "name": "buf_2d_in_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_6", "role": "address0" }} , 
 	{ "name": "buf_2d_in_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_6", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_6", "role": "q0" }} , 
 	{ "name": "buf_2d_in_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_2d_in_7", "role": "address0" }} , 
 	{ "name": "buf_2d_in_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_in_7", "role": "ce0" }} , 
 	{ "name": "buf_2d_in_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_in_7", "role": "q0" }} , 
 	{ "name": "row_outbuf_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "address0" }} , 
 	{ "name": "row_outbuf_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "ce0" }} , 
 	{ "name": "row_outbuf_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "we0" }} , 
 	{ "name": "row_outbuf_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	buf_2d_in_0 { ap_memory {  { buf_2d_in_0_address0 mem_address 1 3 }  { buf_2d_in_0_ce0 mem_ce 1 1 }  { buf_2d_in_0_q0 mem_dout 0 16 } } }
	buf_2d_in_1 { ap_memory {  { buf_2d_in_1_address0 mem_address 1 3 }  { buf_2d_in_1_ce0 mem_ce 1 1 }  { buf_2d_in_1_q0 mem_dout 0 16 } } }
	buf_2d_in_2 { ap_memory {  { buf_2d_in_2_address0 mem_address 1 3 }  { buf_2d_in_2_ce0 mem_ce 1 1 }  { buf_2d_in_2_q0 mem_dout 0 16 } } }
	buf_2d_in_3 { ap_memory {  { buf_2d_in_3_address0 mem_address 1 3 }  { buf_2d_in_3_ce0 mem_ce 1 1 }  { buf_2d_in_3_q0 mem_dout 0 16 } } }
	buf_2d_in_4 { ap_memory {  { buf_2d_in_4_address0 mem_address 1 3 }  { buf_2d_in_4_ce0 mem_ce 1 1 }  { buf_2d_in_4_q0 mem_dout 0 16 } } }
	buf_2d_in_5 { ap_memory {  { buf_2d_in_5_address0 mem_address 1 3 }  { buf_2d_in_5_ce0 mem_ce 1 1 }  { buf_2d_in_5_q0 mem_dout 0 16 } } }
	buf_2d_in_6 { ap_memory {  { buf_2d_in_6_address0 mem_address 1 3 }  { buf_2d_in_6_ce0 mem_ce 1 1 }  { buf_2d_in_6_q0 mem_dout 0 16 } } }
	buf_2d_in_7 { ap_memory {  { buf_2d_in_7_address0 mem_address 1 3 }  { buf_2d_in_7_ce0 mem_ce 1 1 }  { buf_2d_in_7_q0 mem_dout 0 16 } } }
	row_outbuf_i { ap_memory {  { row_outbuf_i_address0 mem_address 1 6 }  { row_outbuf_i_ce0 mem_ce 1 1 }  { row_outbuf_i_we0 mem_we 1 1 }  { row_outbuf_i_d0 mem_din 1 16 } } }
}
