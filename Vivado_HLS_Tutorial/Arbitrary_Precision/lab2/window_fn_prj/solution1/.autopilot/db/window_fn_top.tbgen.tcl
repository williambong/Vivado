set C_TypeInfoList {{ 
"window_fn_top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"outdata": [[], {"array": ["0", [32]]}] }, {"indata": [[], {"array": ["1", [32]]}] }],[],""], 
"1": [ "win_fn_in_t", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_fixed<8, 8, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 8}}],[[], {"scalar": { "int": 8}}],[[], {"scalar": { "3": 5}}],[[], {"scalar": { "4": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"3": [ "ap_q_mode", {"enum": [[],[],[],""]}], 
"0": [ "win_fn_out_t", {"typedef": [[[],"5"],""]}], 
"4": [ "ap_o_mode", {"enum": [[],[],[],""]}], 
"5": [ "ap_fixed<24, 8, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 24}}],[[], {"scalar": { "int": 8}}],[[], {"scalar": { "3": 5}}],[[], {"scalar": { "4": 3}}],[[], {"scalar": { "int": 0}}]],""]}}]
}}
set moduleName window_fn_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {window_fn_top}
set C_modelType { void 0 }
set C_modelArgList { 
	{ outdata_V int 24 regular {array 32 { 0 3 } 0 1 }  }
	{ indata_V int 8 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outdata_V", "interface" : "memory", "bitwidth" : 24 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "outdata.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "indata_V", "interface" : "memory", "bitwidth" : 8 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "indata.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outdata_V_address0 sc_out sc_lv 5 signal 0 } 
	{ outdata_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ outdata_V_we0 sc_out sc_logic 1 signal 0 } 
	{ outdata_V_d0 sc_out sc_lv 24 signal 0 } 
	{ indata_V_address0 sc_out sc_lv 5 signal 1 } 
	{ indata_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ indata_V_q0 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outdata_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outdata_V", "role": "address0" }} , 
 	{ "name": "outdata_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outdata_V", "role": "ce0" }} , 
 	{ "name": "outdata_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outdata_V", "role": "we0" }} , 
 	{ "name": "outdata_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "outdata_V", "role": "d0" }} , 
 	{ "name": "indata_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "indata_V", "role": "address0" }} , 
 	{ "name": "indata_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "indata_V", "role": "ce0" }} , 
 	{ "name": "indata_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "indata_V", "role": "q0" }}  ]}
set Spec2ImplPortList { 
	outdata_V { ap_memory {  { outdata_V_address0 mem_address 1 5 }  { outdata_V_ce0 mem_ce 1 1 }  { outdata_V_we0 mem_we 1 1 }  { outdata_V_d0 mem_din 1 24 } } }
	indata_V { ap_memory {  { indata_V_address0 mem_address 1 5 }  { indata_V_ce0 mem_ce 1 1 }  { indata_V_q0 mem_dout 0 8 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
