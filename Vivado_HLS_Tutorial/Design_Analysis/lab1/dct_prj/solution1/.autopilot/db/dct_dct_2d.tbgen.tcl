set moduleName dct_dct_2d
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct_dct_2d}
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_block int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ out_block int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_block", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "out_block", "interface" : "memory", "bitwidth" : 16 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_block_address0 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_block_q0 sc_in sc_lv 16 signal 0 } 
	{ out_block_address0 sc_out sc_lv 6 signal 1 } 
	{ out_block_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_block_we0 sc_out sc_logic 1 signal 1 } 
	{ out_block_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_block", "role": "address0" }} , 
 	{ "name": "in_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_block", "role": "ce0" }} , 
 	{ "name": "in_block_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_block", "role": "q0" }} , 
 	{ "name": "out_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_block", "role": "address0" }} , 
 	{ "name": "out_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_block", "role": "ce0" }} , 
 	{ "name": "out_block_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_block", "role": "we0" }} , 
 	{ "name": "out_block_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_block", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	in_block { ap_memory {  { in_block_address0 mem_address 1 6 }  { in_block_ce0 mem_ce 1 1 }  { in_block_q0 mem_dout 0 16 } } }
	out_block { ap_memory {  { out_block_address0 mem_address 1 6 }  { out_block_ce0 mem_ce 1 1 }  { out_block_we0 mem_we 1 1 }  { out_block_d0 mem_din 1 16 } } }
}
