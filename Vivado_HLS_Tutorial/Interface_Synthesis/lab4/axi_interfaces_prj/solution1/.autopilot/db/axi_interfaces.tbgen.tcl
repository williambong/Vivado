set C_TypeInfoList {{ 
"axi_interfaces" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"d_o": [[], {"array": ["0", [32]]}] }, {"d_i": [[], {"array": ["1", [32]]}] }],[],""], 
"1": [ "din_t", {"typedef": [[[], {"scalar": "short"}],""]}], 
"0": [ "dout_t", {"typedef": [[[], {"scalar": "short"}],""]}]
}}
set moduleName axi_interfaces
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {axi_interfaces}
set C_modelType { void 0 }
set C_modelArgList { 
	{ d_o_0 int 16 regular {axi_s 1 volatile  { d_o_0 data } }  }
	{ d_o_1 int 16 regular {axi_s 1 volatile  { d_o_1 data } }  }
	{ d_o_2 int 16 regular {axi_s 1 volatile  { d_o_2 data } }  }
	{ d_o_3 int 16 regular {axi_s 1 volatile  { d_o_3 data } }  }
	{ d_o_4 int 16 regular {axi_s 1 volatile  { d_o_4 data } }  }
	{ d_o_5 int 16 regular {axi_s 1 volatile  { d_o_5 data } }  }
	{ d_o_6 int 16 regular {axi_s 1 volatile  { d_o_6 data } }  }
	{ d_o_7 int 16 regular {axi_s 1 volatile  { d_o_7 data } }  }
	{ d_i_0 int 16 regular {axi_s 0 volatile  { d_i_0 data } }  }
	{ d_i_1 int 16 regular {axi_s 0 volatile  { d_i_1 data } }  }
	{ d_i_2 int 16 regular {axi_s 0 volatile  { d_i_2 data } }  }
	{ d_i_3 int 16 regular {axi_s 0 volatile  { d_i_3 data } }  }
	{ d_i_4 int 16 regular {axi_s 0 volatile  { d_i_4 data } }  }
	{ d_i_5 int 16 regular {axi_s 0 volatile  { d_i_5 data } }  }
	{ d_i_6 int 16 regular {axi_s 0 volatile  { d_i_6 data } }  }
	{ d_i_7 int 16 regular {axi_s 0 volatile  { d_i_7 data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o_0", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 24,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_1", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 25,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_2", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 26,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_3", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 27,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_4", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 28,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_5", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 29,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_6", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 30,"step" : 8}]}]}]} , 
 	{ "Name" : "d_o_7", "interface" : "axis", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 31,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_0", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 24,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_1", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 25,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_2", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 26,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_3", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 27,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_4", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 28,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_5", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 29,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_6", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 30,"step" : 8}]}]}]} , 
 	{ "Name" : "d_i_7", "interface" : "axis", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 31,"step" : 8}]}]}]} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_o_0_TDATA sc_out sc_lv 16 signal 0 } 
	{ d_o_0_TVALID sc_out sc_logic 1 outvld 0 } 
	{ d_o_0_TREADY sc_in sc_logic 1 outacc 0 } 
	{ d_o_1_TDATA sc_out sc_lv 16 signal 1 } 
	{ d_o_1_TVALID sc_out sc_logic 1 outvld 1 } 
	{ d_o_1_TREADY sc_in sc_logic 1 outacc 1 } 
	{ d_o_2_TDATA sc_out sc_lv 16 signal 2 } 
	{ d_o_2_TVALID sc_out sc_logic 1 outvld 2 } 
	{ d_o_2_TREADY sc_in sc_logic 1 outacc 2 } 
	{ d_o_3_TDATA sc_out sc_lv 16 signal 3 } 
	{ d_o_3_TVALID sc_out sc_logic 1 outvld 3 } 
	{ d_o_3_TREADY sc_in sc_logic 1 outacc 3 } 
	{ d_o_4_TDATA sc_out sc_lv 16 signal 4 } 
	{ d_o_4_TVALID sc_out sc_logic 1 outvld 4 } 
	{ d_o_4_TREADY sc_in sc_logic 1 outacc 4 } 
	{ d_o_5_TDATA sc_out sc_lv 16 signal 5 } 
	{ d_o_5_TVALID sc_out sc_logic 1 outvld 5 } 
	{ d_o_5_TREADY sc_in sc_logic 1 outacc 5 } 
	{ d_o_6_TDATA sc_out sc_lv 16 signal 6 } 
	{ d_o_6_TVALID sc_out sc_logic 1 outvld 6 } 
	{ d_o_6_TREADY sc_in sc_logic 1 outacc 6 } 
	{ d_o_7_TDATA sc_out sc_lv 16 signal 7 } 
	{ d_o_7_TVALID sc_out sc_logic 1 outvld 7 } 
	{ d_o_7_TREADY sc_in sc_logic 1 outacc 7 } 
	{ d_i_0_TDATA sc_in sc_lv 16 signal 8 } 
	{ d_i_0_TVALID sc_in sc_logic 1 invld 8 } 
	{ d_i_0_TREADY sc_out sc_logic 1 inacc 8 } 
	{ d_i_1_TDATA sc_in sc_lv 16 signal 9 } 
	{ d_i_1_TVALID sc_in sc_logic 1 invld 9 } 
	{ d_i_1_TREADY sc_out sc_logic 1 inacc 9 } 
	{ d_i_2_TDATA sc_in sc_lv 16 signal 10 } 
	{ d_i_2_TVALID sc_in sc_logic 1 invld 10 } 
	{ d_i_2_TREADY sc_out sc_logic 1 inacc 10 } 
	{ d_i_3_TDATA sc_in sc_lv 16 signal 11 } 
	{ d_i_3_TVALID sc_in sc_logic 1 invld 11 } 
	{ d_i_3_TREADY sc_out sc_logic 1 inacc 11 } 
	{ d_i_4_TDATA sc_in sc_lv 16 signal 12 } 
	{ d_i_4_TVALID sc_in sc_logic 1 invld 12 } 
	{ d_i_4_TREADY sc_out sc_logic 1 inacc 12 } 
	{ d_i_5_TDATA sc_in sc_lv 16 signal 13 } 
	{ d_i_5_TVALID sc_in sc_logic 1 invld 13 } 
	{ d_i_5_TREADY sc_out sc_logic 1 inacc 13 } 
	{ d_i_6_TDATA sc_in sc_lv 16 signal 14 } 
	{ d_i_6_TVALID sc_in sc_logic 1 invld 14 } 
	{ d_i_6_TREADY sc_out sc_logic 1 inacc 14 } 
	{ d_i_7_TDATA sc_in sc_lv 16 signal 15 } 
	{ d_i_7_TVALID sc_in sc_logic 1 invld 15 } 
	{ d_i_7_TREADY sc_out sc_logic 1 inacc 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_o_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_0", "role": "TDATA" }} , 
 	{ "name": "d_o_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_0", "role": "TVALID" }} , 
 	{ "name": "d_o_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_0", "role": "TREADY" }} , 
 	{ "name": "d_o_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_1", "role": "TDATA" }} , 
 	{ "name": "d_o_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_1", "role": "TVALID" }} , 
 	{ "name": "d_o_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_1", "role": "TREADY" }} , 
 	{ "name": "d_o_2_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_2", "role": "TDATA" }} , 
 	{ "name": "d_o_2_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_2", "role": "TVALID" }} , 
 	{ "name": "d_o_2_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_2", "role": "TREADY" }} , 
 	{ "name": "d_o_3_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_3", "role": "TDATA" }} , 
 	{ "name": "d_o_3_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_3", "role": "TVALID" }} , 
 	{ "name": "d_o_3_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_3", "role": "TREADY" }} , 
 	{ "name": "d_o_4_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_4", "role": "TDATA" }} , 
 	{ "name": "d_o_4_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_4", "role": "TVALID" }} , 
 	{ "name": "d_o_4_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_4", "role": "TREADY" }} , 
 	{ "name": "d_o_5_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_5", "role": "TDATA" }} , 
 	{ "name": "d_o_5_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_5", "role": "TVALID" }} , 
 	{ "name": "d_o_5_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_5", "role": "TREADY" }} , 
 	{ "name": "d_o_6_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_6", "role": "TDATA" }} , 
 	{ "name": "d_o_6_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_6", "role": "TVALID" }} , 
 	{ "name": "d_o_6_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_6", "role": "TREADY" }} , 
 	{ "name": "d_o_7_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_7", "role": "TDATA" }} , 
 	{ "name": "d_o_7_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_7", "role": "TVALID" }} , 
 	{ "name": "d_o_7_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_7", "role": "TREADY" }} , 
 	{ "name": "d_i_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "TDATA" }} , 
 	{ "name": "d_i_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_0", "role": "TVALID" }} , 
 	{ "name": "d_i_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_0", "role": "TREADY" }} , 
 	{ "name": "d_i_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "TDATA" }} , 
 	{ "name": "d_i_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_1", "role": "TVALID" }} , 
 	{ "name": "d_i_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_1", "role": "TREADY" }} , 
 	{ "name": "d_i_2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_2", "role": "TDATA" }} , 
 	{ "name": "d_i_2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_2", "role": "TVALID" }} , 
 	{ "name": "d_i_2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_2", "role": "TREADY" }} , 
 	{ "name": "d_i_3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_3", "role": "TDATA" }} , 
 	{ "name": "d_i_3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_3", "role": "TVALID" }} , 
 	{ "name": "d_i_3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_3", "role": "TREADY" }} , 
 	{ "name": "d_i_4_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_4", "role": "TDATA" }} , 
 	{ "name": "d_i_4_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_4", "role": "TVALID" }} , 
 	{ "name": "d_i_4_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_4", "role": "TREADY" }} , 
 	{ "name": "d_i_5_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_5", "role": "TDATA" }} , 
 	{ "name": "d_i_5_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_5", "role": "TVALID" }} , 
 	{ "name": "d_i_5_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_5", "role": "TREADY" }} , 
 	{ "name": "d_i_6_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_6", "role": "TDATA" }} , 
 	{ "name": "d_i_6_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_6", "role": "TVALID" }} , 
 	{ "name": "d_i_6_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_6", "role": "TREADY" }} , 
 	{ "name": "d_i_7_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_7", "role": "TDATA" }} , 
 	{ "name": "d_i_7_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_7", "role": "TVALID" }} , 
 	{ "name": "d_i_7_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_7", "role": "TREADY" }}  ]}
set Spec2ImplPortList { 
	d_o_0 { axis {  { d_o_0_TDATA out_data 1 16 }  { d_o_0_TVALID out_vld 1 1 }  { d_o_0_TREADY out_acc 0 1 } } }
	d_o_1 { axis {  { d_o_1_TDATA out_data 1 16 }  { d_o_1_TVALID out_vld 1 1 }  { d_o_1_TREADY out_acc 0 1 } } }
	d_o_2 { axis {  { d_o_2_TDATA out_data 1 16 }  { d_o_2_TVALID out_vld 1 1 }  { d_o_2_TREADY out_acc 0 1 } } }
	d_o_3 { axis {  { d_o_3_TDATA out_data 1 16 }  { d_o_3_TVALID out_vld 1 1 }  { d_o_3_TREADY out_acc 0 1 } } }
	d_o_4 { axis {  { d_o_4_TDATA out_data 1 16 }  { d_o_4_TVALID out_vld 1 1 }  { d_o_4_TREADY out_acc 0 1 } } }
	d_o_5 { axis {  { d_o_5_TDATA out_data 1 16 }  { d_o_5_TVALID out_vld 1 1 }  { d_o_5_TREADY out_acc 0 1 } } }
	d_o_6 { axis {  { d_o_6_TDATA out_data 1 16 }  { d_o_6_TVALID out_vld 1 1 }  { d_o_6_TREADY out_acc 0 1 } } }
	d_o_7 { axis {  { d_o_7_TDATA out_data 1 16 }  { d_o_7_TVALID out_vld 1 1 }  { d_o_7_TREADY out_acc 0 1 } } }
	d_i_0 { axis {  { d_i_0_TDATA in_data 0 16 }  { d_i_0_TVALID in_vld 0 1 }  { d_i_0_TREADY in_acc 1 1 } } }
	d_i_1 { axis {  { d_i_1_TDATA in_data 0 16 }  { d_i_1_TVALID in_vld 0 1 }  { d_i_1_TREADY in_acc 1 1 } } }
	d_i_2 { axis {  { d_i_2_TDATA in_data 0 16 }  { d_i_2_TVALID in_vld 0 1 }  { d_i_2_TREADY in_acc 1 1 } } }
	d_i_3 { axis {  { d_i_3_TDATA in_data 0 16 }  { d_i_3_TVALID in_vld 0 1 }  { d_i_3_TREADY in_acc 1 1 } } }
	d_i_4 { axis {  { d_i_4_TDATA in_data 0 16 }  { d_i_4_TVALID in_vld 0 1 }  { d_i_4_TREADY in_acc 1 1 } } }
	d_i_5 { axis {  { d_i_5_TDATA in_data 0 16 }  { d_i_5_TVALID in_vld 0 1 }  { d_i_5_TREADY in_acc 1 1 } } }
	d_i_6 { axis {  { d_i_6_TDATA in_data 0 16 }  { d_i_6_TVALID in_vld 0 1 }  { d_i_6_TREADY in_acc 1 1 } } }
	d_i_7 { axis {  { d_i_7_TDATA in_data 0 16 }  { d_i_7_TVALID in_vld 0 1 }  { d_i_7_TREADY in_acc 1 1 } } }
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
