; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Interface_Synthesis/lab4/axi_interfaces_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=16 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=49 type=[1 x i8]*]
@acc_0 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_1 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_2 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_3 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_4 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_5 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_6 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_7 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@p_str3 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=3 type=[9 x i8]*]
@axi_interfaces_str = internal unnamed_addr constant [15 x i8] c"axi_interfaces\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=16]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=0]
declare void @_ssdm_SpecLoopRewind(...) nounwind

; [#uses=16]
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

; [#uses=16]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @axi_interfaces(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, i16* %d_o_4, i16* %d_o_5, i16* %d_o_6, i16* %d_o_7, i16* %d_i_0, i16* %d_i_1, i16* %d_i_2, i16* %d_i_3, i16* %d_i_4, i16* %d_i_5, i16* %d_i_6, i16* %d_i_7) {
  call void @llvm.dbg.value(metadata !{i16* %d_o_0}, i64 0, metadata !0), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[0]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_1}, i64 0, metadata !17), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[1]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_2}, i64 0, metadata !18), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[2]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_3}, i64 0, metadata !19), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[3]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_4}, i64 0, metadata !20), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[4]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_5}, i64 0, metadata !21), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[5]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_6}, i64 0, metadata !22), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[6]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_7}, i64 0, metadata !23), !dbg !16 ; [debug line = 57:29] [debug variable = d_o[7]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_0}, i64 0, metadata !24), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[0]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_1}, i64 0, metadata !28), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[1]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_2}, i64 0, metadata !29), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[2]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_3}, i64 0, metadata !30), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[3]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_4}, i64 0, metadata !31), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[4]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_5}, i64 0, metadata !32), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[5]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_6}, i64 0, metadata !33), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[6]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_7}, i64 0, metadata !34), !dbg !27 ; [debug line = 57:47] [debug variable = d_i[7]]
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_0, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_1, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_2, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_3, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_4, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_5, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_6, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_7, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_0, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_1, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_2, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_3, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_4, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_5, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_6, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_7, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %rewind_header, !dbg !35               ; [debug line = 64:17]

; <label>:1                                       ; preds = %rewind_header, %rewind_init
  %i1_cast = zext i5 %i1 to i6                    ; [#uses=1 type=i6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str3) nounwind, !dbg !38 ; [debug line = 64:35]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str3) nounwind, !dbg !38 ; [#uses=1 type=i32] [debug line = 64:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !40 ; [debug line = 65:1]
  %acc_0_load = load i32* @acc_0, align 16, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_0_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_0), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2 = sext i16 %d_i_0_read to i32, !dbg !41  ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3 = add nsw i32 %tmp_2, %acc_0_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3, i32* @acc_0, align 16, !dbg !41 ; [debug line = 66:3]
  %tmp_1 = trunc i32 %tmp_3 to i16, !dbg !42      ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_0, i16 %tmp_1), !dbg !42 ; [debug line = 67:3]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str3, i32 %tmp) nounwind, !dbg !43 ; [#uses=0 type=i32] [debug line = 68:2]
  %acc_1_load = load i32* @acc_1, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_1_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_1), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_1 = sext i16 %d_i_1_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_1 = add nsw i32 %tmp_2_1, %acc_1_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_1, i32* @acc_1, align 4, !dbg !41 ; [debug line = 66:3]
  %tmp_4 = trunc i32 %tmp_3_1 to i16, !dbg !42    ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_1, i16 %tmp_4), !dbg !42 ; [debug line = 67:3]
  %acc_2_load = load i32* @acc_2, align 8, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_2_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_2), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_2 = sext i16 %d_i_2_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_2 = add nsw i32 %tmp_2_2, %acc_2_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_2, i32* @acc_2, align 8, !dbg !41 ; [debug line = 66:3]
  %tmp_5 = trunc i32 %tmp_3_2 to i16, !dbg !42    ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_2, i16 %tmp_5), !dbg !42 ; [debug line = 67:3]
  %acc_3_load = load i32* @acc_3, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_3_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_3), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_3 = sext i16 %d_i_3_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_3 = add nsw i32 %tmp_2_3, %acc_3_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_3, i32* @acc_3, align 4, !dbg !41 ; [debug line = 66:3]
  %tmp_6 = trunc i32 %tmp_3_3 to i16, !dbg !42    ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_3, i16 %tmp_6), !dbg !42 ; [debug line = 67:3]
  %acc_4_load = load i32* @acc_4, align 16, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_4_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_4), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_4 = sext i16 %d_i_4_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_4 = add nsw i32 %tmp_2_4, %acc_4_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_4, i32* @acc_4, align 16, !dbg !41 ; [debug line = 66:3]
  %tmp_7 = trunc i32 %tmp_3_4 to i16, !dbg !42    ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_4, i16 %tmp_7), !dbg !42 ; [debug line = 67:3]
  %acc_5_load = load i32* @acc_5, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_5_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_5), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_5 = sext i16 %d_i_5_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_5 = add nsw i32 %tmp_2_5, %acc_5_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_5, i32* @acc_5, align 4, !dbg !41 ; [debug line = 66:3]
  %tmp_8 = trunc i32 %tmp_3_5 to i16, !dbg !42    ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_5, i16 %tmp_8), !dbg !42 ; [debug line = 67:3]
  %acc_6_load = load i32* @acc_6, align 8, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_6_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_6), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_6 = sext i16 %d_i_6_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_6 = add nsw i32 %tmp_2_6, %acc_6_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_6, i32* @acc_6, align 8, !dbg !41 ; [debug line = 66:3]
  %tmp_9 = trunc i32 %tmp_3_6 to i16, !dbg !42    ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_6, i16 %tmp_9), !dbg !42 ; [debug line = 67:3]
  %acc_7_load = load i32* @acc_7, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %d_i_7_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_7), !dbg !41 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2_7 = sext i16 %d_i_7_read to i32, !dbg !41 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3_7 = add nsw i32 %tmp_2_7, %acc_7_load, !dbg !41 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3_7, i32* @acc_7, align 4, !dbg !41 ; [debug line = 66:3]
  %tmp_10 = trunc i32 %tmp_3_7 to i16, !dbg !42   ; [#uses=1 type=i16] [debug line = 67:3]
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_7, i16 %tmp_10), !dbg !42 ; [debug line = 67:3]
  %i_1_7 = add i6 8, %i1_cast, !dbg !44           ; [#uses=2 type=i6] [debug line = 64:29]
  %tmp_11 = trunc i6 %i_1_7 to i5, !dbg !35       ; [#uses=1 type=i5] [debug line = 64:17]
  %exitcond = icmp eq i6 %i_1_7, -32, !dbg !35    ; [#uses=1 type=i1] [debug line = 64:17]
  br i1 %exitcond, label %2, label %rewind_header, !dbg !35 ; [debug line = 64:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_Return(), !dbg !45   ; [debug line = 69:1]
  br label %rewind_header, !dbg !45               ; [debug line = 69:1]

rewind_init:                                      ; preds = %rewind_header
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_7), !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_6), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_5), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_4), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_3), !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_2), !map !76
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_1), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_0), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_7), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_6), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_5), !map !102
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_4), !map !106
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_3), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_2), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_1), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_0), !map !122
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @axi_interfaces_str) nounwind
  br label %1, !dbg !35                           ; [debug line = 64:17]

rewind_header:                                    ; preds = %2, %1, %0
  %do_init = phi i1 [ true, %0 ], [ false, %1 ], [ true, %2 ] ; [#uses=1 type=i1]
  %i1 = phi i5 [ 0, %0 ], [ %tmp_11, %1 ], [ 0, %2 ] ; [#uses=1 type=i5]
  br i1 %do_init, label %rewind_init, label %1
}

; [#uses=8]
define weak void @_ssdm_op_Write.axis.volatile.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

; [#uses=8]
define weak i16 @_ssdm_op_Read.axis.volatile.i16P(i16*) {
entry:
  %empty = load i16* %0                           ; [#uses=1 type=i16]
  ret i16 %empty
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_Return(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 790531, metadata !1, metadata !"d_o[0]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1 = metadata !{i32 786689, metadata !2, metadata !"d_o", null, i32 57, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"axi_interfaces", metadata !"axi_interfaces", metadata !"", metadata !3, i32 57, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 57} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"axi_interfaces.c", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Interface_Synthesis/lab4", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{null, metadata !6, metadata !9}
!6 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 786454, null, metadata !"dout_t", metadata !3, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"din_t", metadata !3, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !7, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!16 = metadata !{i32 57, i32 29, metadata !2, null}
!17 = metadata !{i32 790531, metadata !1, metadata !"d_o[1]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!18 = metadata !{i32 790531, metadata !1, metadata !"d_o[2]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!19 = metadata !{i32 790531, metadata !1, metadata !"d_o[3]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!20 = metadata !{i32 790531, metadata !1, metadata !"d_o[4]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!21 = metadata !{i32 790531, metadata !1, metadata !"d_o[5]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!22 = metadata !{i32 790531, metadata !1, metadata !"d_o[6]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!23 = metadata !{i32 790531, metadata !1, metadata !"d_o[7]", null, i32 57, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!24 = metadata !{i32 790531, metadata !25, metadata !"d_i[0]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!25 = metadata !{i32 786689, metadata !2, metadata !"d_i", null, i32 57, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !10, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{i32 57, i32 47, metadata !2, null}
!28 = metadata !{i32 790531, metadata !25, metadata !"d_i[1]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!29 = metadata !{i32 790531, metadata !25, metadata !"d_i[2]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!30 = metadata !{i32 790531, metadata !25, metadata !"d_i[3]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!31 = metadata !{i32 790531, metadata !25, metadata !"d_i[4]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!32 = metadata !{i32 790531, metadata !25, metadata !"d_i[5]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!33 = metadata !{i32 790531, metadata !25, metadata !"d_i[6]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!34 = metadata !{i32 790531, metadata !25, metadata !"d_i[7]", null, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!35 = metadata !{i32 64, i32 17, metadata !36, null}
!36 = metadata !{i32 786443, metadata !37, i32 64, i32 12, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !2, i32 57, i32 59, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 64, i32 35, metadata !39, null}
!39 = metadata !{i32 786443, metadata !36, i32 64, i32 34, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 65, i32 1, metadata !39, null}
!41 = metadata !{i32 66, i32 3, metadata !39, null}
!42 = metadata !{i32 67, i32 3, metadata !39, null}
!43 = metadata !{i32 68, i32 2, metadata !39, null}
!44 = metadata !{i32 64, i32 29, metadata !36, null}
!45 = metadata !{i32 69, i32 1, metadata !37, null}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 15, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"d_o", metadata !50, metadata !"short", i32 0, i32 15}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 7, i32 31, i32 8}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 15, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"d_o", metadata !56, metadata !"short", i32 0, i32 15}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 6, i32 30, i32 8}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 15, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"d_o", metadata !62, metadata !"short", i32 0, i32 15}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 5, i32 29, i32 8}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 15, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"d_o", metadata !68, metadata !"short", i32 0, i32 15}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 4, i32 28, i32 8}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 15, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"d_o", metadata !74, metadata !"short", i32 0, i32 15}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 3, i32 27, i32 8}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 15, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"d_o", metadata !80, metadata !"short", i32 0, i32 15}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 2, i32 26, i32 8}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 15, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"d_o", metadata !86, metadata !"short", i32 0, i32 15}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 1, i32 25, i32 8}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 15, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"d_o", metadata !92, metadata !"short", i32 0, i32 15}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 24, i32 8}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 15, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"d_i", metadata !50, metadata !"short", i32 0, i32 15}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 15, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"d_i", metadata !56, metadata !"short", i32 0, i32 15}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 15, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"d_i", metadata !62, metadata !"short", i32 0, i32 15}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 15, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"d_i", metadata !68, metadata !"short", i32 0, i32 15}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 15, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"d_i", metadata !74, metadata !"short", i32 0, i32 15}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 15, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"d_i", metadata !80, metadata !"short", i32 0, i32 15}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 15, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"d_i", metadata !86, metadata !"short", i32 0, i32 15}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 15, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"d_i", metadata !92, metadata !"short", i32 0, i32 15}
