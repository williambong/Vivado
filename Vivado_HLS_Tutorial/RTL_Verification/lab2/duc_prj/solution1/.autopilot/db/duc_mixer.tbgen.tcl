set moduleName duc_mixer
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {duc_mixer}
set C_modelType { void 0 }
set C_modelArgList { 
	{ freq uint 16 regular  }
	{ Din int 18 regular  }
	{ Dout_I int 18 regular {pointer 1}  }
	{ Dout_Q int 18 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "freq", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" } , 
 	{ "Name" : "Din", "interface" : "wire", "bitwidth" : 18 ,"direction" : "READONLY" } , 
 	{ "Name" : "Dout_I", "interface" : "wire", "bitwidth" : 18 ,"direction" : "WRITEONLY" } , 
 	{ "Name" : "Dout_Q", "interface" : "wire", "bitwidth" : 18 ,"direction" : "WRITEONLY" } ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ freq sc_in sc_lv 16 signal 0 } 
	{ Din sc_in sc_lv 18 signal 1 } 
	{ Dout_I sc_out sc_lv 18 signal 2 } 
	{ Dout_I_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ Dout_Q sc_out sc_lv 18 signal 3 } 
	{ Dout_Q_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "freq", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "freq", "role": "default" }} , 
 	{ "name": "Din", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "Din", "role": "default" }} , 
 	{ "name": "Dout_I", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "Dout_I", "role": "default" }} , 
 	{ "name": "Dout_I_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Dout_I", "role": "ap_vld" }} , 
 	{ "name": "Dout_Q", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "Dout_Q", "role": "default" }} , 
 	{ "name": "Dout_Q_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Dout_Q", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	freq { ap_none {  { freq in_data 0 16 } } }
	Din { ap_none {  { Din in_data 0 18 } } }
	Dout_I { ap_vld {  { Dout_I out_data 1 18 }  { Dout_I_ap_vld out_vld 1 1 } } }
	Dout_Q { ap_vld {  { Dout_Q out_data 1 18 }  { Dout_Q_ap_vld out_vld 1 1 } } }
}
