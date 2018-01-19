set C_TypeInfoList {{ 
"duc" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"din_i": [[],"0"] }, {"freq": [[],"1"] }, {"dout_i": [[],{ "pointer": "2"}] }, {"dout_q": [[],{ "pointer": "2"}] }],[],""], 
"2": [ "mix_data_t", {"typedef": [[[],"3"],""]}], 
"1": [ "acc_t", {"typedef": [[[],"4"],""]}], 
"0": [ "srrc_data_t", {"typedef": [[[],"3"],""]}], 
"3": [ "int18", {"typedef": [[[], {"scalar": "int18"}],""]}], 
"4": [ "uint16", {"typedef": [[[], {"scalar": "uint16"}],""]}]
}}
set moduleName duc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {duc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ din_i int 18 regular  }
	{ freq uint 16 regular  }
	{ dout_i int 18 regular {pointer 1}  }
	{ dout_q int 18 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din_i", "interface" : "wire", "bitwidth" : 18 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "din_i","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "freq", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "freq","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dout_i", "interface" : "wire", "bitwidth" : 18 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "dout_i","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_q", "interface" : "wire", "bitwidth" : 18 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "dout_q","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ din_i sc_in sc_lv 18 signal 0 } 
	{ freq sc_in sc_lv 16 signal 1 } 
	{ dout_i sc_out sc_lv 18 signal 2 } 
	{ dout_i_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ dout_q sc_out sc_lv 18 signal 3 } 
	{ dout_q_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_i", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "din_i", "role": "default" }} , 
 	{ "name": "freq", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "freq", "role": "default" }} , 
 	{ "name": "dout_i", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "dout_i", "role": "default" }} , 
 	{ "name": "dout_i_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_i", "role": "ap_vld" }} , 
 	{ "name": "dout_q", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "dout_q", "role": "default" }} , 
 	{ "name": "dout_q_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_q", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	din_i { ap_none {  { din_i in_data 0 18 } } }
	freq { ap_none {  { freq in_data 0 16 } } }
	dout_i { ap_vld {  { dout_i out_data 1 18 }  { dout_i_ap_vld out_vld 1 1 } } }
	dout_q { ap_vld {  { dout_q out_data 1 18 }  { dout_q_ap_vld out_vld 1 1 } } }
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
