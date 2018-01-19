set moduleName dct_dct_1d
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct_dct_1d}
set C_modelType { void 0 }
set C_modelArgList { 
	{ src int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src1 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src2 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src3 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src4 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src5 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src6 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ src7 int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ tmp_1 int 4 regular  }
	{ dst int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ tmp_11 int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src1", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src2", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src3", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src4", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src5", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src6", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "src7", "interface" : "memory", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 4 ,"direction" : "READONLY" } , 
 	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 16 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "tmp_11", "interface" : "wire", "bitwidth" : 4 ,"direction" : "READONLY" } ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_address0 sc_out sc_lv 3 signal 0 } 
	{ src_ce0 sc_out sc_logic 1 signal 0 } 
	{ src_q0 sc_in sc_lv 16 signal 0 } 
	{ src1_address0 sc_out sc_lv 3 signal 1 } 
	{ src1_ce0 sc_out sc_logic 1 signal 1 } 
	{ src1_q0 sc_in sc_lv 16 signal 1 } 
	{ src2_address0 sc_out sc_lv 3 signal 2 } 
	{ src2_ce0 sc_out sc_logic 1 signal 2 } 
	{ src2_q0 sc_in sc_lv 16 signal 2 } 
	{ src3_address0 sc_out sc_lv 3 signal 3 } 
	{ src3_ce0 sc_out sc_logic 1 signal 3 } 
	{ src3_q0 sc_in sc_lv 16 signal 3 } 
	{ src4_address0 sc_out sc_lv 3 signal 4 } 
	{ src4_ce0 sc_out sc_logic 1 signal 4 } 
	{ src4_q0 sc_in sc_lv 16 signal 4 } 
	{ src5_address0 sc_out sc_lv 3 signal 5 } 
	{ src5_ce0 sc_out sc_logic 1 signal 5 } 
	{ src5_q0 sc_in sc_lv 16 signal 5 } 
	{ src6_address0 sc_out sc_lv 3 signal 6 } 
	{ src6_ce0 sc_out sc_logic 1 signal 6 } 
	{ src6_q0 sc_in sc_lv 16 signal 6 } 
	{ src7_address0 sc_out sc_lv 3 signal 7 } 
	{ src7_ce0 sc_out sc_logic 1 signal 7 } 
	{ src7_q0 sc_in sc_lv 16 signal 7 } 
	{ tmp_1 sc_in sc_lv 4 signal 8 } 
	{ dst_address0 sc_out sc_lv 6 signal 9 } 
	{ dst_ce0 sc_out sc_logic 1 signal 9 } 
	{ dst_we0 sc_out sc_logic 1 signal 9 } 
	{ dst_d0 sc_out sc_lv 16 signal 9 } 
	{ tmp_11 sc_in sc_lv 4 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src", "role": "address0" }} , 
 	{ "name": "src_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce0" }} , 
 	{ "name": "src_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src", "role": "q0" }} , 
 	{ "name": "src1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src1", "role": "address0" }} , 
 	{ "name": "src1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1", "role": "ce0" }} , 
 	{ "name": "src1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src1", "role": "q0" }} , 
 	{ "name": "src2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src2", "role": "address0" }} , 
 	{ "name": "src2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src2", "role": "ce0" }} , 
 	{ "name": "src2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src2", "role": "q0" }} , 
 	{ "name": "src3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src3", "role": "address0" }} , 
 	{ "name": "src3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src3", "role": "ce0" }} , 
 	{ "name": "src3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src3", "role": "q0" }} , 
 	{ "name": "src4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src4", "role": "address0" }} , 
 	{ "name": "src4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src4", "role": "ce0" }} , 
 	{ "name": "src4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src4", "role": "q0" }} , 
 	{ "name": "src5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src5", "role": "address0" }} , 
 	{ "name": "src5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src5", "role": "ce0" }} , 
 	{ "name": "src5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src5", "role": "q0" }} , 
 	{ "name": "src6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src6", "role": "address0" }} , 
 	{ "name": "src6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src6", "role": "ce0" }} , 
 	{ "name": "src6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src6", "role": "q0" }} , 
 	{ "name": "src7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src7", "role": "address0" }} , 
 	{ "name": "src7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src7", "role": "ce0" }} , 
 	{ "name": "src7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "src7", "role": "q0" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dst", "role": "d0" }} , 
 	{ "name": "tmp_11", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp_11", "role": "default" }}  ]}
set Spec2ImplPortList { 
	src { ap_memory {  { src_address0 mem_address 1 3 }  { src_ce0 mem_ce 1 1 }  { src_q0 mem_dout 0 16 } } }
	src1 { ap_memory {  { src1_address0 mem_address 1 3 }  { src1_ce0 mem_ce 1 1 }  { src1_q0 mem_dout 0 16 } } }
	src2 { ap_memory {  { src2_address0 mem_address 1 3 }  { src2_ce0 mem_ce 1 1 }  { src2_q0 mem_dout 0 16 } } }
	src3 { ap_memory {  { src3_address0 mem_address 1 3 }  { src3_ce0 mem_ce 1 1 }  { src3_q0 mem_dout 0 16 } } }
	src4 { ap_memory {  { src4_address0 mem_address 1 3 }  { src4_ce0 mem_ce 1 1 }  { src4_q0 mem_dout 0 16 } } }
	src5 { ap_memory {  { src5_address0 mem_address 1 3 }  { src5_ce0 mem_ce 1 1 }  { src5_q0 mem_dout 0 16 } } }
	src6 { ap_memory {  { src6_address0 mem_address 1 3 }  { src6_ce0 mem_ce 1 1 }  { src6_q0 mem_dout 0 16 } } }
	src7 { ap_memory {  { src7_address0 mem_address 1 3 }  { src7_ce0 mem_ce 1 1 }  { src7_q0 mem_dout 0 16 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 4 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 6 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 16 } } }
	tmp_11 { ap_none {  { tmp_11 in_data 0 4 } } }
}
