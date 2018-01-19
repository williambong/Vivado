; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Arbitrary_Precision/lab1/window_fn_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [11 x i8] c"winfn_loop\00", align 1 ; [#uses=1 type=[11 x i8]*]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535] ; [#uses=0 type=[2 x i32]*]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1942] ; [#uses=0 type=[2 x void ()*]*]
@window_fn_top_str = internal unnamed_addr constant [14 x i8] c"window_fn_top\00" ; [#uses=1 type=[14 x i8]*]
@coeff_tab1 = internal unnamed_addr constant [32 x float] [float 0.000000e+00, float 0x3F83AD0600000000, float 0x3FA37CA180000000, float 0x3FB5926760000000, float 0x3FC2BEC340000000, float 0x3FCC718980000000, float 0x3FD3C10EA0000000, float 0x3FD9C1D200000000, float 5.000000e-01, float 0x3FE31F1700000000, float 0x3FE61F78A0000000, float 0x3FE8E39DA0000000, float 0x3FEB504F40000000, float 0x3FED4DB320000000, float 0x3FEEC835E0000000, float 0x3FEFB14BE0000000, float 1.000000e+00, float 0x3FEFB14BE0000000, float 0x3FEEC835E0000000, float 0x3FED4DB320000000, float 0x3FEB504F40000000, float 0x3FE8E39DA0000000, float 0x3FE61F78A0000000, float 0x3FE31F1700000000, float 5.000000e-01, float 0x3FD9C1D200000000, float 0x3FD3C10EA0000000, float 0x3FCC718980000000, float 0x3FC2BEC340000000, float 0x3FB5926760000000, float 0x3FA37CA180000000, float 0x3F83AD0600000000] ; [#uses=1 type=[32 x float]*]

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

; [#uses=1]
declare void @_GLOBAL__I_a1942() nounwind

; [#uses=0]
define void @window_fn_top([32 x float]* %outdata, [32 x float]* %indata) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x float]* %outdata) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([32 x float]* %indata) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @window_fn_top_str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x float]* %outdata}, i64 0, metadata !17), !dbg !32 ; [debug line = 55:20] [debug variable = outdata]
  call void @llvm.dbg.value(metadata !{[32 x float]* %indata}, i64 0, metadata !33), !dbg !35 ; [debug line = 56:19] [debug variable = indata]
  call void @llvm.dbg.value(metadata !{[32 x float]* %outdata}, i64 0, metadata !36) nounwind, !dbg !77 ; [debug line = 74:19@64:4] [debug variable = outdata]
  call void @llvm.dbg.value(metadata !{[32 x float]* %indata}, i64 0, metadata !78) nounwind, !dbg !79 ; [debug line = 74:32@64:4] [debug variable = indata]
  br label %1, !dbg !80                           ; [debug line = 129:23@64:4]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i6 [ 0, %0 ], [ %i, %2 ]             ; [#uses=3 type=i6]
  %exitcond_i = icmp eq i6 %i_i, -32, !dbg !80    ; [#uses=1 type=i1] [debug line = 129:23@64:4]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i = add i6 %i_i, 1, !dbg !83                   ; [#uses=1 type=i6] [debug line = 129:33@64:4]
  br i1 %exitcond_i, label %apply.exit, label %2, !dbg !80 ; [debug line = 129:23@64:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str) nounwind, !dbg !84 ; [debug line = 129:39@64:4]
  %tmp_i = zext i6 %i_i to i64, !dbg !86          ; [#uses=3 type=i64] [debug line = 131:7@64:4]
  %coeff_tab1_addr = getelementptr inbounds [32 x float]* @coeff_tab1, i64 0, i64 %tmp_i, !dbg !86 ; [#uses=1 type=float*] [debug line = 131:7@64:4]
  %coeff_tab1_load = load float* %coeff_tab1_addr, align 4, !dbg !86 ; [#uses=1 type=float] [debug line = 131:7@64:4]
  %indata_addr = getelementptr [32 x float]* %indata, i64 0, i64 %tmp_i, !dbg !86 ; [#uses=1 type=float*] [debug line = 131:7@64:4]
  %indata_load = load float* %indata_addr, align 4, !dbg !86 ; [#uses=1 type=float] [debug line = 131:7@64:4]
  %tmp_1_i = fmul float %coeff_tab1_load, %indata_load, !dbg !86 ; [#uses=1 type=float] [debug line = 131:7@64:4]
  %outdata_addr = getelementptr [32 x float]* %outdata, i64 0, i64 %tmp_i, !dbg !86 ; [#uses=1 type=float*] [debug line = 131:7@64:4]
  store float %tmp_1_i, float* %outdata_addr, align 4, !dbg !86 ; [debug line = 131:7@64:4]
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !87) nounwind, !dbg !83 ; [debug line = 129:33@64:4] [debug variable = i]
  br label %1, !dbg !83                           ; [debug line = 129:33@64:4]

apply.exit:                                       ; preds = %1
  ret void, !dbg !89                              ; [debug line = 65:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [2 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"outdata", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"indata", metadata !11, metadata !"float", i32 0, i32 31}
!17 = metadata !{i32 786689, metadata !18, metadata !"outdata", null, i32 55, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 786478, i32 0, metadata !19, metadata !"window_fn_top", metadata !"window_fn_top", metadata !"_Z13window_fn_topPfS_", metadata !19, i32 54, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 57} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786473, metadata !"window_fn_top.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Arbitrary_Precision/lab1", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !25}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786454, null, metadata !"win_fn_out_t", metadata !19, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786454, null, metadata !"win_fn_in_t", metadata !19, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !23, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 55, i32 20, metadata !18, null}
!33 = metadata !{i32 786689, metadata !18, metadata !"indata", null, i32 56, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !26, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 56, i32 19, metadata !18, null}
!36 = metadata !{i32 786689, metadata !37, metadata !"outdata", null, i32 74, metadata !74, i32 0, metadata !75} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786478, i32 0, metadata !38, metadata !"apply", metadata !"apply", metadata !"_ZN14xhls_window_fn9window_fnIfffLi32ELNS_8win_fn_tE1EE5applyEPfS3_", metadata !39, i32 74, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !60, metadata !27, i32 122} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786489, null, metadata !"xhls_window_fn", metadata !39, i32 52} ; [ DW_TAG_namespace ]
!39 = metadata !{i32 786473, metadata !"./window_fn_class.h", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Arbitrary_Precision/lab1", null} ; [ DW_TAG_file_type ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !42, metadata !73, metadata !73}
!42 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786434, metadata !38, metadata !"window_fn<float, float, float, 32, 1>", metadata !39, i32 66, i64 64, i64 32, i32 0, i32 0, null, metadata !44, i32 0, null, metadata !67} ; [ DW_TAG_class_type ]
!44 = metadata !{metadata !45, metadata !48, metadata !57, metadata !60, metadata !61, metadata !64}
!45 = metadata !{i32 786445, metadata !43, metadata !"win_len", metadata !39, i32 67, i64 32, i64 32, i64 0, i32 1, metadata !46} ; [ DW_TAG_member ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786445, metadata !43, metadata !"win_type", metadata !39, i32 68, i64 2, i64 2, i64 32, i32 1, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ]
!50 = metadata !{i32 786454, metadata !38, metadata !"win_fn_t", metadata !39, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ]
!51 = metadata !{i32 786436, metadata !38, metadata !"", metadata !39, i32 55, i64 2, i64 2, i32 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56}
!53 = metadata !{i32 786472, metadata !"RECT", i64 0} ; [ DW_TAG_enumerator ]
!54 = metadata !{i32 786472, metadata !"HANN", i64 1} ; [ DW_TAG_enumerator ]
!55 = metadata !{i32 786472, metadata !"HAMMING", i64 2} ; [ DW_TAG_enumerator ]
!56 = metadata !{i32 786472, metadata !"GAUSSIAN", i64 3} ; [ DW_TAG_enumerator ]
!57 = metadata !{i32 786478, i32 0, metadata !43, metadata !"window_fn", metadata !"window_fn", metadata !"", metadata !39, i32 71, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 71} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !42}
!60 = metadata !{i32 786478, i32 0, metadata !43, metadata !"apply", metadata !"apply", metadata !"_ZN14xhls_window_fn9window_fnIfffLi32ELNS_8win_fn_tE1EE5applyEPfS3_", metadata !39, i32 74, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 74} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786478, i32 0, metadata !43, metadata !"get_len", metadata !"get_len", metadata !"_ZN14xhls_window_fn9window_fnIfffLi32ELNS_8win_fn_tE1EE7get_lenEv", metadata !39, i32 78, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 78} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !47, metadata !42}
!64 = metadata !{i32 786478, i32 0, metadata !43, metadata !"get_type", metadata !"get_type", metadata !"_ZN14xhls_window_fn9window_fnIfffLi32ELNS_8win_fn_tE1EE8get_typeEv", metadata !39, i32 79, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 79} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !50, metadata !42}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!68 = metadata !{i32 786479, null, metadata !"TI", metadata !24, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!69 = metadata !{i32 786479, null, metadata !"TO", metadata !24, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!70 = metadata !{i32 786479, null, metadata !"TC", metadata !24, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!71 = metadata !{i32 786480, null, metadata !"SZ", metadata !47, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!72 = metadata !{i32 786480, null, metadata !"FT", metadata !51, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !24, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{i32 64, i32 4, metadata !76, null}
!76 = metadata !{i32 786443, metadata !18, i32 57, i32 1, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 74, i32 19, metadata !37, metadata !75}
!78 = metadata !{i32 786689, metadata !37, metadata !"indata", null, i32 74, metadata !74, i32 0, metadata !75} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 74, i32 32, metadata !37, metadata !75}
!80 = metadata !{i32 129, i32 23, metadata !81, metadata !75}
!81 = metadata !{i32 786443, metadata !82, i32 129, i32 4, metadata !39, i32 2} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !37, i32 122, i32 1, metadata !39, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 129, i32 33, metadata !81, metadata !75}
!84 = metadata !{i32 129, i32 39, metadata !85, metadata !75}
!85 = metadata !{i32 786443, metadata !81, i32 129, i32 38, metadata !39, i32 3} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 131, i32 7, metadata !85, metadata !75}
!87 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !39, i32 129, metadata !88, i32 0, metadata !75} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!89 = metadata !{i32 65, i32 1, metadata !76, null}
