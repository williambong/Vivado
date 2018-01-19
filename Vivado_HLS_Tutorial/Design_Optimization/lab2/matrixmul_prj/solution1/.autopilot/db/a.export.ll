; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2/matrixmul_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"Col\00", align 1
@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00"
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00"

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_6 = trunc i24 %empty to i8
  ret i8 %empty_6
}

define void @matrixmul(i24* %a, i24* %b, i16* %res) {
  %a_row_0 = alloca i8
  %a_row_1_1 = alloca i8
  %a_row_2_1 = alloca i8
  %b_copy_0_2_3 = alloca i8
  %b_copy_0_2_6 = alloca i8
  %b_copy_0_2_1 = alloca i8
  %b_copy_1_2_3 = alloca i8
  %b_copy_1_2_6 = alloca i8
  %b_copy_1_2_1 = alloca i8
  %b_copy_2_2_3 = alloca i8
  %b_copy_2_2_6 = alloca i8
  %b_copy_2_2_1 = alloca i8
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %a), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %b), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %res), !map !30
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %a, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i24* %b, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %res, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %1

; <label>:1                                       ; preds = %0, %.loopexit
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.loopexit ]
  %i = phi i2 [ 0, %0 ], [ %i_mid2, %.loopexit ]
  %j = phi i2 [ 0, %0 ], [ %j_1, %.loopexit ]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7
  %indvar_flatten_next = add i4 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.preheader5.0:                                    ; preds = %.reset
  %a_read = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %a)
  %a_row_0_1 = trunc i24 %a_read to i8
  %a_row_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_read, i32 8, i32 15)
  %a_row_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_read, i32 16, i32 23)
  store i8 %a_row_2, i8* %a_row_2_1
  store i8 %a_row_1, i8* %a_row_1_1
  store i8 %a_row_0_1, i8* %a_row_0
  br label %.loopexit6

.loopexit6:                                       ; preds = %.preheader5.0, %.reset
  br i1 %tmp, label %.preheader.preheader_ifconv, label %.loopexit

.preheader.preheader_ifconv:                      ; preds = %.loopexit6
  %b_copy_0_2_3_load = load i8* %b_copy_0_2_3
  %b_copy_0_2_6_load = load i8* %b_copy_0_2_6
  %b_copy_0_2_1_load = load i8* %b_copy_0_2_1
  %b_copy_1_2_3_load = load i8* %b_copy_1_2_3
  %b_copy_1_2_6_load = load i8* %b_copy_1_2_6
  %b_copy_1_2_1_load = load i8* %b_copy_1_2_1
  %b_copy_2_2_3_load = load i8* %b_copy_2_2_3
  %b_copy_2_2_6_load = load i8* %b_copy_2_2_6
  %b_copy_2_2_1_load = load i8* %b_copy_2_2_1
  %b_read = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %b)
  %b_copy_0_2_9 = trunc i24 %b_read to i8
  %sel_tmp = icmp eq i2 %j_mid2, 1
  %b_copy_0_2 = select i1 %sel_tmp, i8 %b_copy_0_2_1_load, i8 %b_copy_0_2_9
  %b_copy_0_2_2 = select i1 %tmp_3, i8 %b_copy_0_2_1_load, i8 %b_copy_0_2
  %b_copy_0_2_4 = select i1 %sel_tmp, i8 %b_copy_0_2_9, i8 %b_copy_0_2_6_load
  %b_copy_0_2_5 = select i1 %tmp_3, i8 %b_copy_0_2_6_load, i8 %b_copy_0_2_4
  %b_copy_0_2_7 = select i1 %tmp_3, i8 %b_copy_0_2_9, i8 %b_copy_0_2_3_load
  %b_copy_1_2_9 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_read, i32 8, i32 15)
  %b_copy_1_2 = select i1 %sel_tmp, i8 %b_copy_1_2_1_load, i8 %b_copy_1_2_9
  %b_copy_1_2_2 = select i1 %tmp_3, i8 %b_copy_1_2_1_load, i8 %b_copy_1_2
  %b_copy_1_2_4 = select i1 %sel_tmp, i8 %b_copy_1_2_9, i8 %b_copy_1_2_6_load
  %b_copy_1_2_5 = select i1 %tmp_3, i8 %b_copy_1_2_6_load, i8 %b_copy_1_2_4
  %b_copy_1_2_7 = select i1 %tmp_3, i8 %b_copy_1_2_9, i8 %b_copy_1_2_3_load
  %b_copy_2_2_9 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_read, i32 16, i32 23)
  %b_copy_2_2 = select i1 %sel_tmp, i8 %b_copy_2_2_1_load, i8 %b_copy_2_2_9
  %b_copy_2_2_2 = select i1 %tmp_3, i8 %b_copy_2_2_1_load, i8 %b_copy_2_2
  %b_copy_2_2_4 = select i1 %sel_tmp, i8 %b_copy_2_2_9, i8 %b_copy_2_2_6_load
  %b_copy_2_2_5 = select i1 %tmp_3, i8 %b_copy_2_2_6_load, i8 %b_copy_2_2_4
  %b_copy_2_2_7 = select i1 %tmp_3, i8 %b_copy_2_2_9, i8 %b_copy_2_2_3_load
  store i8 %b_copy_2_2_2, i8* %b_copy_2_2_1
  store i8 %b_copy_2_2_5, i8* %b_copy_2_2_6
  store i8 %b_copy_2_2_7, i8* %b_copy_2_2_3
  store i8 %b_copy_1_2_2, i8* %b_copy_1_2_1
  store i8 %b_copy_1_2_5, i8* %b_copy_1_2_6
  store i8 %b_copy_1_2_7, i8* %b_copy_1_2_3
  store i8 %b_copy_0_2_2, i8* %b_copy_0_2_1
  store i8 %b_copy_0_2_5, i8* %b_copy_0_2_6
  store i8 %b_copy_0_2_7, i8* %b_copy_0_2_3
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader_ifconv, %.loopexit6
  %a_row_0_load = load i8* %a_row_0
  %a_row_1_1_load = load i8* %a_row_1_1
  %a_row_2_1_load = load i8* %a_row_2_1
  %b_copy_0_2_3_load_1 = load i8* %b_copy_0_2_3
  %b_copy_0_2_6_load_1 = load i8* %b_copy_0_2_6
  %b_copy_0_2_1_load_1 = load i8* %b_copy_0_2_1
  %b_copy_1_2_3_load_1 = load i8* %b_copy_1_2_3
  %b_copy_1_2_6_load_1 = load i8* %b_copy_1_2_6
  %b_copy_1_2_1_load_1 = load i8* %b_copy_1_2_1
  %b_copy_2_2_3_load_1 = load i8* %b_copy_2_2_3
  %b_copy_2_2_6_load_1 = load i8* %b_copy_2_2_6
  %b_copy_2_2_1_load_1 = load i8* %b_copy_2_2_1
  %tmp_s = sext i8 %a_row_0_load to i16
  %tmp_1 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_copy_0_2_3_load_1, i8 %b_copy_0_2_6_load_1, i8 %b_copy_0_2_1_load_1, i2 %j_mid2)
  %tmp_5 = sext i8 %tmp_1 to i16
  %tmp_6 = mul i16 %tmp_s, %tmp_5
  %tmp_5_1 = sext i8 %a_row_1_1_load to i16
  %tmp_7 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_copy_1_2_3_load_1, i8 %b_copy_1_2_6_load_1, i8 %b_copy_1_2_1_load_1, i2 %j_mid2)
  %tmp_8_1 = sext i8 %tmp_7 to i16
  %tmp_10_1 = mul i16 %tmp_5_1, %tmp_8_1
  %tmp_5_2 = sext i8 %a_row_2_1_load to i16
  %tmp_8 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_copy_2_2_3_load_1, i8 %b_copy_2_2_6_load_1, i8 %b_copy_2_2_1_load_1, i2 %j_mid2)
  %tmp_8_2 = sext i8 %tmp_8 to i16
  %tmp_10_2 = mul i16 %tmp_5_2, %tmp_8_2
  %tmp9 = add i16 %tmp_10_1, %tmp_10_2
  %tmp_11_2 = add i16 %tmp9, %tmp_6
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %res, i16 %tmp_11_2)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str4, i32 %tmp_4) nounwind
  %j_1 = add i2 %j_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %exitcond = icmp eq i2 %j, -1
  %j_mid2 = select i1 %exitcond, i2 0, i2 %j
  %i_s = add i2 %i, 1
  %i_mid2 = select i1 %exitcond, i2 %i_s, i2 %i
  %tmp = icmp eq i2 %i_mid2, 0
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str4) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3 = icmp eq i2 %j_mid2, 0
  br i1 %tmp_3, label %.preheader5.0, label %.loopexit6

; <label>:2                                       ; preds = %1
  ret void
}

define weak i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24*) {
entry:
  %empty = call i24 @_autotb_FifoRead_i24(i24* %0)
  ret i24 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1)
  ret void
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i24 @_autotb_FifoRead_i24(i24*)

declare i16 @_autotb_FifoWrite_i16(i16*, i16)

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
