set C_TypeInfoList {{ 
"array_io" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"d_o": [[], {"array": ["0", [32]]}] }, {"d_i": [[], {"array": ["1", [32]]}] }],[],""], 
"0": [ "dout_t", {"typedef": [[[], {"scalar": "short"}],""]}], 
"1": [ "din_t", {"typedef": [[[], {"scalar": "short"}],""]}]
}}
set moduleName array_io
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {array_io}
set C_modelType { void 0 }
set C_modelArgList { 
	{ d_o_0 int 16 regular {fifo 1}  }
	{ d_o_1 int 16 regular {fifo 1}  }
	{ d_o_2 int 16 regular {fifo 1}  }
	{ d_o_3 int 16 regular {fifo 1}  }
	{ d_o_4 int 16 regular {fifo 1}  }
	{ d_o_5 int 16 regular {fifo 1}  }
	{ d_o_6 int 16 regular {fifo 1}  }
	{ d_o_7 int 16 regular {fifo 1}  }
	{ d_o_8 int 16 regular {fifo 1}  }
	{ d_o_9 int 16 regular {fifo 1}  }
	{ d_o_10 int 16 regular {fifo 1}  }
	{ d_o_11 int 16 regular {fifo 1}  }
	{ d_o_12 int 16 regular {fifo 1}  }
	{ d_o_13 int 16 regular {fifo 1}  }
	{ d_o_14 int 16 regular {fifo 1}  }
	{ d_o_15 int 16 regular {fifo 1}  }
	{ d_o_16 int 16 regular {fifo 1}  }
	{ d_o_17 int 16 regular {fifo 1}  }
	{ d_o_18 int 16 regular {fifo 1}  }
	{ d_o_19 int 16 regular {fifo 1}  }
	{ d_o_20 int 16 regular {fifo 1}  }
	{ d_o_21 int 16 regular {fifo 1}  }
	{ d_o_22 int 16 regular {fifo 1}  }
	{ d_o_23 int 16 regular {fifo 1}  }
	{ d_o_24 int 16 regular {fifo 1}  }
	{ d_o_25 int 16 regular {fifo 1}  }
	{ d_o_26 int 16 regular {fifo 1}  }
	{ d_o_27 int 16 regular {fifo 1}  }
	{ d_o_28 int 16 regular {fifo 1}  }
	{ d_o_29 int 16 regular {fifo 1}  }
	{ d_o_30 int 16 regular {fifo 1}  }
	{ d_o_31 int 16 regular {fifo 1}  }
	{ d_i_0 int 16 regular {pointer 0}  }
	{ d_i_1 int 16 regular {pointer 0}  }
	{ d_i_2 int 16 regular {pointer 0}  }
	{ d_i_3 int 16 regular {pointer 0}  }
	{ d_i_4 int 16 regular {pointer 0}  }
	{ d_i_5 int 16 regular {pointer 0}  }
	{ d_i_6 int 16 regular {pointer 0}  }
	{ d_i_7 int 16 regular {pointer 0}  }
	{ d_i_8 int 16 regular {pointer 0}  }
	{ d_i_9 int 16 regular {pointer 0}  }
	{ d_i_10 int 16 regular {pointer 0}  }
	{ d_i_11 int 16 regular {pointer 0}  }
	{ d_i_12 int 16 regular {pointer 0}  }
	{ d_i_13 int 16 regular {pointer 0}  }
	{ d_i_14 int 16 regular {pointer 0}  }
	{ d_i_15 int 16 regular {pointer 0}  }
	{ d_i_16 int 16 regular {pointer 0}  }
	{ d_i_17 int 16 regular {pointer 0}  }
	{ d_i_18 int 16 regular {pointer 0}  }
	{ d_i_19 int 16 regular {pointer 0}  }
	{ d_i_20 int 16 regular {pointer 0}  }
	{ d_i_21 int 16 regular {pointer 0}  }
	{ d_i_22 int 16 regular {pointer 0}  }
	{ d_i_23 int 16 regular {pointer 0}  }
	{ d_i_24 int 16 regular {pointer 0}  }
	{ d_i_25 int 16 regular {pointer 0}  }
	{ d_i_26 int 16 regular {pointer 0}  }
	{ d_i_27 int 16 regular {pointer 0}  }
	{ d_i_28 int 16 regular {pointer 0}  }
	{ d_i_29 int 16 regular {pointer 0}  }
	{ d_i_30 int 16 regular {pointer 0}  }
	{ d_i_31 int 16 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o_0", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_1", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_2", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_3", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_4", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_5", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_6", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_7", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_8", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_9", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_10", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_11", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_12", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_13", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_14", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_15", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_16", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_17", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_18", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_19", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_20", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_21", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_22", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_23", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_24", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_25", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_26", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_27", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_28", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_29", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_30", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]}]} , 
 	{ "Name" : "d_o_31", "interface" : "fifo", "bitwidth" : 16 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_o","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 31,"up" : 31,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_0", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_1", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_2", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_3", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_4", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_5", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_6", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_7", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_8", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_9", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_10", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_11", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_12", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_13", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_14", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_15", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_16", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_17", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_18", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_19", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_20", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_21", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_22", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_23", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_24", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_25", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_26", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_27", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_28", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_29", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_30", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]}]} , 
 	{ "Name" : "d_i_31", "interface" : "wire", "bitwidth" : 16 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "d_i","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 31,"up" : 31,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 134
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_o_0_din sc_out sc_lv 16 signal 0 } 
	{ d_o_0_full_n sc_in sc_logic 1 signal 0 } 
	{ d_o_0_write sc_out sc_logic 1 signal 0 } 
	{ d_o_1_din sc_out sc_lv 16 signal 1 } 
	{ d_o_1_full_n sc_in sc_logic 1 signal 1 } 
	{ d_o_1_write sc_out sc_logic 1 signal 1 } 
	{ d_o_2_din sc_out sc_lv 16 signal 2 } 
	{ d_o_2_full_n sc_in sc_logic 1 signal 2 } 
	{ d_o_2_write sc_out sc_logic 1 signal 2 } 
	{ d_o_3_din sc_out sc_lv 16 signal 3 } 
	{ d_o_3_full_n sc_in sc_logic 1 signal 3 } 
	{ d_o_3_write sc_out sc_logic 1 signal 3 } 
	{ d_o_4_din sc_out sc_lv 16 signal 4 } 
	{ d_o_4_full_n sc_in sc_logic 1 signal 4 } 
	{ d_o_4_write sc_out sc_logic 1 signal 4 } 
	{ d_o_5_din sc_out sc_lv 16 signal 5 } 
	{ d_o_5_full_n sc_in sc_logic 1 signal 5 } 
	{ d_o_5_write sc_out sc_logic 1 signal 5 } 
	{ d_o_6_din sc_out sc_lv 16 signal 6 } 
	{ d_o_6_full_n sc_in sc_logic 1 signal 6 } 
	{ d_o_6_write sc_out sc_logic 1 signal 6 } 
	{ d_o_7_din sc_out sc_lv 16 signal 7 } 
	{ d_o_7_full_n sc_in sc_logic 1 signal 7 } 
	{ d_o_7_write sc_out sc_logic 1 signal 7 } 
	{ d_o_8_din sc_out sc_lv 16 signal 8 } 
	{ d_o_8_full_n sc_in sc_logic 1 signal 8 } 
	{ d_o_8_write sc_out sc_logic 1 signal 8 } 
	{ d_o_9_din sc_out sc_lv 16 signal 9 } 
	{ d_o_9_full_n sc_in sc_logic 1 signal 9 } 
	{ d_o_9_write sc_out sc_logic 1 signal 9 } 
	{ d_o_10_din sc_out sc_lv 16 signal 10 } 
	{ d_o_10_full_n sc_in sc_logic 1 signal 10 } 
	{ d_o_10_write sc_out sc_logic 1 signal 10 } 
	{ d_o_11_din sc_out sc_lv 16 signal 11 } 
	{ d_o_11_full_n sc_in sc_logic 1 signal 11 } 
	{ d_o_11_write sc_out sc_logic 1 signal 11 } 
	{ d_o_12_din sc_out sc_lv 16 signal 12 } 
	{ d_o_12_full_n sc_in sc_logic 1 signal 12 } 
	{ d_o_12_write sc_out sc_logic 1 signal 12 } 
	{ d_o_13_din sc_out sc_lv 16 signal 13 } 
	{ d_o_13_full_n sc_in sc_logic 1 signal 13 } 
	{ d_o_13_write sc_out sc_logic 1 signal 13 } 
	{ d_o_14_din sc_out sc_lv 16 signal 14 } 
	{ d_o_14_full_n sc_in sc_logic 1 signal 14 } 
	{ d_o_14_write sc_out sc_logic 1 signal 14 } 
	{ d_o_15_din sc_out sc_lv 16 signal 15 } 
	{ d_o_15_full_n sc_in sc_logic 1 signal 15 } 
	{ d_o_15_write sc_out sc_logic 1 signal 15 } 
	{ d_o_16_din sc_out sc_lv 16 signal 16 } 
	{ d_o_16_full_n sc_in sc_logic 1 signal 16 } 
	{ d_o_16_write sc_out sc_logic 1 signal 16 } 
	{ d_o_17_din sc_out sc_lv 16 signal 17 } 
	{ d_o_17_full_n sc_in sc_logic 1 signal 17 } 
	{ d_o_17_write sc_out sc_logic 1 signal 17 } 
	{ d_o_18_din sc_out sc_lv 16 signal 18 } 
	{ d_o_18_full_n sc_in sc_logic 1 signal 18 } 
	{ d_o_18_write sc_out sc_logic 1 signal 18 } 
	{ d_o_19_din sc_out sc_lv 16 signal 19 } 
	{ d_o_19_full_n sc_in sc_logic 1 signal 19 } 
	{ d_o_19_write sc_out sc_logic 1 signal 19 } 
	{ d_o_20_din sc_out sc_lv 16 signal 20 } 
	{ d_o_20_full_n sc_in sc_logic 1 signal 20 } 
	{ d_o_20_write sc_out sc_logic 1 signal 20 } 
	{ d_o_21_din sc_out sc_lv 16 signal 21 } 
	{ d_o_21_full_n sc_in sc_logic 1 signal 21 } 
	{ d_o_21_write sc_out sc_logic 1 signal 21 } 
	{ d_o_22_din sc_out sc_lv 16 signal 22 } 
	{ d_o_22_full_n sc_in sc_logic 1 signal 22 } 
	{ d_o_22_write sc_out sc_logic 1 signal 22 } 
	{ d_o_23_din sc_out sc_lv 16 signal 23 } 
	{ d_o_23_full_n sc_in sc_logic 1 signal 23 } 
	{ d_o_23_write sc_out sc_logic 1 signal 23 } 
	{ d_o_24_din sc_out sc_lv 16 signal 24 } 
	{ d_o_24_full_n sc_in sc_logic 1 signal 24 } 
	{ d_o_24_write sc_out sc_logic 1 signal 24 } 
	{ d_o_25_din sc_out sc_lv 16 signal 25 } 
	{ d_o_25_full_n sc_in sc_logic 1 signal 25 } 
	{ d_o_25_write sc_out sc_logic 1 signal 25 } 
	{ d_o_26_din sc_out sc_lv 16 signal 26 } 
	{ d_o_26_full_n sc_in sc_logic 1 signal 26 } 
	{ d_o_26_write sc_out sc_logic 1 signal 26 } 
	{ d_o_27_din sc_out sc_lv 16 signal 27 } 
	{ d_o_27_full_n sc_in sc_logic 1 signal 27 } 
	{ d_o_27_write sc_out sc_logic 1 signal 27 } 
	{ d_o_28_din sc_out sc_lv 16 signal 28 } 
	{ d_o_28_full_n sc_in sc_logic 1 signal 28 } 
	{ d_o_28_write sc_out sc_logic 1 signal 28 } 
	{ d_o_29_din sc_out sc_lv 16 signal 29 } 
	{ d_o_29_full_n sc_in sc_logic 1 signal 29 } 
	{ d_o_29_write sc_out sc_logic 1 signal 29 } 
	{ d_o_30_din sc_out sc_lv 16 signal 30 } 
	{ d_o_30_full_n sc_in sc_logic 1 signal 30 } 
	{ d_o_30_write sc_out sc_logic 1 signal 30 } 
	{ d_o_31_din sc_out sc_lv 16 signal 31 } 
	{ d_o_31_full_n sc_in sc_logic 1 signal 31 } 
	{ d_o_31_write sc_out sc_logic 1 signal 31 } 
	{ d_i_0 sc_in sc_lv 16 signal 32 } 
	{ d_i_1 sc_in sc_lv 16 signal 33 } 
	{ d_i_2 sc_in sc_lv 16 signal 34 } 
	{ d_i_3 sc_in sc_lv 16 signal 35 } 
	{ d_i_4 sc_in sc_lv 16 signal 36 } 
	{ d_i_5 sc_in sc_lv 16 signal 37 } 
	{ d_i_6 sc_in sc_lv 16 signal 38 } 
	{ d_i_7 sc_in sc_lv 16 signal 39 } 
	{ d_i_8 sc_in sc_lv 16 signal 40 } 
	{ d_i_9 sc_in sc_lv 16 signal 41 } 
	{ d_i_10 sc_in sc_lv 16 signal 42 } 
	{ d_i_11 sc_in sc_lv 16 signal 43 } 
	{ d_i_12 sc_in sc_lv 16 signal 44 } 
	{ d_i_13 sc_in sc_lv 16 signal 45 } 
	{ d_i_14 sc_in sc_lv 16 signal 46 } 
	{ d_i_15 sc_in sc_lv 16 signal 47 } 
	{ d_i_16 sc_in sc_lv 16 signal 48 } 
	{ d_i_17 sc_in sc_lv 16 signal 49 } 
	{ d_i_18 sc_in sc_lv 16 signal 50 } 
	{ d_i_19 sc_in sc_lv 16 signal 51 } 
	{ d_i_20 sc_in sc_lv 16 signal 52 } 
	{ d_i_21 sc_in sc_lv 16 signal 53 } 
	{ d_i_22 sc_in sc_lv 16 signal 54 } 
	{ d_i_23 sc_in sc_lv 16 signal 55 } 
	{ d_i_24 sc_in sc_lv 16 signal 56 } 
	{ d_i_25 sc_in sc_lv 16 signal 57 } 
	{ d_i_26 sc_in sc_lv 16 signal 58 } 
	{ d_i_27 sc_in sc_lv 16 signal 59 } 
	{ d_i_28 sc_in sc_lv 16 signal 60 } 
	{ d_i_29 sc_in sc_lv 16 signal 61 } 
	{ d_i_30 sc_in sc_lv 16 signal 62 } 
	{ d_i_31 sc_in sc_lv 16 signal 63 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_o_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_0", "role": "din" }} , 
 	{ "name": "d_o_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_0", "role": "full_n" }} , 
 	{ "name": "d_o_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_0", "role": "write" }} , 
 	{ "name": "d_o_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_1", "role": "din" }} , 
 	{ "name": "d_o_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_1", "role": "full_n" }} , 
 	{ "name": "d_o_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_1", "role": "write" }} , 
 	{ "name": "d_o_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_2", "role": "din" }} , 
 	{ "name": "d_o_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_2", "role": "full_n" }} , 
 	{ "name": "d_o_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_2", "role": "write" }} , 
 	{ "name": "d_o_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_3", "role": "din" }} , 
 	{ "name": "d_o_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_3", "role": "full_n" }} , 
 	{ "name": "d_o_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_3", "role": "write" }} , 
 	{ "name": "d_o_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_4", "role": "din" }} , 
 	{ "name": "d_o_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_4", "role": "full_n" }} , 
 	{ "name": "d_o_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_4", "role": "write" }} , 
 	{ "name": "d_o_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_5", "role": "din" }} , 
 	{ "name": "d_o_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_5", "role": "full_n" }} , 
 	{ "name": "d_o_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_5", "role": "write" }} , 
 	{ "name": "d_o_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_6", "role": "din" }} , 
 	{ "name": "d_o_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_6", "role": "full_n" }} , 
 	{ "name": "d_o_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_6", "role": "write" }} , 
 	{ "name": "d_o_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_7", "role": "din" }} , 
 	{ "name": "d_o_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_7", "role": "full_n" }} , 
 	{ "name": "d_o_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_7", "role": "write" }} , 
 	{ "name": "d_o_8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_8", "role": "din" }} , 
 	{ "name": "d_o_8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_8", "role": "full_n" }} , 
 	{ "name": "d_o_8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_8", "role": "write" }} , 
 	{ "name": "d_o_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_9", "role": "din" }} , 
 	{ "name": "d_o_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_9", "role": "full_n" }} , 
 	{ "name": "d_o_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_9", "role": "write" }} , 
 	{ "name": "d_o_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_10", "role": "din" }} , 
 	{ "name": "d_o_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_10", "role": "full_n" }} , 
 	{ "name": "d_o_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_10", "role": "write" }} , 
 	{ "name": "d_o_11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_11", "role": "din" }} , 
 	{ "name": "d_o_11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_11", "role": "full_n" }} , 
 	{ "name": "d_o_11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_11", "role": "write" }} , 
 	{ "name": "d_o_12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_12", "role": "din" }} , 
 	{ "name": "d_o_12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_12", "role": "full_n" }} , 
 	{ "name": "d_o_12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_12", "role": "write" }} , 
 	{ "name": "d_o_13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_13", "role": "din" }} , 
 	{ "name": "d_o_13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_13", "role": "full_n" }} , 
 	{ "name": "d_o_13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_13", "role": "write" }} , 
 	{ "name": "d_o_14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_14", "role": "din" }} , 
 	{ "name": "d_o_14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_14", "role": "full_n" }} , 
 	{ "name": "d_o_14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_14", "role": "write" }} , 
 	{ "name": "d_o_15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_15", "role": "din" }} , 
 	{ "name": "d_o_15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_15", "role": "full_n" }} , 
 	{ "name": "d_o_15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_15", "role": "write" }} , 
 	{ "name": "d_o_16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_16", "role": "din" }} , 
 	{ "name": "d_o_16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_16", "role": "full_n" }} , 
 	{ "name": "d_o_16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_16", "role": "write" }} , 
 	{ "name": "d_o_17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_17", "role": "din" }} , 
 	{ "name": "d_o_17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_17", "role": "full_n" }} , 
 	{ "name": "d_o_17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_17", "role": "write" }} , 
 	{ "name": "d_o_18_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_18", "role": "din" }} , 
 	{ "name": "d_o_18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_18", "role": "full_n" }} , 
 	{ "name": "d_o_18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_18", "role": "write" }} , 
 	{ "name": "d_o_19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_19", "role": "din" }} , 
 	{ "name": "d_o_19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_19", "role": "full_n" }} , 
 	{ "name": "d_o_19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_19", "role": "write" }} , 
 	{ "name": "d_o_20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_20", "role": "din" }} , 
 	{ "name": "d_o_20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_20", "role": "full_n" }} , 
 	{ "name": "d_o_20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_20", "role": "write" }} , 
 	{ "name": "d_o_21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_21", "role": "din" }} , 
 	{ "name": "d_o_21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_21", "role": "full_n" }} , 
 	{ "name": "d_o_21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_21", "role": "write" }} , 
 	{ "name": "d_o_22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_22", "role": "din" }} , 
 	{ "name": "d_o_22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_22", "role": "full_n" }} , 
 	{ "name": "d_o_22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_22", "role": "write" }} , 
 	{ "name": "d_o_23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_23", "role": "din" }} , 
 	{ "name": "d_o_23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_23", "role": "full_n" }} , 
 	{ "name": "d_o_23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_23", "role": "write" }} , 
 	{ "name": "d_o_24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_24", "role": "din" }} , 
 	{ "name": "d_o_24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_24", "role": "full_n" }} , 
 	{ "name": "d_o_24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_24", "role": "write" }} , 
 	{ "name": "d_o_25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_25", "role": "din" }} , 
 	{ "name": "d_o_25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_25", "role": "full_n" }} , 
 	{ "name": "d_o_25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_25", "role": "write" }} , 
 	{ "name": "d_o_26_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_26", "role": "din" }} , 
 	{ "name": "d_o_26_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_26", "role": "full_n" }} , 
 	{ "name": "d_o_26_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_26", "role": "write" }} , 
 	{ "name": "d_o_27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_27", "role": "din" }} , 
 	{ "name": "d_o_27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_27", "role": "full_n" }} , 
 	{ "name": "d_o_27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_27", "role": "write" }} , 
 	{ "name": "d_o_28_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_28", "role": "din" }} , 
 	{ "name": "d_o_28_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_28", "role": "full_n" }} , 
 	{ "name": "d_o_28_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_28", "role": "write" }} , 
 	{ "name": "d_o_29_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_29", "role": "din" }} , 
 	{ "name": "d_o_29_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_29", "role": "full_n" }} , 
 	{ "name": "d_o_29_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_29", "role": "write" }} , 
 	{ "name": "d_o_30_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_30", "role": "din" }} , 
 	{ "name": "d_o_30_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_30", "role": "full_n" }} , 
 	{ "name": "d_o_30_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_30", "role": "write" }} , 
 	{ "name": "d_o_31_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_31", "role": "din" }} , 
 	{ "name": "d_o_31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_31", "role": "full_n" }} , 
 	{ "name": "d_o_31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_31", "role": "write" }} , 
 	{ "name": "d_i_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "default" }} , 
 	{ "name": "d_i_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "default" }} , 
 	{ "name": "d_i_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_2", "role": "default" }} , 
 	{ "name": "d_i_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_3", "role": "default" }} , 
 	{ "name": "d_i_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_4", "role": "default" }} , 
 	{ "name": "d_i_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_5", "role": "default" }} , 
 	{ "name": "d_i_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_6", "role": "default" }} , 
 	{ "name": "d_i_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_7", "role": "default" }} , 
 	{ "name": "d_i_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_8", "role": "default" }} , 
 	{ "name": "d_i_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_9", "role": "default" }} , 
 	{ "name": "d_i_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_10", "role": "default" }} , 
 	{ "name": "d_i_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_11", "role": "default" }} , 
 	{ "name": "d_i_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_12", "role": "default" }} , 
 	{ "name": "d_i_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_13", "role": "default" }} , 
 	{ "name": "d_i_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_14", "role": "default" }} , 
 	{ "name": "d_i_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_15", "role": "default" }} , 
 	{ "name": "d_i_16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_16", "role": "default" }} , 
 	{ "name": "d_i_17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_17", "role": "default" }} , 
 	{ "name": "d_i_18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_18", "role": "default" }} , 
 	{ "name": "d_i_19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_19", "role": "default" }} , 
 	{ "name": "d_i_20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_20", "role": "default" }} , 
 	{ "name": "d_i_21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_21", "role": "default" }} , 
 	{ "name": "d_i_22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_22", "role": "default" }} , 
 	{ "name": "d_i_23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_23", "role": "default" }} , 
 	{ "name": "d_i_24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_24", "role": "default" }} , 
 	{ "name": "d_i_25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_25", "role": "default" }} , 
 	{ "name": "d_i_26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_26", "role": "default" }} , 
 	{ "name": "d_i_27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_27", "role": "default" }} , 
 	{ "name": "d_i_28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_28", "role": "default" }} , 
 	{ "name": "d_i_29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_29", "role": "default" }} , 
 	{ "name": "d_i_30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_30", "role": "default" }} , 
 	{ "name": "d_i_31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_31", "role": "default" }}  ]}
set Spec2ImplPortList { 
	d_o_0 { ap_fifo {  { d_o_0_din fifo_data 1 16 }  { d_o_0_full_n fifo_status 0 1 }  { d_o_0_write fifo_update 1 1 } } }
	d_o_1 { ap_fifo {  { d_o_1_din fifo_data 1 16 }  { d_o_1_full_n fifo_status 0 1 }  { d_o_1_write fifo_update 1 1 } } }
	d_o_2 { ap_fifo {  { d_o_2_din fifo_data 1 16 }  { d_o_2_full_n fifo_status 0 1 }  { d_o_2_write fifo_update 1 1 } } }
	d_o_3 { ap_fifo {  { d_o_3_din fifo_data 1 16 }  { d_o_3_full_n fifo_status 0 1 }  { d_o_3_write fifo_update 1 1 } } }
	d_o_4 { ap_fifo {  { d_o_4_din fifo_data 1 16 }  { d_o_4_full_n fifo_status 0 1 }  { d_o_4_write fifo_update 1 1 } } }
	d_o_5 { ap_fifo {  { d_o_5_din fifo_data 1 16 }  { d_o_5_full_n fifo_status 0 1 }  { d_o_5_write fifo_update 1 1 } } }
	d_o_6 { ap_fifo {  { d_o_6_din fifo_data 1 16 }  { d_o_6_full_n fifo_status 0 1 }  { d_o_6_write fifo_update 1 1 } } }
	d_o_7 { ap_fifo {  { d_o_7_din fifo_data 1 16 }  { d_o_7_full_n fifo_status 0 1 }  { d_o_7_write fifo_update 1 1 } } }
	d_o_8 { ap_fifo {  { d_o_8_din fifo_data 1 16 }  { d_o_8_full_n fifo_status 0 1 }  { d_o_8_write fifo_update 1 1 } } }
	d_o_9 { ap_fifo {  { d_o_9_din fifo_data 1 16 }  { d_o_9_full_n fifo_status 0 1 }  { d_o_9_write fifo_update 1 1 } } }
	d_o_10 { ap_fifo {  { d_o_10_din fifo_data 1 16 }  { d_o_10_full_n fifo_status 0 1 }  { d_o_10_write fifo_update 1 1 } } }
	d_o_11 { ap_fifo {  { d_o_11_din fifo_data 1 16 }  { d_o_11_full_n fifo_status 0 1 }  { d_o_11_write fifo_update 1 1 } } }
	d_o_12 { ap_fifo {  { d_o_12_din fifo_data 1 16 }  { d_o_12_full_n fifo_status 0 1 }  { d_o_12_write fifo_update 1 1 } } }
	d_o_13 { ap_fifo {  { d_o_13_din fifo_data 1 16 }  { d_o_13_full_n fifo_status 0 1 }  { d_o_13_write fifo_update 1 1 } } }
	d_o_14 { ap_fifo {  { d_o_14_din fifo_data 1 16 }  { d_o_14_full_n fifo_status 0 1 }  { d_o_14_write fifo_update 1 1 } } }
	d_o_15 { ap_fifo {  { d_o_15_din fifo_data 1 16 }  { d_o_15_full_n fifo_status 0 1 }  { d_o_15_write fifo_update 1 1 } } }
	d_o_16 { ap_fifo {  { d_o_16_din fifo_data 1 16 }  { d_o_16_full_n fifo_status 0 1 }  { d_o_16_write fifo_update 1 1 } } }
	d_o_17 { ap_fifo {  { d_o_17_din fifo_data 1 16 }  { d_o_17_full_n fifo_status 0 1 }  { d_o_17_write fifo_update 1 1 } } }
	d_o_18 { ap_fifo {  { d_o_18_din fifo_data 1 16 }  { d_o_18_full_n fifo_status 0 1 }  { d_o_18_write fifo_update 1 1 } } }
	d_o_19 { ap_fifo {  { d_o_19_din fifo_data 1 16 }  { d_o_19_full_n fifo_status 0 1 }  { d_o_19_write fifo_update 1 1 } } }
	d_o_20 { ap_fifo {  { d_o_20_din fifo_data 1 16 }  { d_o_20_full_n fifo_status 0 1 }  { d_o_20_write fifo_update 1 1 } } }
	d_o_21 { ap_fifo {  { d_o_21_din fifo_data 1 16 }  { d_o_21_full_n fifo_status 0 1 }  { d_o_21_write fifo_update 1 1 } } }
	d_o_22 { ap_fifo {  { d_o_22_din fifo_data 1 16 }  { d_o_22_full_n fifo_status 0 1 }  { d_o_22_write fifo_update 1 1 } } }
	d_o_23 { ap_fifo {  { d_o_23_din fifo_data 1 16 }  { d_o_23_full_n fifo_status 0 1 }  { d_o_23_write fifo_update 1 1 } } }
	d_o_24 { ap_fifo {  { d_o_24_din fifo_data 1 16 }  { d_o_24_full_n fifo_status 0 1 }  { d_o_24_write fifo_update 1 1 } } }
	d_o_25 { ap_fifo {  { d_o_25_din fifo_data 1 16 }  { d_o_25_full_n fifo_status 0 1 }  { d_o_25_write fifo_update 1 1 } } }
	d_o_26 { ap_fifo {  { d_o_26_din fifo_data 1 16 }  { d_o_26_full_n fifo_status 0 1 }  { d_o_26_write fifo_update 1 1 } } }
	d_o_27 { ap_fifo {  { d_o_27_din fifo_data 1 16 }  { d_o_27_full_n fifo_status 0 1 }  { d_o_27_write fifo_update 1 1 } } }
	d_o_28 { ap_fifo {  { d_o_28_din fifo_data 1 16 }  { d_o_28_full_n fifo_status 0 1 }  { d_o_28_write fifo_update 1 1 } } }
	d_o_29 { ap_fifo {  { d_o_29_din fifo_data 1 16 }  { d_o_29_full_n fifo_status 0 1 }  { d_o_29_write fifo_update 1 1 } } }
	d_o_30 { ap_fifo {  { d_o_30_din fifo_data 1 16 }  { d_o_30_full_n fifo_status 0 1 }  { d_o_30_write fifo_update 1 1 } } }
	d_o_31 { ap_fifo {  { d_o_31_din fifo_data 1 16 }  { d_o_31_full_n fifo_status 0 1 }  { d_o_31_write fifo_update 1 1 } } }
	d_i_0 { ap_none {  { d_i_0 in_data 0 16 } } }
	d_i_1 { ap_none {  { d_i_1 in_data 0 16 } } }
	d_i_2 { ap_none {  { d_i_2 in_data 0 16 } } }
	d_i_3 { ap_none {  { d_i_3 in_data 0 16 } } }
	d_i_4 { ap_none {  { d_i_4 in_data 0 16 } } }
	d_i_5 { ap_none {  { d_i_5 in_data 0 16 } } }
	d_i_6 { ap_none {  { d_i_6 in_data 0 16 } } }
	d_i_7 { ap_none {  { d_i_7 in_data 0 16 } } }
	d_i_8 { ap_none {  { d_i_8 in_data 0 16 } } }
	d_i_9 { ap_none {  { d_i_9 in_data 0 16 } } }
	d_i_10 { ap_none {  { d_i_10 in_data 0 16 } } }
	d_i_11 { ap_none {  { d_i_11 in_data 0 16 } } }
	d_i_12 { ap_none {  { d_i_12 in_data 0 16 } } }
	d_i_13 { ap_none {  { d_i_13 in_data 0 16 } } }
	d_i_14 { ap_none {  { d_i_14 in_data 0 16 } } }
	d_i_15 { ap_none {  { d_i_15 in_data 0 16 } } }
	d_i_16 { ap_none {  { d_i_16 in_data 0 16 } } }
	d_i_17 { ap_none {  { d_i_17 in_data 0 16 } } }
	d_i_18 { ap_none {  { d_i_18 in_data 0 16 } } }
	d_i_19 { ap_none {  { d_i_19 in_data 0 16 } } }
	d_i_20 { ap_none {  { d_i_20 in_data 0 16 } } }
	d_i_21 { ap_none {  { d_i_21 in_data 0 16 } } }
	d_i_22 { ap_none {  { d_i_22 in_data 0 16 } } }
	d_i_23 { ap_none {  { d_i_23 in_data 0 16 } } }
	d_i_24 { ap_none {  { d_i_24 in_data 0 16 } } }
	d_i_25 { ap_none {  { d_i_25 in_data 0 16 } } }
	d_i_26 { ap_none {  { d_i_26 in_data 0 16 } } }
	d_i_27 { ap_none {  { d_i_27 in_data 0 16 } } }
	d_i_28 { ap_none {  { d_i_28 in_data 0 16 } } }
	d_i_29 { ap_none {  { d_i_29 in_data 0 16 } } }
	d_i_30 { ap_none {  { d_i_30 in_data 0 16 } } }
	d_i_31 { ap_none {  { d_i_31 in_data 0 16 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	d_o_0 { fifo_write 1 no_conditional }
	d_o_1 { fifo_write 1 no_conditional }
	d_o_2 { fifo_write 1 no_conditional }
	d_o_3 { fifo_write 1 no_conditional }
	d_o_4 { fifo_write 1 no_conditional }
	d_o_5 { fifo_write 1 no_conditional }
	d_o_6 { fifo_write 1 no_conditional }
	d_o_7 { fifo_write 1 no_conditional }
	d_o_8 { fifo_write 1 no_conditional }
	d_o_9 { fifo_write 1 no_conditional }
	d_o_10 { fifo_write 1 no_conditional }
	d_o_11 { fifo_write 1 no_conditional }
	d_o_12 { fifo_write 1 no_conditional }
	d_o_13 { fifo_write 1 no_conditional }
	d_o_14 { fifo_write 1 no_conditional }
	d_o_15 { fifo_write 1 no_conditional }
	d_o_16 { fifo_write 1 no_conditional }
	d_o_17 { fifo_write 1 no_conditional }
	d_o_18 { fifo_write 1 no_conditional }
	d_o_19 { fifo_write 1 no_conditional }
	d_o_20 { fifo_write 1 no_conditional }
	d_o_21 { fifo_write 1 no_conditional }
	d_o_22 { fifo_write 1 no_conditional }
	d_o_23 { fifo_write 1 no_conditional }
	d_o_24 { fifo_write 1 no_conditional }
	d_o_25 { fifo_write 1 no_conditional }
	d_o_26 { fifo_write 1 no_conditional }
	d_o_27 { fifo_write 1 no_conditional }
	d_o_28 { fifo_write 1 no_conditional }
	d_o_29 { fifo_write 1 no_conditional }
	d_o_30 { fifo_write 1 no_conditional }
	d_o_31 { fifo_write 1 no_conditional }
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
