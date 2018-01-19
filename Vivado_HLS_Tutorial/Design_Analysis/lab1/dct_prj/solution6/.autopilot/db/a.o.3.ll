; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Analysis/lab1/dct_prj/solution6/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=2 type=[8 x i14]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=2 type=[8 x i15]*]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@Row_DCT_Loop_DCT_Outer_Loop_st = internal unnamed_addr constant [28 x i8] c"Row_DCT_Loop_DCT_Outer_Loop\00" ; [#uses=1 type=[28 x i8]*]
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Col_DCT_Loop_DCT_Outer_Loop_st = internal unnamed_addr constant [28 x i8] c"Col_DCT_Loop_DCT_Outer_Loop\00" ; [#uses=1 type=[28 x i8]*]
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !7 ; [debug line = 124:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !23
  %row_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_inbuf_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !27), !dbg !31 ; [debug line = 122:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !32), !dbg !33 ; [debug line = 122:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_0}, metadata !34), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_1}, metadata !50), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_2}, metadata !51), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_3}, metadata !52), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_4}, metadata !53), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_5}, metadata !54), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_6}, metadata !55), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_7}, metadata !56), !dbg !48 ; [debug line = 71:109@130:4] [debug variable = col_inbuf[7]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_0}, metadata !57), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_1}, metadata !62), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_2}, metadata !63), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_3}, metadata !64), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_4}, metadata !65), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_5}, metadata !66), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_6}, metadata !67), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_7}, metadata !68), !dbg !61 ; [debug line = 124:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !69), !dbg !70 ; [debug line = 125:10] [debug variable = buf_2d_out]
  call fastcc void @dct_read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind, !dbg !71 ; [debug line = 128:4]
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind
  call fastcc void @dct_write_data([64 x i16]* nocapture %buf_2d_out, [64 x i16]* nocapture %output) nounwind, !dbg !72 ; [debug line = 133:4]
  ret void, !dbg !73                              ; [debug line = 134:1]
}

; [#uses=1]
define internal fastcc void @dct_write_data([64 x i16]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !74), !dbg !80 ; [debug line = 110:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !81), !dbg !82 ; [debug line = 110:116] [debug variable = output]
  br label %1, !dbg !83                           ; [debug line = 115:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]     ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i4 %c, -8, !dbg !86        ; [#uses=2 type=i1] [debug line = 117:12]
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c     ; [#uses=3 type=i4]
  %r_s = add i4 1, %r, !dbg !89                   ; [#uses=1 type=i4] [debug line = 115:61]
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r  ; [#uses=3 type=i4]
  %tmp = trunc i4 %r_mid2 to i3                   ; [#uses=1 type=i3]
  %tmp_s = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !90 ; [#uses=1 type=i6] [debug line = 118:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !86      ; [#uses=1 type=i6] [debug line = 117:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind, !dbg !92 ; [debug line = 118:2]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13), !dbg !92 ; [#uses=1 type=i32] [debug line = 118:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !93 ; [debug line = 119:1]
  %tmp_4_trn_cast = zext i4 %c_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_1 to i8, !dbg !90   ; [#uses=1 type=i8] [debug line = 118:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_4_trn_cast, !dbg !90 ; [#uses=1 type=i8] [debug line = 118:1]
  %tmp_2 = zext i8 %p_addr1 to i64, !dbg !90      ; [#uses=1 type=i64] [debug line = 118:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_2, !dbg !90 ; [#uses=1 type=i16*] [debug line = 118:1]
  %buf_load = load i16* %buf_addr, align 2, !dbg !90 ; [#uses=1 type=i16] [debug line = 118:1]
  %tmp_5 = add i6 %c_cast6, %tmp_s, !dbg !90      ; [#uses=1 type=i6] [debug line = 118:1]
  %tmp_6 = zext i6 %tmp_5 to i64, !dbg !90        ; [#uses=1 type=i64] [debug line = 118:1]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_6, !dbg !90 ; [#uses=1 type=i16*] [debug line = 118:1]
  store i16 %buf_load, i16* %output_addr, align 2, !dbg !90 ; [debug line = 118:1]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_8), !dbg !94 ; [#uses=0 type=i32] [debug line = 118:67]
  %c_1 = add i4 1, %c_mid2, !dbg !95              ; [#uses=1 type=i4] [debug line = 117:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !96), !dbg !95 ; [debug line = 117:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !98                              ; [debug line = 120:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define internal fastcc void @dct_read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %buf_0, [8 x i16]* nocapture %buf_1, [8 x i16]* nocapture %buf_2, [8 x i16]* nocapture %buf_3, [8 x i16]* nocapture %buf_4, [8 x i16]* nocapture %buf_5, [8 x i16]* nocapture %buf_6, [8 x i16]* nocapture %buf_7) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !99), !dbg !103 ; [debug line = 98:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_0}, i64 0, metadata !104), !dbg !106 ; [debug line = 98:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_1}, i64 0, metadata !107), !dbg !106 ; [debug line = 98:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_2}, i64 0, metadata !108), !dbg !106 ; [debug line = 98:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_3}, i64 0, metadata !109), !dbg !106 ; [debug line = 98:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_4}, i64 0, metadata !110), !dbg !106 ; [debug line = 98:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_5}, i64 0, metadata !111), !dbg !106 ; [debug line = 98:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_6}, i64 0, metadata !112), !dbg !106 ; [debug line = 98:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_7}, i64 0, metadata !113), !dbg !106 ; [debug line = 98:44] [debug variable = buf[7]]
  br label %1, !dbg !114                          ; [debug line = 103:9]

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %ifBlock ]    ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %ifBlock ]       ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_3), !dbg !117 ; [#uses=0 type=i32] [debug line = 106:66]
  %c_1 = add i4 %c_mid2, 1, !dbg !121             ; [#uses=1 type=i4] [debug line = 105:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !122), !dbg !121 ; [debug line = 105:64] [debug variable = c]
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %c, -8, !dbg !123        ; [#uses=2 type=i1] [debug line = 105:12]
  %c_mid2 = select i1 %exitcond, i4 0, i4 %c      ; [#uses=3 type=i4]
  %r_s = add i4 1, %r, !dbg !124                  ; [#uses=1 type=i4] [debug line = 103:61]
  %r_mid2 = select i1 %exitcond, i4 %r_s, i4 %r   ; [#uses=3 type=i4]
  %tmp_4 = trunc i4 %r_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0), !dbg !125 ; [#uses=1 type=i6] [debug line = 106:1]
  %tmp_s = zext i4 %r_mid2 to i64, !dbg !125      ; [#uses=8 type=i64] [debug line = 106:1]
  %c_cast = zext i4 %c_mid2 to i6, !dbg !123      ; [#uses=1 type=i6] [debug line = 105:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !126 ; [debug line = 106:2]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11), !dbg !126 ; [#uses=1 type=i32] [debug line = 106:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !127 ; [debug line = 107:1]
  %tmp_1 = add i6 %c_cast, %tmp, !dbg !125        ; [#uses=1 type=i6] [debug line = 106:1]
  %tmp_2 = zext i6 %tmp_1 to i64, !dbg !125       ; [#uses=1 type=i64] [debug line = 106:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_2, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  %input_load = load i16* %input_addr, align 2, !dbg !125 ; [#uses=8 type=i16] [debug line = 106:1]
  %tmp_5 = trunc i4 %c_mid2 to i3                 ; [#uses=1 type=i3]
  switch i3 %tmp_5, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !125                                    ; [debug line = 106:1]

; <label>:2                                       ; preds = %1
  ret void, !dbg !128                             ; [debug line = 108:1]

branch0:                                          ; preds = %.reset
  %buf_0_addr = getelementptr [8 x i16]* %buf_0, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_0_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch1:                                          ; preds = %.reset
  %buf_1_addr = getelementptr [8 x i16]* %buf_1, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_1_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch2:                                          ; preds = %.reset
  %buf_2_addr = getelementptr [8 x i16]* %buf_2, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_2_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch3:                                          ; preds = %.reset
  %buf_3_addr = getelementptr [8 x i16]* %buf_3, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_3_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch4:                                          ; preds = %.reset
  %buf_4_addr = getelementptr [8 x i16]* %buf_4, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_4_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch5:                                          ; preds = %.reset
  %buf_5_addr = getelementptr [8 x i16]* %buf_5, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_5_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch6:                                          ; preds = %.reset
  %buf_6_addr = getelementptr [8 x i16]* %buf_6, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_6_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]

branch7:                                          ; preds = %.reset
  %buf_7_addr = getelementptr [8 x i16]* %buf_7, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_7_addr, align 2, !dbg !125 ; [debug line = 106:1]
  br label %ifBlock, !dbg !125                    ; [debug line = 106:1]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %0, !dbg !129                          ; [debug line = 76:8@130:4]

.preheader7.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ] ; [#uses=2 type=i7]
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i_0_i_mid2, %dct_1d.exit ] ; [#uses=2 type=i4]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader7.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void @llvm.dbg.value(metadata !{[64 x i16]* %row_outbuf_i}, i64 0, metadata !131) nounwind, !dbg !139 ; [debug line = 48:81@77:7@130:4] [debug variable = dst]
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @Row_DCT_Loop_DCT_Outer_Loop_st)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond1_i4 = icmp eq i4 %k_i, -8, !dbg !140  ; [#uses=2 type=i1] [debug line = 57:9@77:7@130:4]
  %k_i_mid2 = select i1 %exitcond1_i4, i4 0, i4 %k_i ; [#uses=3 type=i4]
  %i2 = add i4 %i_0_i, 1, !dbg !143               ; [#uses=1 type=i4] [debug line = 76:60@130:4]
  %i_0_i_mid2 = select i1 %exitcond1_i4, i4 %i2, i4 %i_0_i ; [#uses=3 type=i4]
  %tmp_71_cast_i = zext i4 %i_0_i_mid2 to i64     ; [#uses=8 type=i64]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !144 ; [debug line = 57:67@77:7@130:4]
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 57:67@77:7@130:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !146 ; [debug line = 58:1@77:7@130:4]
  %tmp_i_7 = zext i4 %k_i_mid2 to i64, !dbg !147  ; [#uses=8 type=i64] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i14*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !147 ; [#uses=1 type=i14] [debug line = 60:48@77:7@130:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_0_addr = getelementptr [8 x i16]* %buf_2d_in_0, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_0_load = load i16* %buf_2d_in_0_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_cast_i = sext i16 %buf_2d_in_0_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_1_addr = getelementptr [8 x i16]* %buf_2d_in_1, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_1_load = load i16* %buf_2d_in_1_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_1_cast_i = sext i16 %buf_2d_in_1_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_2_addr = getelementptr [8 x i16]* %buf_2d_in_2, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_2_load = load i16* %buf_2d_in_2_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_2_cast_i = sext i16 %buf_2d_in_2_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_3_addr = getelementptr [8 x i16]* %buf_2d_in_3, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_3_load = load i16* %buf_2d_in_3_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_3_cast_i = sext i16 %buf_2d_in_3_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_4_addr = getelementptr [8 x i16]* %buf_2d_in_4, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_4_load = load i16* %buf_2d_in_4_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_4_cast_i = sext i16 %buf_2d_in_4_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_5_addr = getelementptr [8 x i16]* %buf_2d_in_5, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_5_load = load i16* %buf_2d_in_5_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_5_cast_i = sext i16 %buf_2d_in_5_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_6_addr = getelementptr [8 x i16]* %buf_2d_in_6, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_6_load = load i16* %buf_2d_in_6_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_6_cast_i = sext i16 %buf_2d_in_6_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_7, !dbg !147 ; [#uses=1 type=i15*] [debug line = 60:48@77:7@130:4]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !147 ; [#uses=1 type=i15] [debug line = 60:48@77:7@130:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_7_addr = getelementptr [8 x i16]* %buf_2d_in_7, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_7_load = load i16* %buf_2d_in_7_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_7_cast_i = sext i16 %buf_2d_in_7_load to i29, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i, !dbg !150 ; [#uses=1 type=i29] [debug line = 61:10@77:7@130:4]
  %tmp1 = add i29 %tmp_8_i, %tmp_8_1_i, !dbg !151 ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i, !dbg !151 ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp = add i29 %tmp2, %tmp1, !dbg !151          ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i, !dbg !151 ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp6 = add i29 %tmp_8_7_i, 4096, !dbg !151     ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp5 = add i29 %tmp6, %tmp_8_6_i, !dbg !151    ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp3 = add i29 %tmp5, %tmp4, !dbg !151         ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp_2_i = add i29 %tmp3, %tmp, !dbg !151       ; [#uses=1 type=i29] [debug line = 63:7@77:7@130:4]
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28), !dbg !151 ; [#uses=1 type=i16] [debug line = 63:7@77:7@130:4]
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8       ; [#uses=1 type=i8]
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_5 to i8, !dbg !151  ; [#uses=1 type=i8] [debug line = 63:7@77:7@130:4]
  %p_addr1 = add i8 %tmp_i_trn_cast, %p_addr_cast, !dbg !151 ; [#uses=1 type=i8] [debug line = 63:7@77:7@130:4]
  %tmp_6 = zext i8 %p_addr1 to i64, !dbg !151     ; [#uses=1 type=i64] [debug line = 63:7@77:7@130:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_6, !dbg !151 ; [#uses=1 type=i16*] [debug line = 63:7@77:7@130:4]
  store i16 %tmp_4_i, i16* %row_outbuf_i_addr, align 2, !dbg !151 ; [debug line = 63:7@77:7@130:4]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind, !dbg !152 ; [#uses=0 type=i32] [debug line = 64:4@77:7@130:4]
  %k = add i4 %k_i_mid2, 1, !dbg !153             ; [#uses=1 type=i4] [debug line = 57:61@77:7@130:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !154) nounwind, !dbg !153 ; [debug line = 57:61@77:7@130:4] [debug variable = k]
  br label %0, !dbg !153                          ; [debug line = 57:61@77:7@130:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind {
newFuncRoot:
  br label %0

.preheader6.i.exitStub:                           ; preds = %0
  ret void

.preheader7.i:                                    ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond3_i4 = icmp eq i4 %i_1_i, -8, !dbg !156 ; [#uses=2 type=i1] [debug line = 83:11@130:4]
  %i_1_i_mid2 = select i1 %exitcond3_i4, i4 0, i4 %i_1_i ; [#uses=3 type=i4]
  %j2 = add i4 1, %j_0_i, !dbg !160               ; [#uses=1 type=i4] [debug line = 81:61@130:4]
  %j_0_i_mid2 = select i1 %exitcond3_i4, i4 %j2, i4 %j_0_i ; [#uses=3 type=i4]
  %tmp_s = zext i4 %j_0_i_mid2 to i64, !dbg !161  ; [#uses=8 type=i64] [debug line = 84:1@130:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !163 ; [debug line = 84:2@130:4]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind, !dbg !163 ; [#uses=1 type=i32] [debug line = 84:2@130:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !164 ; [debug line = 85:1@130:4]
  %tmp_trn_cast = zext i4 %j_0_i_mid2 to i8       ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !161    ; [#uses=1 type=i8] [debug line = 84:1@130:4]
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !161 ; [#uses=1 type=i8] [debug line = 84:1@130:4]
  %tmp_7 = zext i8 %p_addr1 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 84:1@130:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_7, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2, !dbg !161 ; [#uses=8 type=i16] [debug line = 84:1@130:4]
  %tmp_6 = trunc i4 %i_1_i_mid2 to i3             ; [#uses=1 type=i3]
  switch i3 %tmp_6, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !161                                    ; [debug line = 84:1@130:4]

; <label>:0                                       ; preds = %ifBlock, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %j_0_i_mid2, %ifBlock ] ; [#uses=2 type=i4]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %ifBlock ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6.i.exitStub, label %.preheader7.i

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_5) nounwind, !dbg !165 ; [#uses=0 type=i32] [debug line = 84:34@130:4]
  %i = add i4 %i_1_i_mid2, 1, !dbg !166           ; [#uses=1 type=i4] [debug line = 83:63@130:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !167) nounwind, !dbg !166 ; [debug line = 83:63@130:4] [debug variable = i]
  br label %0

branch0:                                          ; preds = %.preheader7.i
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_0_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch1:                                          ; preds = %.preheader7.i
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_1_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch2:                                          ; preds = %.preheader7.i
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_2_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch3:                                          ; preds = %.preheader7.i
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_3_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch4:                                          ; preds = %.preheader7.i
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_4_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch5:                                          ; preds = %.preheader7.i
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_5_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch6:                                          ; preds = %.preheader7.i
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_6_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]

branch7:                                          ; preds = %.preheader7.i
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_s, !dbg !161 ; [#uses=1 type=i16*] [debug line = 84:1@130:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_7_addr, align 2, !dbg !161 ; [debug line = 84:1@130:4]
  br label %ifBlock, !dbg !161                    ; [debug line = 84:1@130:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %0

.preheader.i.exitStub:                            ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ] ; [#uses=2 type=i7]
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i_2_i_mid2, %dct_1d.exit ] ; [#uses=2 type=i4]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_outbuf_i}, i64 0, metadata !168) nounwind, !dbg !172 ; [debug line = 48:81@88:7@130:4] [debug variable = dst]
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @Col_DCT_Loop_DCT_Outer_Loop_st)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond1_i4 = icmp eq i4 %k_i, -8, !dbg !173  ; [#uses=2 type=i1] [debug line = 57:9@88:7@130:4]
  %k_i_mid2 = select i1 %exitcond1_i4, i4 0, i4 %k_i ; [#uses=3 type=i4]
  %i2 = add i4 %i_2_i, 1, !dbg !174               ; [#uses=1 type=i4] [debug line = 87:61@130:4]
  %i_2_i_mid2 = select i1 %exitcond1_i4, i4 %i2, i4 %i_2_i ; [#uses=3 type=i4]
  %tmp_71_cast_i = zext i4 %i_2_i_mid2 to i64     ; [#uses=8 type=i64]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !175 ; [debug line = 57:67@88:7@130:4]
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !175 ; [#uses=1 type=i32] [debug line = 57:67@88:7@130:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !176 ; [debug line = 58:1@88:7@130:4]
  %tmp_i_10 = zext i4 %k_i_mid2 to i64, !dbg !177 ; [#uses=8 type=i64] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i14*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !177 ; [#uses=1 type=i14] [debug line = 60:48@88:7@130:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_0_load = load i16* %col_inbuf_0_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_cast_i = sext i16 %col_inbuf_0_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_1_load = load i16* %col_inbuf_1_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_1_cast_i = sext i16 %col_inbuf_1_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_2_load = load i16* %col_inbuf_2_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_2_cast_i = sext i16 %col_inbuf_2_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_3_load = load i16* %col_inbuf_3_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_3_cast_i = sext i16 %col_inbuf_3_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_4_load = load i16* %col_inbuf_4_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_4_cast_i = sext i16 %col_inbuf_4_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_5_load = load i16* %col_inbuf_5_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_5_cast_i = sext i16 %col_inbuf_5_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_6_load = load i16* %col_inbuf_6_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_6_cast_i = sext i16 %col_inbuf_6_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_10, !dbg !177 ; [#uses=1 type=i15*] [debug line = 60:48@88:7@130:4]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !177 ; [#uses=1 type=i15] [debug line = 60:48@88:7@130:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_71_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_7_load = load i16* %col_inbuf_7_addr, align 2 ; [#uses=1 type=i16]
  %tmp_72_7_cast_i = sext i16 %col_inbuf_7_load to i29, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i, !dbg !178 ; [#uses=1 type=i29] [debug line = 61:10@88:7@130:4]
  %tmp1 = add i29 %tmp_8_i, %tmp_8_1_i, !dbg !179 ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i, !dbg !179 ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp = add i29 %tmp2, %tmp1, !dbg !179          ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i, !dbg !179 ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp6 = add i29 %tmp_8_7_i, 4096, !dbg !179     ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp5 = add i29 %tmp6, %tmp_8_6_i, !dbg !179    ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp3 = add i29 %tmp5, %tmp4, !dbg !179         ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp_2_i = add i29 %tmp3, %tmp, !dbg !179       ; [#uses=1 type=i29] [debug line = 63:7@88:7@130:4]
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28), !dbg !179 ; [#uses=1 type=i16] [debug line = 63:7@88:7@130:4]
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8       ; [#uses=1 type=i8]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_8 to i8, !dbg !179  ; [#uses=1 type=i8] [debug line = 63:7@88:7@130:4]
  %p_addr1 = add i8 %tmp_i_trn_cast, %p_addr_cast, !dbg !179 ; [#uses=1 type=i8] [debug line = 63:7@88:7@130:4]
  %tmp_9 = zext i8 %p_addr1 to i64, !dbg !179     ; [#uses=1 type=i64] [debug line = 63:7@88:7@130:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_9, !dbg !179 ; [#uses=1 type=i16*] [debug line = 63:7@88:7@130:4]
  store i16 %tmp_4_i, i16* %col_outbuf_i_addr, align 2, !dbg !179 ; [debug line = 63:7@88:7@130:4]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind, !dbg !180 ; [#uses=0 type=i32] [debug line = 64:4@88:7@130:4]
  %k = add i4 %k_i_mid2, 1, !dbg !181             ; [#uses=1 type=i4] [debug line = 57:61@88:7@130:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !182) nounwind, !dbg !181 ; [debug line = 57:61@88:7@130:4] [debug variable = k]
  br label %0, !dbg !181                          ; [debug line = 57:61@88:7@130:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i8 = icmp eq i4 %i_3_i, -8, !dbg !183 ; [#uses=2 type=i1] [debug line = 94:11@130:4]
  %i_3_i_mid2 = select i1 %exitcond_i8, i4 0, i4 %i_3_i ; [#uses=3 type=i4]
  %j6 = add i4 %j_1_i, 1, !dbg !187               ; [#uses=1 type=i4] [debug line = 92:61@130:4]
  %j_1_i_mid2 = select i1 %exitcond_i8, i4 %j6, i4 %j_1_i ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !188 ; [debug line = 95:2@130:4]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind, !dbg !188 ; [#uses=1 type=i32] [debug line = 95:2@130:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !190 ; [debug line = 96:1@130:4]
  %tmp_trn_cast = zext i4 %i_3_i_mid2 to i8, !dbg !191 ; [#uses=1 type=i8] [debug line = 95:1@130:4]
  %tmp_9_trn_cast = zext i4 %j_1_i_mid2 to i8     ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !191    ; [#uses=1 type=i8] [debug line = 95:1@130:4]
  %p_addr1 = add i8 %tmp_9_trn_cast, %p_addr_cast, !dbg !191 ; [#uses=1 type=i8] [debug line = 95:1@130:4]
  %tmp_s = zext i8 %p_addr1 to i64, !dbg !191     ; [#uses=1 type=i64] [debug line = 95:1@130:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_s, !dbg !191 ; [#uses=1 type=i16*] [debug line = 95:1@130:4]
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2, !dbg !191 ; [#uses=1 type=i16] [debug line = 95:1@130:4]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr4_cast = zext i7 %tmp_1 to i8, !dbg !191 ; [#uses=1 type=i8] [debug line = 95:1@130:4]
  %p_addr5 = add i8 %tmp_trn_cast, %p_addr4_cast, !dbg !191 ; [#uses=1 type=i8] [debug line = 95:1@130:4]
  %tmp_2 = zext i8 %p_addr5 to i64, !dbg !191     ; [#uses=1 type=i64] [debug line = 95:1@130:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_2, !dbg !191 ; [#uses=1 type=i16*] [debug line = 95:1@130:4]
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2, !dbg !191 ; [debug line = 95:1@130:4]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_6) nounwind, !dbg !192 ; [#uses=0 type=i32] [debug line = 95:34@130:4]
  %i = add i4 %i_3_i_mid2, 1, !dbg !193           ; [#uses=1 type=i4] [debug line = 94:63@130:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !167) nounwind, !dbg !193 ; [debug line = 94:63@130:4] [debug variable = i]
  br label %0

; <label>:0                                       ; preds = %.preheader.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ] ; [#uses=2 type=i7]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %j_1_i_mid2, %.preheader.i ] ; [#uses=2 type=i4]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_13 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_14 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_15 = or i6 %empty_14, %empty_13          ; [#uses=1 type=i6]
  ret i6 %empty_15
}

; [#uses=6]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_16 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_17 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_18 = or i7 %empty_17, %empty_16          ; [#uses=1 type=i7]
  ret i7 %empty_18
}

; [#uses=2]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_19 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_19
}

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{i32 124, i32 1, metadata !8, null}
!8 = metadata !{i32 786443, metadata !9, i32 123, i32 1, metadata !10, i32 28} ; [ DW_TAG_lexical_block ]
!9 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct", metadata !"dct", metadata !"_Z3dctPsS_", metadata !10, i32 122, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 123} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 786473, metadata !"dct.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Analysis/lab1", null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{null, metadata !13, metadata !13}
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 15, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"input", metadata !21, metadata !"short", i32 0, i32 15}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 63, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 15, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"output", metadata !21, metadata !"short", i32 0, i32 15}
!27 = metadata !{i32 786689, metadata !9, metadata !"input", null, i32 122, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !14, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 122, i32 16, metadata !9, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"output", null, i32 122, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 122, i32 38, metadata !9, null}
!34 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[0]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!35 = metadata !{i32 786688, metadata !36, metadata !"col_inbuf", metadata !10, i32 71, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 786443, metadata !37, i32 69, i32 1, metadata !10, i32 5} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct_2d", metadata !"dct_2d", metadata !"_Z6dct_2dPA8_sS0_", metadata !10, i32 67, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 69} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !40, metadata !40}
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !42, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !10, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !42, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !44, metadata !44}
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !42, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 71, i32 109, metadata !36, metadata !49}
!49 = metadata !{i32 130, i32 4, metadata !8, null}
!50 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[1]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!51 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[2]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!52 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[3]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!53 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[4]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!54 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[5]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!55 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[6]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!56 = metadata !{i32 790529, metadata !35, metadata !"col_inbuf[7]", null, i32 71, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!57 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[0]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!58 = metadata !{i32 786688, metadata !8, metadata !"buf_2d_in", metadata !10, i32 124, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !14, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !14, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{i32 124, i32 10, metadata !8, null}
!62 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[1]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!63 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[2]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!64 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[3]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!65 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[4]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!66 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[5]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!67 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[6]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!68 = metadata !{i32 790529, metadata !58, metadata !"buf_2d_in[7]", null, i32 124, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!69 = metadata !{i32 786688, metadata !8, metadata !"buf_2d_out", metadata !10, i32 125, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 125, i32 10, metadata !8, null}
!71 = metadata !{i32 128, i32 4, metadata !8, null}
!72 = metadata !{i32 133, i32 4, metadata !8, null}
!73 = metadata !{i32 134, i32 1, metadata !8, null}
!74 = metadata !{i32 786689, metadata !75, metadata !"buf", null, i32 110, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_data", metadata !"write_data", metadata !"_Z10write_dataPA8_sPs", metadata !10, i32 110, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 111} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !78, metadata !13}
!78 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !14, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{i32 110, i32 23, metadata !75, null}
!81 = metadata !{i32 786689, metadata !75, metadata !"output", null, i32 110, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 110, i32 116, metadata !75, null}
!83 = metadata !{i32 115, i32 9, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 115, i32 4, metadata !10, i32 24} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !75, i32 111, i32 1, metadata !10, i32 23} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 117, i32 12, metadata !87, null}
!87 = metadata !{i32 786443, metadata !88, i32 117, i32 7, metadata !10, i32 26} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !84, i32 115, i32 66, metadata !10, i32 25} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 115, i32 61, metadata !84, null}
!90 = metadata !{i32 118, i32 1, metadata !91, null}
!91 = metadata !{i32 786443, metadata !87, i32 118, i32 1, metadata !10, i32 27} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 118, i32 2, metadata !91, null}
!93 = metadata !{i32 119, i32 1, metadata !91, null}
!94 = metadata !{i32 118, i32 67, metadata !91, null}
!95 = metadata !{i32 117, i32 64, metadata !87, null}
!96 = metadata !{i32 786688, metadata !85, metadata !"c", metadata !10, i32 112, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 120, i32 1, metadata !85, null}
!99 = metadata !{i32 786689, metadata !100, metadata !"input", null, i32 98, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_data", metadata !"read_data", metadata !"_Z9read_dataPsPA8_s", metadata !10, i32 98, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 99} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !13, metadata !78}
!103 = metadata !{i32 98, i32 22, metadata !100, null}
!104 = metadata !{i32 790531, metadata !105, metadata !"buf[0]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!105 = metadata !{i32 786689, metadata !100, metadata !"buf", null, i32 98, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 98, i32 44, metadata !100, null}
!107 = metadata !{i32 790531, metadata !105, metadata !"buf[1]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!108 = metadata !{i32 790531, metadata !105, metadata !"buf[2]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!109 = metadata !{i32 790531, metadata !105, metadata !"buf[3]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!110 = metadata !{i32 790531, metadata !105, metadata !"buf[4]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!111 = metadata !{i32 790531, metadata !105, metadata !"buf[5]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!112 = metadata !{i32 790531, metadata !105, metadata !"buf[6]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!113 = metadata !{i32 790531, metadata !105, metadata !"buf[7]", null, i32 98, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!114 = metadata !{i32 103, i32 9, metadata !115, null}
!115 = metadata !{i32 786443, metadata !116, i32 103, i32 4, metadata !10, i32 19} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !100, i32 99, i32 1, metadata !10, i32 18} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 106, i32 66, metadata !118, null}
!118 = metadata !{i32 786443, metadata !119, i32 106, i32 1, metadata !10, i32 22} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !120, i32 105, i32 7, metadata !10, i32 21} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !115, i32 103, i32 66, metadata !10, i32 20} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 105, i32 64, metadata !119, null}
!122 = metadata !{i32 786688, metadata !116, metadata !"c", metadata !10, i32 100, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 105, i32 12, metadata !119, null}
!124 = metadata !{i32 103, i32 61, metadata !115, null}
!125 = metadata !{i32 106, i32 1, metadata !118, null}
!126 = metadata !{i32 106, i32 2, metadata !118, null}
!127 = metadata !{i32 107, i32 1, metadata !118, null}
!128 = metadata !{i32 108, i32 1, metadata !116, null}
!129 = metadata !{i32 76, i32 8, metadata !130, metadata !49}
!130 = metadata !{i32 786443, metadata !36, i32 76, i32 4, metadata !10, i32 6} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786689, metadata !132, metadata !"dst", null, i32 48, metadata !136, i32 0, metadata !137} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct_1d", metadata !"dct_1d", metadata !"_Z6dct_1dPsS_", metadata !10, i32 48, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 49} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{null, metadata !135, metadata !135}
!135 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !42, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!137 = metadata !{i32 77, i32 7, metadata !138, metadata !49}
!138 = metadata !{i32 786443, metadata !130, i32 76, i32 65, metadata !10, i32 7} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 48, i32 81, metadata !132, metadata !137}
!140 = metadata !{i32 57, i32 9, metadata !141, metadata !137}
!141 = metadata !{i32 786443, metadata !142, i32 57, i32 4, metadata !10, i32 1} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786443, metadata !132, i32 49, i32 1, metadata !10, i32 0} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 76, i32 60, metadata !130, metadata !49}
!144 = metadata !{i32 57, i32 67, metadata !145, metadata !137}
!145 = metadata !{i32 786443, metadata !141, i32 57, i32 66, metadata !10, i32 2} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 58, i32 1, metadata !145, metadata !137}
!147 = metadata !{i32 60, i32 48, metadata !148, metadata !137}
!148 = metadata !{i32 786443, metadata !149, i32 59, i32 77, metadata !10, i32 4} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !145, i32 59, i32 7, metadata !10, i32 3} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 61, i32 10, metadata !148, metadata !137}
!151 = metadata !{i32 63, i32 7, metadata !145, metadata !137}
!152 = metadata !{i32 64, i32 4, metadata !145, metadata !137}
!153 = metadata !{i32 57, i32 61, metadata !141, metadata !137}
!154 = metadata !{i32 786688, metadata !142, metadata !"k", metadata !10, i32 50, metadata !155, i32 0, metadata !137} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!156 = metadata !{i32 83, i32 11, metadata !157, metadata !49}
!157 = metadata !{i32 786443, metadata !158, i32 83, i32 7, metadata !10, i32 10} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !159, i32 82, i32 1, metadata !10, i32 9} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !36, i32 81, i32 4, metadata !10, i32 8} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 81, i32 61, metadata !159, metadata !49}
!161 = metadata !{i32 84, i32 1, metadata !162, metadata !49}
!162 = metadata !{i32 786443, metadata !157, i32 84, i32 1, metadata !10, i32 11} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 84, i32 2, metadata !162, metadata !49}
!164 = metadata !{i32 85, i32 1, metadata !162, metadata !49}
!165 = metadata !{i32 84, i32 34, metadata !162, metadata !49}
!166 = metadata !{i32 83, i32 63, metadata !157, metadata !49}
!167 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !10, i32 72, metadata !155, i32 0, metadata !49} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 786689, metadata !132, metadata !"dst", null, i32 48, metadata !136, i32 0, metadata !169} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 88, i32 7, metadata !170, metadata !49}
!170 = metadata !{i32 786443, metadata !171, i32 87, i32 66, metadata !10, i32 13} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !36, i32 87, i32 4, metadata !10, i32 12} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 48, i32 81, metadata !132, metadata !169}
!173 = metadata !{i32 57, i32 9, metadata !141, metadata !169}
!174 = metadata !{i32 87, i32 61, metadata !171, metadata !49}
!175 = metadata !{i32 57, i32 67, metadata !145, metadata !169}
!176 = metadata !{i32 58, i32 1, metadata !145, metadata !169}
!177 = metadata !{i32 60, i32 48, metadata !148, metadata !169}
!178 = metadata !{i32 61, i32 10, metadata !148, metadata !169}
!179 = metadata !{i32 63, i32 7, metadata !145, metadata !169}
!180 = metadata !{i32 64, i32 4, metadata !145, metadata !169}
!181 = metadata !{i32 57, i32 61, metadata !141, metadata !169}
!182 = metadata !{i32 786688, metadata !142, metadata !"k", metadata !10, i32 50, metadata !155, i32 0, metadata !169} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 94, i32 11, metadata !184, metadata !49}
!184 = metadata !{i32 786443, metadata !185, i32 94, i32 7, metadata !10, i32 16} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786443, metadata !186, i32 93, i32 1, metadata !10, i32 15} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 786443, metadata !36, i32 92, i32 4, metadata !10, i32 14} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 92, i32 61, metadata !186, metadata !49}
!188 = metadata !{i32 95, i32 2, metadata !189, metadata !49}
!189 = metadata !{i32 786443, metadata !184, i32 95, i32 1, metadata !10, i32 17} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 96, i32 1, metadata !189, metadata !49}
!191 = metadata !{i32 95, i32 1, metadata !189, metadata !49}
!192 = metadata !{i32 95, i32 34, metadata !189, metadata !49}
!193 = metadata !{i32 94, i32 63, metadata !184, metadata !49}
