; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2/matrixmul_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str4 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=3 type=[4 x i8]*]
@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; [#uses=1 type=i24]
  %empty_6 = trunc i24 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_6
}

; [#uses=0]
define void @matrixmul(i24* %a, i24* %b, i16* %res) {
  %a_row_0 = alloca i8                            ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %a_row_0}, metadata !0) ; [debug variable = a_row[0]]
  %a_row_1_1 = alloca i8                          ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %a_row_1_1}, metadata !22) ; [debug variable = a_row[1]]
  %a_row_2_1 = alloca i8                          ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %a_row_2_1}, metadata !23) ; [debug variable = a_row[2]]
  %b_copy_0_2_3 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_0_2_3}, metadata !24) ; [debug variable = b_copy[0][2]]
  %b_copy_0_2_6 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_0_2_6}, metadata !24) ; [debug variable = b_copy[0][2]]
  %b_copy_0_2_1 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_0_2_1}, metadata !24) ; [debug variable = b_copy[0][2]]
  %b_copy_1_2_3 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_1_2_3}, metadata !29) ; [debug variable = b_copy[1][2]]
  %b_copy_1_2_6 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_1_2_6}, metadata !29) ; [debug variable = b_copy[1][2]]
  %b_copy_1_2_1 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_1_2_1}, metadata !29) ; [debug variable = b_copy[1][2]]
  %b_copy_2_2_3 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_2_2_3}, metadata !31) ; [debug variable = b_copy[2][2]]
  %b_copy_2_2_6 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_2_2_6}, metadata !31) ; [debug variable = b_copy[2][2]]
  %b_copy_2_2_1 = alloca i8                       ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %b_copy_2_2_1}, metadata !31) ; [debug variable = b_copy[2][2]]
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %a), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %b), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %res), !map !63
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  call void @llvm.dbg.value(metadata !{i24* %a}, i64 0, metadata !68), !dbg !70 ; [debug line = 49:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i24* %b}, i64 0, metadata !71), !dbg !73 ; [debug line = 50:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i16* %res}, i64 0, metadata !74), !dbg !76 ; [debug line = 51:16] [debug variable = res]
  call void (...)* @_ssdm_op_SpecInterface(i24* %a, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i24* %b, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %res, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %1, !dbg !77                           ; [debug line = 63:21]

; <label>:1                                       ; preds = %.loopexit, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.loopexit ] ; [#uses=2 type=i4]
  %i = phi i2 [ 0, %0 ], [ %i_mid2, %.loopexit ]  ; [#uses=2 type=i2]
  %j = phi i2 [ 0, %0 ], [ %j_1, %.loopexit ]     ; [#uses=2 type=i2]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i4 %indvar_flatten, 1 ; [#uses=1 type=i4]
  br i1 %exitcond_flatten, label %2, label %.reset

.preheader5.0:                                    ; preds = %.reset
  %a_read = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %a), !dbg !79 ; [#uses=3 type=i24] [debug line = 72:11]
  %a_row_0_1 = trunc i24 %a_read to i8, !dbg !79  ; [#uses=1 type=i8] [debug line = 72:11]
  call void @llvm.dbg.value(metadata !{i8 %a_row_0_1}, i64 0, metadata !0), !dbg !79 ; [debug line = 72:11] [debug variable = a_row[0]]
  %a_row_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_read, i32 8, i32 15), !dbg !79 ; [#uses=1 type=i8] [debug line = 72:11]
  call void @llvm.dbg.value(metadata !{i8 %a_row_1}, i64 0, metadata !22), !dbg !79 ; [debug line = 72:11] [debug variable = a_row[1]]
  %a_row_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a_read, i32 16, i32 23), !dbg !79 ; [#uses=1 type=i8] [debug line = 72:11]
  call void @llvm.dbg.value(metadata !{i8 %a_row_2}, i64 0, metadata !23), !dbg !79 ; [debug line = 72:11] [debug variable = a_row[2]]
  store i8 %a_row_2, i8* %a_row_2_1, !dbg !79     ; [debug line = 72:11]
  store i8 %a_row_1, i8* %a_row_1_1, !dbg !79     ; [debug line = 72:11]
  store i8 %a_row_0_1, i8* %a_row_0, !dbg !79     ; [debug line = 72:11]
  br label %.loopexit6

.loopexit6:                                       ; preds = %.reset, %.preheader5.0
  br i1 %tmp, label %.preheader.preheader_ifconv, label %.loopexit, !dbg !85 ; [debug line = 75:6]

.preheader.preheader_ifconv:                      ; preds = %.loopexit6
  %b_copy_0_2_3_load = load i8* %b_copy_0_2_3     ; [#uses=1 type=i8]
  %b_copy_0_2_6_load = load i8* %b_copy_0_2_6     ; [#uses=2 type=i8]
  %b_copy_0_2_1_load = load i8* %b_copy_0_2_1     ; [#uses=2 type=i8]
  %b_copy_1_2_3_load = load i8* %b_copy_1_2_3     ; [#uses=1 type=i8]
  %b_copy_1_2_6_load = load i8* %b_copy_1_2_6     ; [#uses=2 type=i8]
  %b_copy_1_2_1_load = load i8* %b_copy_1_2_1     ; [#uses=2 type=i8]
  %b_copy_2_2_3_load = load i8* %b_copy_2_2_3     ; [#uses=1 type=i8]
  %b_copy_2_2_6_load = load i8* %b_copy_2_2_6     ; [#uses=2 type=i8]
  %b_copy_2_2_1_load = load i8* %b_copy_2_2_1     ; [#uses=2 type=i8]
  %b_read = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %b), !dbg !86 ; [#uses=3 type=i24] [debug line = 77:16]
  %b_copy_0_2_9 = trunc i24 %b_read to i8, !dbg !86 ; [#uses=3 type=i8] [debug line = 77:16]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_9}, i64 0, metadata !24), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_9}, i64 0, metadata !89), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][0]]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_9}, i64 0, metadata !90), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][1]]
  %sel_tmp = icmp eq i2 %j_mid2, 1                ; [#uses=6 type=i1]
  %b_copy_0_2 = select i1 %sel_tmp, i8 %b_copy_0_2_1_load, i8 %b_copy_0_2_9 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2}, i64 0, metadata !24), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %b_copy_0_2_2 = select i1 %tmp_3, i8 %b_copy_0_2_1_load, i8 %b_copy_0_2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_2}, i64 0, metadata !24), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %b_copy_0_2_4 = select i1 %sel_tmp, i8 %b_copy_0_2_9, i8 %b_copy_0_2_6_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_4}, i64 0, metadata !24), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %b_copy_0_2_5 = select i1 %tmp_3, i8 %b_copy_0_2_6_load, i8 %b_copy_0_2_4 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_5}, i64 0, metadata !24), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %b_copy_0_2_7 = select i1 %tmp_3, i8 %b_copy_0_2_9, i8 %b_copy_0_2_3_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_0_2_7}, i64 0, metadata !24), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %b_copy_1_2_9 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_read, i32 8, i32 15), !dbg !86 ; [#uses=3 type=i8] [debug line = 77:16]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_9}, i64 0, metadata !29), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_9}, i64 0, metadata !91), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][0]]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_9}, i64 0, metadata !92), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][1]]
  %b_copy_1_2 = select i1 %sel_tmp, i8 %b_copy_1_2_1_load, i8 %b_copy_1_2_9 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2}, i64 0, metadata !29), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %b_copy_1_2_2 = select i1 %tmp_3, i8 %b_copy_1_2_1_load, i8 %b_copy_1_2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_2}, i64 0, metadata !29), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %b_copy_1_2_4 = select i1 %sel_tmp, i8 %b_copy_1_2_9, i8 %b_copy_1_2_6_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_4}, i64 0, metadata !29), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %b_copy_1_2_5 = select i1 %tmp_3, i8 %b_copy_1_2_6_load, i8 %b_copy_1_2_4 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_5}, i64 0, metadata !29), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %b_copy_1_2_7 = select i1 %tmp_3, i8 %b_copy_1_2_9, i8 %b_copy_1_2_3_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_1_2_7}, i64 0, metadata !29), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %b_copy_2_2_9 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b_read, i32 16, i32 23), !dbg !86 ; [#uses=3 type=i8] [debug line = 77:16]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_9}, i64 0, metadata !31), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_9}, i64 0, metadata !93), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][0]]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_9}, i64 0, metadata !94), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][1]]
  %b_copy_2_2 = select i1 %sel_tmp, i8 %b_copy_2_2_1_load, i8 %b_copy_2_2_9 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2}, i64 0, metadata !31), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %b_copy_2_2_2 = select i1 %tmp_3, i8 %b_copy_2_2_1_load, i8 %b_copy_2_2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_2}, i64 0, metadata !31), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %b_copy_2_2_4 = select i1 %sel_tmp, i8 %b_copy_2_2_9, i8 %b_copy_2_2_6_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_4}, i64 0, metadata !31), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %b_copy_2_2_5 = select i1 %tmp_3, i8 %b_copy_2_2_6_load, i8 %b_copy_2_2_4 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_5}, i64 0, metadata !31), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %b_copy_2_2_7 = select i1 %tmp_3, i8 %b_copy_2_2_9, i8 %b_copy_2_2_3_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_copy_2_2_7}, i64 0, metadata !31), !dbg !86 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  store i8 %b_copy_2_2_2, i8* %b_copy_2_2_1, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_2_2_5, i8* %b_copy_2_2_6, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_2_2_7, i8* %b_copy_2_2_3, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_1_2_2, i8* %b_copy_1_2_1, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_1_2_5, i8* %b_copy_1_2_6, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_1_2_7, i8* %b_copy_1_2_3, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_0_2_2, i8* %b_copy_0_2_1, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_0_2_5, i8* %b_copy_0_2_6, !dbg !86 ; [debug line = 77:16]
  store i8 %b_copy_0_2_7, i8* %b_copy_0_2_3, !dbg !86 ; [debug line = 77:16]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader_ifconv, %.loopexit6
  %a_row_0_load = load i8* %a_row_0, !dbg !95     ; [#uses=1 type=i8] [debug line = 82:7]
  %a_row_1_1_load = load i8* %a_row_1_1, !dbg !95 ; [#uses=1 type=i8] [debug line = 82:7]
  %a_row_2_1_load = load i8* %a_row_2_1, !dbg !95 ; [#uses=1 type=i8] [debug line = 82:7]
  %b_copy_0_2_3_load_1 = load i8* %b_copy_0_2_3   ; [#uses=1 type=i8]
  %b_copy_0_2_6_load_1 = load i8* %b_copy_0_2_6   ; [#uses=1 type=i8]
  %b_copy_0_2_1_load_1 = load i8* %b_copy_0_2_1   ; [#uses=1 type=i8]
  %b_copy_1_2_3_load_1 = load i8* %b_copy_1_2_3   ; [#uses=1 type=i8]
  %b_copy_1_2_6_load_1 = load i8* %b_copy_1_2_6   ; [#uses=1 type=i8]
  %b_copy_1_2_1_load_1 = load i8* %b_copy_1_2_1   ; [#uses=1 type=i8]
  %b_copy_2_2_3_load_1 = load i8* %b_copy_2_2_3   ; [#uses=1 type=i8]
  %b_copy_2_2_6_load_1 = load i8* %b_copy_2_2_6   ; [#uses=1 type=i8]
  %b_copy_2_2_1_load_1 = load i8* %b_copy_2_2_1   ; [#uses=1 type=i8]
  %tmp_s = sext i8 %a_row_0_load to i16, !dbg !95 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_1 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_copy_0_2_3_load_1, i8 %b_copy_0_2_6_load_1, i8 %b_copy_0_2_1_load_1, i2 %j_mid2) ; [#uses=1 type=i8]
  %tmp_5 = sext i8 %tmp_1 to i16, !dbg !95        ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_6 = mul i16 %tmp_s, %tmp_5, !dbg !95       ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_5_1 = sext i8 %a_row_1_1_load to i16, !dbg !95 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_7 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_copy_1_2_3_load_1, i8 %b_copy_1_2_6_load_1, i8 %b_copy_1_2_1_load_1, i2 %j_mid2) ; [#uses=1 type=i8]
  %tmp_8_1 = sext i8 %tmp_7 to i16, !dbg !95      ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_10_1 = mul i16 %tmp_5_1, %tmp_8_1, !dbg !95 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_5_2 = sext i8 %a_row_2_1_load to i16, !dbg !95 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_8 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_copy_2_2_3_load_1, i8 %b_copy_2_2_6_load_1, i8 %b_copy_2_2_1_load_1, i2 %j_mid2) ; [#uses=1 type=i8]
  %tmp_8_2 = sext i8 %tmp_8 to i16, !dbg !95      ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_10_2 = mul i16 %tmp_5_2, %tmp_8_2, !dbg !95 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp9 = add i16 %tmp_10_1, %tmp_10_2, !dbg !95  ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp_11_2 = add i16 %tmp9, %tmp_6, !dbg !95     ; [#uses=1 type=i16] [debug line = 82:7]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %res, i16 %tmp_11_2), !dbg !95 ; [debug line = 82:7]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str4, i32 %tmp_4) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 83:5]
  %j_1 = add i2 %j_mid2, 1, !dbg !97              ; [#uses=1 type=i2] [debug line = 65:32]
  call void @llvm.dbg.value(metadata !{i2 %j_1}, i64 0, metadata !98), !dbg !97 ; [debug line = 65:32] [debug variable = j]
  br label %1, !dbg !97                           ; [debug line = 65:32]

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  %exitcond = icmp eq i2 %j, -1, !dbg !100        ; [#uses=2 type=i1] [debug line = 65:23]
  %j_mid2 = select i1 %exitcond, i2 0, i2 %j      ; [#uses=6 type=i2]
  %i_s = add i2 %i, 1, !dbg !101                  ; [#uses=1 type=i2] [debug line = 63:30]
  %i_mid2 = select i1 %exitcond, i2 %i_s, i2 %i   ; [#uses=2 type=i2]
  %tmp = icmp eq i2 %i_mid2, 0, !dbg !85          ; [#uses=1 type=i1] [debug line = 75:6]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str4) nounwind, !dbg !102 ; [debug line = 65:38]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str4) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 65:38]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !103 ; [debug line = 66:1]
  %tmp_3 = icmp eq i2 %j_mid2, 0, !dbg !104       ; [#uses=10 type=i1] [debug line = 70:7]
  br i1 %tmp_3, label %.preheader5.0, label %.loopexit6, !dbg !104 ; [debug line = 70:7]

; <label>:2                                       ; preds = %1
  ret void, !dbg !105                             ; [debug line = 85:1]
}

; [#uses=3]
define weak i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ] ; [#uses=1 type=i8]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

; [#uses=2]
define weak i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24*) {
entry:
  %empty = call i24 @_autotb_FifoRead_i24(i24* %0) ; [#uses=1 type=i24]
  ret i24 %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1) ; [#uses=0 type=i16]
  ret void
}

; [#uses=12]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare i24 @_autotb_FifoRead_i24(i24*)

; [#uses=1]
declare i16 @_autotb_FifoWrite_i16(i16*, i16)

; [#uses=1]
declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786688, metadata !1, metadata !"a_row[0]", null, i32 58, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1 = metadata !{i32 786443, metadata !2, i32 52, i32 1, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !3, i32 48, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 52} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"matrixmul.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{null, metadata !6, metadata !12, metadata !15}
!6 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !8, metadata !10, i32 0, i32 0} ; [ DW_TAG_array_type ]
!8 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !3, i32 60, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!9 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !14, metadata !10, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !3, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !17, metadata !10, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{i32 786454, null, metadata !"result_t", metadata !3, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !8, metadata !10, i32 0, i32 0} ; [ DW_TAG_array_type ]
!22 = metadata !{i32 786688, metadata !1, metadata !"a_row[1]", null, i32 58, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!23 = metadata !{i32 786688, metadata !1, metadata !"a_row[2]", null, i32 58, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!24 = metadata !{i32 790529, metadata !25, metadata !"b_copy[0][2]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!25 = metadata !{i32 786688, metadata !1, metadata !"b_copy[0]", null, i32 59, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !14, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !11, metadata !11}
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !14, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 790529, metadata !30, metadata !"b_copy[1][2]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!30 = metadata !{i32 786688, metadata !1, metadata !"b_copy[1]", null, i32 59, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 790529, metadata !32, metadata !"b_copy[2][2]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!32 = metadata !{i32 786688, metadata !1, metadata !"b_copy[2]", null, i32 59, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{metadata !34, metadata !40, metadata !45}
!34 = metadata !{i32 0, i32 7, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"a", metadata !37, metadata !"char", i32 0, i32 7}
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 0, i32 2, i32 1}
!39 = metadata !{i32 0, i32 0, i32 2}
!40 = metadata !{i32 8, i32 15, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"a", metadata !43, metadata !"char", i32 0, i32 7}
!43 = metadata !{metadata !38, metadata !44}
!44 = metadata !{i32 1, i32 1, i32 2}
!45 = metadata !{i32 16, i32 23, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"a", metadata !48, metadata !"char", i32 0, i32 7}
!48 = metadata !{metadata !38, metadata !49}
!49 = metadata !{i32 2, i32 2, i32 2}
!50 = metadata !{metadata !51, metadata !55, metadata !59}
!51 = metadata !{i32 0, i32 7, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"b", metadata !54, metadata !"char", i32 0, i32 7}
!54 = metadata !{metadata !39, metadata !38}
!55 = metadata !{i32 8, i32 15, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"b", metadata !58, metadata !"char", i32 0, i32 7}
!58 = metadata !{metadata !44, metadata !38}
!59 = metadata !{i32 16, i32 23, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"b", metadata !62, metadata !"char", i32 0, i32 7}
!62 = metadata !{metadata !49, metadata !38}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 15, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"res", metadata !67, metadata !"short", i32 0, i32 15}
!67 = metadata !{metadata !38, metadata !38}
!68 = metadata !{i32 786689, metadata !2, metadata !"a", null, i32 49, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !8, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!70 = metadata !{i32 49, i32 15, metadata !2, null}
!71 = metadata !{i32 786689, metadata !2, metadata !"b", null, i32 50, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !14, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{i32 50, i32 15, metadata !2, null}
!74 = metadata !{i32 786689, metadata !2, metadata !"res", null, i32 51, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !17, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!76 = metadata !{i32 51, i32 16, metadata !2, null}
!77 = metadata !{i32 63, i32 21, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, i32 63, i32 8, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 72, i32 11, metadata !80, null}
!80 = metadata !{i32 786443, metadata !81, i32 72, i32 11, metadata !3, i32 6} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !82, i32 71, i32 20, metadata !3, i32 5} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !83, i32 65, i32 37, metadata !3, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !84, i32 65, i32 10, metadata !3, i32 3} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !78, i32 63, i32 35, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 75, i32 6, metadata !82, null}
!86 = metadata !{i32 77, i32 16, metadata !87, null}
!87 = metadata !{i32 786443, metadata !88, i32 77, i32 16, metadata !3, i32 8} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !82, i32 76, i32 24, metadata !3, i32 7} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 790529, metadata !25, metadata !"b_copy[0][0]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!90 = metadata !{i32 790529, metadata !25, metadata !"b_copy[0][1]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!91 = metadata !{i32 790529, metadata !30, metadata !"b_copy[1][0]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!92 = metadata !{i32 790529, metadata !30, metadata !"b_copy[1][1]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!93 = metadata !{i32 790529, metadata !32, metadata !"b_copy[2][0]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!94 = metadata !{i32 790529, metadata !32, metadata !"b_copy[2][1]", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!95 = metadata !{i32 82, i32 7, metadata !82, null}
!96 = metadata !{i32 83, i32 5, metadata !82, null}
!97 = metadata !{i32 65, i32 32, metadata !83, null}
!98 = metadata !{i32 786688, metadata !83, metadata !"j", metadata !3, i32 65, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!100 = metadata !{i32 65, i32 23, metadata !83, null}
!101 = metadata !{i32 63, i32 30, metadata !78, null}
!102 = metadata !{i32 65, i32 38, metadata !82, null}
!103 = metadata !{i32 66, i32 1, metadata !82, null}
!104 = metadata !{i32 70, i32 7, metadata !82, null}
!105 = metadata !{i32 85, i32 1, metadata !1, null}
