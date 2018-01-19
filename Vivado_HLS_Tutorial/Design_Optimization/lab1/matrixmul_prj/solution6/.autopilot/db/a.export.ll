; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab1/matrixmul_prj/solution6/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00"

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_4 = trunc i24 %empty to i8
  ret i8 %empty_4
}

define void @matrixmul([3 x i24]* %a, [3 x i24]* %b, [9 x i16]* %res) {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i24]* %a), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i24]* %b), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %res), !map !30
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %res_addr = getelementptr [9 x i16]* %res, i64 0, i64 0
  %a_addr = getelementptr [3 x i24]* %a, i64 0, i64 0
  %a_load = load i24* %a_addr, align 4
  %tmp_1 = trunc i24 %a_load to i8
  %tmp_3 = sext i8 %tmp_1 to i16
  %b_addr = getelementptr [3 x i24]* %b, i64 0, i64 0
  %b_load = load i24* %b_addr, align 4
  %tmp_4 = trunc i24 %b_load to i8
  %tmp_8 = sext i8 %tmp_4 to i16
  %tmp_12 = mul i16 %tmp_8, %tmp_3
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_load, i32 8, i32 15)
  %tmp_5_0_0_1 = sext i8 %tmp_6 to i16
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_load, i32 8, i32 15)
  %tmp_6_0_0_1 = sext i8 %tmp_7 to i16
  %tmp_7_0_0_1 = mul i16 %tmp_6_0_0_1, %tmp_5_0_0_1
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_load, i32 16, i32 23)
  %tmp_5_0_0_2 = sext i8 %tmp_9 to i16
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_load, i32 16, i32 23)
  %tmp_6_0_0_2 = sext i8 %tmp_s to i16
  %tmp_7_0_0_2 = mul i16 %tmp_6_0_0_2, %tmp_5_0_0_2
  %tmp = add i16 %tmp_7_0_0_2, %tmp_12
  %tmp_8_0_0_2 = add i16 %tmp_7_0_0_1, %tmp
  store i16 %tmp_8_0_0_2, i16* %res_addr, align 2
  %res_addr_1 = getelementptr [9 x i16]* %res, i64 0, i64 1
  %b_addr_1 = getelementptr [3 x i24]* %b, i64 0, i64 1
  %b_load_1 = load i24* %b_addr_1, align 4
  %tmp_15 = trunc i24 %b_load_1 to i8
  %tmp_6_0_1 = sext i8 %tmp_15 to i16
  %tmp_7_0_1 = mul i16 %tmp_6_0_1, %tmp_3
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_load_1, i32 8, i32 15)
  %tmp_6_0_1_1 = sext i8 %tmp_2 to i16
  %tmp_7_0_1_1 = mul i16 %tmp_6_0_1_1, %tmp_5_0_0_1
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_load_1, i32 16, i32 23)
  %tmp_6_0_1_2 = sext i8 %tmp_5 to i16
  %tmp_7_0_1_2 = mul i16 %tmp_6_0_1_2, %tmp_5_0_0_2
  %tmp1 = add i16 %tmp_7_0_1_2, %tmp_7_0_1
  %tmp_8_0_1_2 = add i16 %tmp_7_0_1_1, %tmp1
  store i16 %tmp_8_0_1_2, i16* %res_addr_1, align 2
  %res_addr_2 = getelementptr [9 x i16]* %res, i64 0, i64 2
  %b_addr_2 = getelementptr [3 x i24]* %b, i64 0, i64 2
  %b_load_2 = load i24* %b_addr_2, align 4
  %tmp_18 = trunc i24 %b_load_2 to i8
  %tmp_6_0_2 = sext i8 %tmp_18 to i16
  %tmp_7_0_2 = mul i16 %tmp_6_0_2, %tmp_3
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_load_2, i32 8, i32 15)
  %tmp_6_0_2_1 = sext i8 %tmp_10 to i16
  %tmp_7_0_2_1 = mul i16 %tmp_6_0_2_1, %tmp_5_0_0_1
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_load_2, i32 16, i32 23)
  %tmp_6_0_2_2 = sext i8 %tmp_11 to i16
  %tmp_7_0_2_2 = mul i16 %tmp_6_0_2_2, %tmp_5_0_0_2
  %tmp2 = add i16 %tmp_7_0_2_2, %tmp_7_0_2
  %tmp_8_0_2_2 = add i16 %tmp_7_0_2_1, %tmp2
  store i16 %tmp_8_0_2_2, i16* %res_addr_2, align 2
  %res_addr_3 = getelementptr [9 x i16]* %res, i64 0, i64 3
  %a_addr_1 = getelementptr [3 x i24]* %a, i64 0, i64 1
  %a_load_1 = load i24* %a_addr_1, align 4
  %tmp_19 = trunc i24 %a_load_1 to i8
  %tmp_5_1 = sext i8 %tmp_19 to i16
  %tmp_7_1 = mul i16 %tmp_8, %tmp_5_1
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_load_1, i32 8, i32 15)
  %tmp_5_1_0_1 = sext i8 %tmp_13 to i16
  %tmp_7_1_0_1 = mul i16 %tmp_6_0_0_1, %tmp_5_1_0_1
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_load_1, i32 16, i32 23)
  %tmp_5_1_0_2 = sext i8 %tmp_14 to i16
  %tmp_7_1_0_2 = mul i16 %tmp_6_0_0_2, %tmp_5_1_0_2
  %tmp3 = add i16 %tmp_7_1_0_2, %tmp_7_1
  %tmp_8_1_0_2 = add i16 %tmp_7_1_0_1, %tmp3
  store i16 %tmp_8_1_0_2, i16* %res_addr_3, align 2
  %res_addr_4 = getelementptr [9 x i16]* %res, i64 0, i64 4
  %tmp_7_1_1 = mul i16 %tmp_6_0_1, %tmp_5_1
  %tmp_7_1_1_1 = mul i16 %tmp_6_0_1_1, %tmp_5_1_0_1
  %tmp_7_1_1_2 = mul i16 %tmp_6_0_1_2, %tmp_5_1_0_2
  %tmp4 = add i16 %tmp_7_1_1_2, %tmp_7_1_1
  %tmp_8_1_1_2 = add i16 %tmp_7_1_1_1, %tmp4
  store i16 %tmp_8_1_1_2, i16* %res_addr_4, align 2
  %res_addr_5 = getelementptr [9 x i16]* %res, i64 0, i64 5
  %tmp_7_1_2 = mul i16 %tmp_6_0_2, %tmp_5_1
  %tmp_7_1_2_1 = mul i16 %tmp_6_0_2_1, %tmp_5_1_0_1
  %tmp_7_1_2_2 = mul i16 %tmp_6_0_2_2, %tmp_5_1_0_2
  %tmp5 = add i16 %tmp_7_1_2_2, %tmp_7_1_2
  %tmp_8_1_2_2 = add i16 %tmp_7_1_2_1, %tmp5
  store i16 %tmp_8_1_2_2, i16* %res_addr_5, align 2
  %res_addr_6 = getelementptr [9 x i16]* %res, i64 0, i64 6
  %a_addr_2 = getelementptr [3 x i24]* %a, i64 0, i64 2
  %a_load_2 = load i24* %a_addr_2, align 4
  %tmp_20 = trunc i24 %a_load_2 to i8
  %tmp_5_2 = sext i8 %tmp_20 to i16
  %tmp_7_2 = mul i16 %tmp_8, %tmp_5_2
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_load_2, i32 8, i32 15)
  %tmp_5_2_0_1 = sext i8 %tmp_16 to i16
  %tmp_7_2_0_1 = mul i16 %tmp_6_0_0_1, %tmp_5_2_0_1
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_load_2, i32 16, i32 23)
  %tmp_5_2_0_2 = sext i8 %tmp_17 to i16
  %tmp_7_2_0_2 = mul i16 %tmp_6_0_0_2, %tmp_5_2_0_2
  %tmp6 = add i16 %tmp_7_2_0_2, %tmp_7_2
  %tmp_8_2_0_2 = add i16 %tmp_7_2_0_1, %tmp6
  store i16 %tmp_8_2_0_2, i16* %res_addr_6, align 2
  %res_addr_7 = getelementptr [9 x i16]* %res, i64 0, i64 7
  %tmp_7_2_1 = mul i16 %tmp_6_0_1, %tmp_5_2
  %tmp_7_2_1_1 = mul i16 %tmp_6_0_1_1, %tmp_5_2_0_1
  %tmp_7_2_1_2 = mul i16 %tmp_6_0_1_2, %tmp_5_2_0_2
  %tmp7 = add i16 %tmp_7_2_1_2, %tmp_7_2_1
  %tmp_8_2_1_2 = add i16 %tmp_7_2_1_1, %tmp7
  store i16 %tmp_8_2_1_2, i16* %res_addr_7, align 2
  %res_addr_8 = getelementptr [9 x i16]* %res, i64 0, i64 8
  %tmp_7_2_2 = mul i16 %tmp_6_0_2, %tmp_5_2
  %tmp_7_2_2_1 = mul i16 %tmp_6_0_2_1, %tmp_5_2_0_1
  %tmp_7_2_2_2 = mul i16 %tmp_6_0_2_2, %tmp_5_2_0_2
  %tmp8 = add i16 %tmp_7_2_2_2, %tmp_7_2_2
  %tmp_8_2_2_2 = add i16 %tmp_7_2_2_1, %tmp8
  store i16 %tmp_8_2_2_2, i16* %res_addr_8, align 2
  ret void
}

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1, metadata !7, metadata !12}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"a", metadata !4, metadata !"char", i32 0, i32 7}
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 0, i32 2, i32 1}
!6 = metadata !{i32 0, i32 0, i32 2}
!7 = metadata !{i32 8, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"a", metadata !10, metadata !"char", i32 0, i32 7}
!10 = metadata !{metadata !5, metadata !11}
!11 = metadata !{i32 1, i32 1, i32 2}
!12 = metadata !{i32 16, i32 23, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"a", metadata !15, metadata !"char", i32 0, i32 7}
!15 = metadata !{metadata !5, metadata !16}
!16 = metadata !{i32 2, i32 2, i32 2}
!17 = metadata !{metadata !18, metadata !22, metadata !26}
!18 = metadata !{i32 0, i32 7, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"b", metadata !21, metadata !"char", i32 0, i32 7}
!21 = metadata !{metadata !6, metadata !5}
!22 = metadata !{i32 8, i32 15, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"b", metadata !25, metadata !"char", i32 0, i32 7}
!25 = metadata !{metadata !11, metadata !5}
!26 = metadata !{i32 16, i32 23, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"b", metadata !29, metadata !"char", i32 0, i32 7}
!29 = metadata !{metadata !16, metadata !5}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 15, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"res", metadata !34, metadata !"short", i32 0, i32 15}
!34 = metadata !{metadata !5, metadata !5}
