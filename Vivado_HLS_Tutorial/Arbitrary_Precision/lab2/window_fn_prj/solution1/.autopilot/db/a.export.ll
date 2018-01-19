; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Arbitrary_Precision/lab2/window_fn_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [11 x i8] c"winfn_loop\00", align 1
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a9, void ()* @_GLOBAL__I_a1942]
@window_fn_top_str = internal unnamed_addr constant [14 x i8] c"window_fn_top\00"
@coeff_tab1 = internal unnamed_addr constant [32 x i17] [i17 0, i17 629, i17 2494, i17 5522, i17 9597, i17 14563, i17 20228, i17 26375, i17 32767, i17 39160, i17 45307, i17 50972, i17 55938, i17 60013, i17 63041, i17 64906, i17 -65536, i17 64906, i17 63041, i17 60013, i17 55938, i17 50972, i17 45307, i17 39160, i17 32768, i17 26375, i17 20228, i17 14563, i17 9597, i17 5522, i17 2494, i17 629]

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

declare void @_GLOBAL__I_a9() nounwind

declare void @_GLOBAL__I_a1942() nounwind

define void @window_fn_top([32 x i24]* %outdata_V, [32 x i8]* %indata_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i24]* %outdata_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %indata_V), !map !13
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @window_fn_top_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i6 [ 0, %0 ], [ %i, %2 ]
  %exitcond_i = icmp eq i6 %i_i, -32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %i = add i6 %i_i, 1
  br i1 %exitcond_i, label %apply.exit, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str) nounwind
  %tmp_i = zext i6 %i_i to i64
  %coeff_tab1_addr = getelementptr [32 x i17]* @coeff_tab1, i64 0, i64 %tmp_i
  %coeff_tab1_load = load i17* %coeff_tab1_addr, align 4
  %OP1_V_i = zext i17 %coeff_tab1_load to i24
  %indata_V_addr = getelementptr [32 x i8]* %indata_V, i64 0, i64 %tmp_i
  %indata_V_load = load i8* %indata_V_addr, align 1
  %OP2_V_i = sext i8 %indata_V_load to i24
  %p_Val2_i = mul i24 %OP1_V_i, %OP2_V_i
  %outdata_V_addr = getelementptr [32 x i24]* %outdata_V, i64 0, i64 %tmp_i
  store i24 %p_Val2_i, i24* %outdata_V_addr, align 4
  br label %1

apply.exit:                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [3 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 23, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"outdata.V", metadata !11, metadata !"int24", i32 0, i32 23}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"indata.V", metadata !11, metadata !"int8", i32 0, i32 7}
