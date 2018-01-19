; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Analysis/lab1/dct_prj/solution4/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@p_str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]

; [#uses=16]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=11]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !13
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
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !17), !dbg !29 ; [debug line = 122:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !30), !dbg !31 ; [debug line = 122:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_0}, metadata !32), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_1}, metadata !40), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_2}, metadata !41), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_3}, metadata !42), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_4}, metadata !43), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_5}, metadata !44), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_6}, metadata !45), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_7}, metadata !46), !dbg !39 ; [debug line = 124:10] [debug variable = buf_2d_in[7]]
  call fastcc void @dct_read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind, !dbg !47 ; [debug line = 128:4]
  call fastcc void @dct_dct_2d([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %buf_2d_out) nounwind, !dbg !48 ; [debug line = 130:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !49) nounwind, !dbg !57 ; [debug line = 110:116@133:4] [debug variable = output]
  br label %1, !dbg !58                           ; [debug line = 115:9@133:4]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r_i = phi i4 [ 0, %0 ], [ %r_i_mid2, %.reset ] ; [#uses=2 type=i4]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %write_data.exit, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i5 = icmp eq i4 %c_i, -8, !dbg !61    ; [#uses=2 type=i1] [debug line = 117:12@133:4]
  %c_i_mid2 = select i1 %exitcond_i5, i4 0, i4 %c_i ; [#uses=3 type=i4]
  %r3 = add i4 1, %r_i, !dbg !64                  ; [#uses=1 type=i4] [debug line = 115:61@133:4]
  %r_i_mid2 = select i1 %exitcond_i5, i4 %r3, i4 %r_i ; [#uses=3 type=i4]
  %tmp = trunc i4 %r_i_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !65 ; [#uses=1 type=i6] [debug line = 118:1@133:4]
  %c_i_cast2 = zext i4 %c_i_mid2 to i6, !dbg !61  ; [#uses=1 type=i6] [debug line = 117:12@133:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind, !dbg !67 ; [debug line = 118:2@133:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 118:2@133:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !68 ; [debug line = 119:1@133:4]
  %tmp_8_i_trn_cast = zext i4 %c_i_mid2 to i8     ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_1 to i8, !dbg !65   ; [#uses=1 type=i8] [debug line = 118:1@133:4]
  %p_addr2 = add i8 %p_addr_cast, %tmp_8_i_trn_cast, !dbg !65 ; [#uses=1 type=i8] [debug line = 118:1@133:4]
  %tmp_2 = zext i8 %p_addr2 to i64, !dbg !65      ; [#uses=1 type=i64] [debug line = 118:1@133:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_2, !dbg !65 ; [#uses=1 type=i16*] [debug line = 118:1@133:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !65 ; [#uses=1 type=i16] [debug line = 118:1@133:4]
  %tmp_9_i = add i6 %c_i_cast2, %tmp_i, !dbg !65  ; [#uses=1 type=i6] [debug line = 118:1@133:4]
  %tmp_3_i = zext i6 %tmp_9_i to i64, !dbg !65    ; [#uses=1 type=i64] [debug line = 118:1@133:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_3_i, !dbg !65 ; [#uses=1 type=i16*] [debug line = 118:1@133:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !65 ; [debug line = 118:1@133:4]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_2_i) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 118:67@133:4]
  %c = add i4 1, %c_i_mid2, !dbg !70              ; [#uses=1 type=i4] [debug line = 117:64@133:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !71) nounwind, !dbg !70 ; [debug line = 117:64@133:4] [debug variable = c]
  br label %1

write_data.exit:                                  ; preds = %1
  ret void, !dbg !73                              ; [debug line = 134:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define internal fastcc void @dct_dct_2d([8 x i16]* nocapture %in_block_0, [8 x i16]* nocapture %in_block_1, [8 x i16]* nocapture %in_block_2, [8 x i16]* nocapture %in_block_3, [8 x i16]* nocapture %in_block_4, [8 x i16]* nocapture %in_block_5, [8 x i16]* nocapture %in_block_6, [8 x i16]* nocapture %in_block_7, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_0}, i64 0, metadata !74), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_1}, i64 0, metadata !85), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_2}, i64 0, metadata !86), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_3}, i64 0, metadata !87), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_4}, i64 0, metadata !88), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_5}, i64 0, metadata !89), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_6}, i64 0, metadata !90), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_7}, i64 0, metadata !91), !dbg !84 ; [debug line = 67:24] [debug variable = in_block[7]]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !92), !dbg !93 ; [debug line = 68:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_0}, metadata !94), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_1}, metadata !98), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_2}, metadata !99), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_3}, metadata !100), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_4}, metadata !101), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_5}, metadata !102), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_6}, metadata !103), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_7}, metadata !104), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf[7]]
  br label %1, !dbg !105                          ; [debug line = 76:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !105       ; [#uses=1 type=i1] [debug line = 76:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !107                  ; [#uses=1 type=i4] [debug line = 76:60]
  br i1 %exitcond5, label %.preheader7.preheader, label %2, !dbg !105 ; [debug line = 76:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind, !dbg !108 ; [debug line = 76:66]
  call fastcc void @dct_dct_1d([8 x i16]* nocapture %in_block_0, [8 x i16]* nocapture %in_block_1, [8 x i16]* nocapture %in_block_2, [8 x i16]* nocapture %in_block_3, [8 x i16]* nocapture %in_block_4, [8 x i16]* nocapture %in_block_5, [8 x i16]* nocapture %in_block_6, [8 x i16]* nocapture %in_block_7, i4 %i, [64 x i16]* nocapture %row_outbuf, i4 %i), !dbg !110 ; [debug line = 77:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !111), !dbg !107 ; [debug line = 76:60] [debug variable = i]
  br label %1, !dbg !107                          ; [debug line = 76:60]

.preheader7.preheader:                            ; preds = %ifBlock, %1
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %ifBlock ], [ 0, %1 ] ; [#uses=2 type=i7]
  %j = phi i4 [ %j_mid2, %ifBlock ], [ 0, %1 ]    ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %ifBlock ], [ 0, %1 ]     ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6, label %.preheader7

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_9), !dbg !113 ; [#uses=0 type=i32] [debug line = 84:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !118           ; [#uses=1 type=i4] [debug line = 83:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !111), !dbg !118 ; [debug line = 83:63] [debug variable = i]
  br label %.preheader7.preheader

.preheader7:                                      ; preds = %.preheader7.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %i_1, -8, !dbg !119      ; [#uses=2 type=i1] [debug line = 83:11]
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1  ; [#uses=3 type=i4]
  %j_s = add i4 1, %j, !dbg !120                  ; [#uses=1 type=i4] [debug line = 81:61]
  %j_mid2 = select i1 %exitcond, i4 %j_s, i4 %j   ; [#uses=3 type=i4]
  %tmp_s = zext i4 %j_mid2 to i64, !dbg !121      ; [#uses=8 type=i64] [debug line = 84:1]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !122 ; [debug line = 84:2]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6), !dbg !122 ; [#uses=1 type=i32] [debug line = 84:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !123 ; [debug line = 85:1]
  %tmp_trn_cast = zext i4 %j_mid2 to i8           ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !121    ; [#uses=1 type=i8] [debug line = 84:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !121 ; [#uses=1 type=i8] [debug line = 84:1]
  %tmp_3 = zext i8 %p_addr1 to i64, !dbg !121     ; [#uses=1 type=i64] [debug line = 84:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_3, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !121 ; [#uses=8 type=i16] [debug line = 84:1]
  %tmp_1 = trunc i4 %i_1_mid2 to i3               ; [#uses=1 type=i3]
  switch i3 %tmp_1, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !121                                    ; [debug line = 84:1]

.preheader6:                                      ; preds = %3, %.preheader7.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader7.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i_2, -8, !dbg !124     ; [#uses=1 type=i1] [debug line = 87:9]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !126                ; [#uses=1 type=i4] [debug line = 87:61]
  br i1 %exitcond2, label %.preheader.preheader, label %3, !dbg !124 ; [debug line = 87:9]

; <label>:3                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !127 ; [debug line = 87:67]
  call fastcc void @dct_dct_1d([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, i4 %i_2, [64 x i16]* nocapture %col_outbuf, i4 %i_2), !dbg !129 ; [debug line = 88:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !111), !dbg !126 ; [debug line = 87:61] [debug variable = i]
  br label %.preheader6, !dbg !126                ; [debug line = 87:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader6
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %j_1_mid2, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i4 %i_3, -8, !dbg !130     ; [#uses=2 type=i1] [debug line = 94:11]
  %i_3_mid2 = select i1 %exitcond1, i4 0, i4 %i_3 ; [#uses=3 type=i4]
  %j_2 = add i4 %j_1, 1, !dbg !134                ; [#uses=1 type=i4] [debug line = 92:61]
  %j_1_mid2 = select i1 %exitcond1, i4 %j_2, i4 %j_1 ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !135 ; [debug line = 95:2]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9), !dbg !135 ; [#uses=1 type=i32] [debug line = 95:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !137 ; [debug line = 96:1]
  %tmp_4_trn_cast = zext i4 %i_3_mid2 to i8, !dbg !138 ; [#uses=1 type=i8] [debug line = 95:1]
  %tmp_3_trn_cast = zext i4 %j_1_mid2 to i8       ; [#uses=1 type=i8]
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp_4 to i8, !dbg !138 ; [#uses=1 type=i8] [debug line = 95:1]
  %p_addr5 = add i8 %tmp_3_trn_cast, %p_addr2_cast, !dbg !138 ; [#uses=1 type=i8] [debug line = 95:1]
  %tmp_6 = zext i8 %p_addr5 to i64, !dbg !138     ; [#uses=1 type=i64] [debug line = 95:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_6, !dbg !138 ; [#uses=1 type=i16*] [debug line = 95:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !138 ; [#uses=1 type=i16] [debug line = 95:1]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr3_cast = zext i7 %tmp_7 to i8, !dbg !138 ; [#uses=1 type=i8] [debug line = 95:1]
  %p_addr4 = add i8 %tmp_4_trn_cast, %p_addr3_cast, !dbg !138 ; [#uses=1 type=i8] [debug line = 95:1]
  %tmp_8 = zext i8 %p_addr4 to i64, !dbg !138     ; [#uses=1 type=i64] [debug line = 95:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_8, !dbg !138 ; [#uses=1 type=i16*] [debug line = 95:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !138 ; [debug line = 95:1]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_5), !dbg !139 ; [#uses=0 type=i32] [debug line = 95:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !140           ; [#uses=1 type=i4] [debug line = 94:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !111), !dbg !140 ; [debug line = 94:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !141                             ; [debug line = 96:1]

branch0:                                          ; preds = %.preheader7
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_0_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch1:                                          ; preds = %.preheader7
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_1_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch2:                                          ; preds = %.preheader7
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_2_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch3:                                          ; preds = %.preheader7
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_3_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch4:                                          ; preds = %.preheader7
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_4_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch5:                                          ; preds = %.preheader7
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_5_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch6:                                          ; preds = %.preheader7
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_6_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]

branch7:                                          ; preds = %.preheader7
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_s, !dbg !121 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_7_addr, align 2, !dbg !121 ; [debug line = 84:1]
  br label %ifBlock, !dbg !121                    ; [debug line = 84:1]
}

; [#uses=1]
define internal fastcc void @dct_read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %buf_0, [8 x i16]* nocapture %buf_1, [8 x i16]* nocapture %buf_2, [8 x i16]* nocapture %buf_3, [8 x i16]* nocapture %buf_4, [8 x i16]* nocapture %buf_5, [8 x i16]* nocapture %buf_6, [8 x i16]* nocapture %buf_7) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !142), !dbg !146 ; [debug line = 98:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_0}, i64 0, metadata !147), !dbg !149 ; [debug line = 98:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_1}, i64 0, metadata !150), !dbg !149 ; [debug line = 98:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_2}, i64 0, metadata !151), !dbg !149 ; [debug line = 98:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_3}, i64 0, metadata !152), !dbg !149 ; [debug line = 98:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_4}, i64 0, metadata !153), !dbg !149 ; [debug line = 98:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_5}, i64 0, metadata !154), !dbg !149 ; [debug line = 98:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_6}, i64 0, metadata !155), !dbg !149 ; [debug line = 98:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_7}, i64 0, metadata !156), !dbg !149 ; [debug line = 98:44] [debug variable = buf[7]]
  br label %1, !dbg !157                          ; [debug line = 103:9]

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %ifBlock ]    ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %ifBlock ]       ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_8), !dbg !160 ; [#uses=0 type=i32] [debug line = 106:66]
  %c_1 = add i4 %c_mid2, 1, !dbg !164             ; [#uses=1 type=i4] [debug line = 105:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !165), !dbg !164 ; [debug line = 105:64] [debug variable = c]
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %c, -8, !dbg !166        ; [#uses=2 type=i1] [debug line = 105:12]
  %c_mid2 = select i1 %exitcond, i4 0, i4 %c      ; [#uses=3 type=i4]
  %r_s = add i4 1, %r, !dbg !167                  ; [#uses=1 type=i4] [debug line = 103:61]
  %r_mid2 = select i1 %exitcond, i4 %r_s, i4 %r   ; [#uses=3 type=i4]
  %tmp_2 = trunc i4 %r_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_2, i3 0), !dbg !168 ; [#uses=1 type=i6] [debug line = 106:1]
  %tmp_s = zext i4 %r_mid2 to i64, !dbg !168      ; [#uses=8 type=i64] [debug line = 106:1]
  %c_cast2 = zext i4 %c_mid2 to i6, !dbg !166     ; [#uses=1 type=i6] [debug line = 105:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !169 ; [debug line = 106:2]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11), !dbg !169 ; [#uses=1 type=i32] [debug line = 106:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !170 ; [debug line = 107:1]
  %tmp_5 = add i6 %c_cast2, %tmp, !dbg !168       ; [#uses=1 type=i6] [debug line = 106:1]
  %tmp_6 = zext i6 %tmp_5 to i64, !dbg !168       ; [#uses=1 type=i64] [debug line = 106:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_6, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  %input_load = load i16* %input_addr, align 2, !dbg !168 ; [#uses=8 type=i16] [debug line = 106:1]
  %tmp_3 = trunc i4 %c_mid2 to i3                 ; [#uses=1 type=i3]
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !168                                    ; [debug line = 106:1]

; <label>:2                                       ; preds = %1
  ret void, !dbg !171                             ; [debug line = 108:1]

branch0:                                          ; preds = %.reset
  %buf_0_addr = getelementptr [8 x i16]* %buf_0, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_0_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch1:                                          ; preds = %.reset
  %buf_1_addr = getelementptr [8 x i16]* %buf_1, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_1_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch2:                                          ; preds = %.reset
  %buf_2_addr = getelementptr [8 x i16]* %buf_2, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_2_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch3:                                          ; preds = %.reset
  %buf_3_addr = getelementptr [8 x i16]* %buf_3, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_3_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch4:                                          ; preds = %.reset
  %buf_4_addr = getelementptr [8 x i16]* %buf_4, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_4_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch5:                                          ; preds = %.reset
  %buf_5_addr = getelementptr [8 x i16]* %buf_5, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_5_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch6:                                          ; preds = %.reset
  %buf_6_addr = getelementptr [8 x i16]* %buf_6, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_6_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]

branch7:                                          ; preds = %.reset
  %buf_7_addr = getelementptr [8 x i16]* %buf_7, i64 0, i64 %tmp_s, !dbg !168 ; [#uses=1 type=i16*] [debug line = 106:1]
  store i16 %input_load, i16* %buf_7_addr, align 2, !dbg !168 ; [debug line = 106:1]
  br label %ifBlock, !dbg !168                    ; [debug line = 106:1]
}

; [#uses=2]
define internal fastcc void @dct_dct_1d([8 x i16]* nocapture %src, [8 x i16]* nocapture %src1, [8 x i16]* nocapture %src2, [8 x i16]* nocapture %src3, [8 x i16]* nocapture %src4, [8 x i16]* nocapture %src5, [8 x i16]* nocapture %src6, [8 x i16]* nocapture %src7, i4 %tmp_1, [64 x i16]* nocapture %dst, i4 %tmp_11) {
  %tmp_11_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_11) ; [#uses=1 type=i4]
  %tmp_1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_1) ; [#uses=1 type=i4]
  %tmp_1_cast = zext i4 %tmp_1_read to i64        ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !172), !dbg !178 ; [debug line = 48:81] [debug variable = dst]
  %src_addr = getelementptr [8 x i16]* %src, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src1_addr = getelementptr [8 x i16]* %src1, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src2_addr = getelementptr [8 x i16]* %src2, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src3_addr = getelementptr [8 x i16]* %src3, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src4_addr = getelementptr [8 x i16]* %src4, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src5_addr = getelementptr [8 x i16]* %src5, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src6_addr = getelementptr [8 x i16]* %src6, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %src7_addr = getelementptr [8 x i16]* %src7, i64 0, i64 %tmp_1_cast ; [#uses=1 type=i16*]
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_11_read, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_3 to i8, !dbg !179  ; [#uses=1 type=i8] [debug line = 57:9]
  br label %1, !dbg !179                          ; [debug line = 57:9]

; <label>:1                                       ; preds = %2, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %2 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !179       ; [#uses=1 type=i1] [debug line = 57:9]
  %k_1 = add i4 %k, 1, !dbg !182                  ; [#uses=1 type=i4] [debug line = 57:61]
  br i1 %exitcond1, label %3, label %2, !dbg !179 ; [debug line = 57:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !183 ; [debug line = 57:67]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 57:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !185 ; [debug line = 58:1]
  %tmp = zext i4 %k to i64, !dbg !186             ; [#uses=8 type=i64] [debug line = 60:48]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i14*] [debug line = 60:48]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !186 ; [#uses=1 type=i14] [debug line = 60:48]
  %coeff_cast = zext i14 %dct_coeff_table_0_load to i29 ; [#uses=1 type=i29]
  %src_load = load i16* %src_addr, align 2        ; [#uses=1 type=i16]
  %tmp_7_cast = sext i16 %src_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8 = mul i29 %tmp_7_cast, %coeff_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_1_cast = sext i15 %dct_coeff_table_1_load to i29 ; [#uses=1 type=i29]
  %src1_load = load i16* %src1_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_1_cast = sext i16 %src1_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_1 = mul i29 %tmp_7_1_cast, %coeff_1_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_2_cast = sext i15 %dct_coeff_table_2_load to i29 ; [#uses=1 type=i29]
  %src2_load = load i16* %src2_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_2_cast = sext i16 %src2_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_2 = mul i29 %tmp_7_2_cast, %coeff_2_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_3_cast = sext i15 %dct_coeff_table_3_load to i29 ; [#uses=1 type=i29]
  %src3_load = load i16* %src3_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_3_cast = sext i16 %src3_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_3 = mul i29 %tmp_7_3_cast, %coeff_3_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_4_cast = sext i15 %dct_coeff_table_4_load to i29 ; [#uses=1 type=i29]
  %src4_load = load i16* %src4_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_4_cast = sext i16 %src4_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_4 = mul i29 %tmp_7_4_cast, %coeff_4_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_5_cast = sext i15 %dct_coeff_table_5_load to i29 ; [#uses=1 type=i29]
  %src5_load = load i16* %src5_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_5_cast = sext i16 %src5_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_5 = mul i29 %tmp_7_5_cast, %coeff_5_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_6_cast = sext i15 %dct_coeff_table_6_load to i29 ; [#uses=1 type=i29]
  %src6_load = load i16* %src6_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_6_cast = sext i16 %src6_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_6 = mul i29 %tmp_7_6_cast, %coeff_6_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp, !dbg !186 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_7_cast = sext i15 %dct_coeff_table_7_load to i29 ; [#uses=1 type=i29]
  %src7_load = load i16* %src7_addr, align 2      ; [#uses=1 type=i16]
  %tmp_7_7_cast = sext i16 %src7_load to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp_8_7 = mul i29 %tmp_7_7_cast, %coeff_7_cast, !dbg !189 ; [#uses=1 type=i29] [debug line = 61:10]
  %tmp2 = add i29 %tmp_8_1, %tmp_8, !dbg !190     ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp3 = add i29 %tmp_8_3, %tmp_8_2, !dbg !190   ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !190         ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp5 = add i29 %tmp_8_5, %tmp_8_4, !dbg !190   ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp7 = add i29 %tmp_8_7, 4096, !dbg !190       ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp6 = add i29 %tmp_8_6, %tmp7, !dbg !190      ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !190         ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp_2 = add i29 %tmp1, %tmp4, !dbg !190        ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp_4 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2, i32 13, i32 28), !dbg !190 ; [#uses=1 type=i16] [debug line = 63:7]
  %tmp_trn_cast = zext i4 %k to i8, !dbg !190     ; [#uses=1 type=i8] [debug line = 63:7]
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !190 ; [#uses=1 type=i8] [debug line = 63:7]
  %tmp_5 = zext i8 %p_addr1 to i64, !dbg !190     ; [#uses=1 type=i64] [debug line = 63:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_5, !dbg !190 ; [#uses=1 type=i16*] [debug line = 63:7]
  store i16 %tmp_4, i16* %dst_addr, align 2, !dbg !190 ; [debug line = 63:7]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s) nounwind, !dbg !191 ; [#uses=0 type=i32] [debug line = 64:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !192), !dbg !182 ; [debug line = 57:61] [debug variable = k]
  br label %1, !dbg !182                          ; [debug line = 57:61]

; <label>:3                                       ; preds = %1
  ret void, !dbg !193                             ; [debug line = 65:1]
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

; [#uses=5]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_16 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_17 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_18 = or i7 %empty_17, %empty_16          ; [#uses=1 type=i7]
  ret i7 %empty_18
}

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_19 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_19
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
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
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 15, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"input", metadata !11, metadata !"short", i32 0, i32 15}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"output", metadata !11, metadata !"short", i32 0, i32 15}
!17 = metadata !{i32 786689, metadata !18, metadata !"input", null, i32 122, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct", metadata !"dct", metadata !"_Z3dctPsS_", metadata !19, i32 122, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 123} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786473, metadata !"dct.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Analysis/lab1", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !22}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !23, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 122, i32 16, metadata !18, null}
!30 = metadata !{i32 786689, metadata !18, metadata !"output", null, i32 122, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 122, i32 38, metadata !18, null}
!32 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[0]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!33 = metadata !{i32 786688, metadata !34, metadata !"buf_2d_in", metadata !19, i32 124, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 786443, metadata !18, i32 123, i32 1, metadata !19, i32 28} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !23, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37, metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !23, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{i32 124, i32 10, metadata !34, null}
!40 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[1]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!41 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[2]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!42 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[3]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!43 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[4]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!44 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[5]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!45 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[6]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!46 = metadata !{i32 790529, metadata !33, metadata !"buf_2d_in[7]", null, i32 124, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!47 = metadata !{i32 128, i32 4, metadata !34, null}
!48 = metadata !{i32 130, i32 4, metadata !34, null}
!49 = metadata !{i32 786689, metadata !50, metadata !"output", null, i32 110, metadata !26, i32 0, metadata !56} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786478, i32 0, metadata !19, metadata !"write_data", metadata !"write_data", metadata !"_Z10write_dataPA8_sPs", metadata !19, i32 110, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 111} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !53, metadata !22}
!53 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !23, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !37}
!56 = metadata !{i32 133, i32 4, metadata !34, null}
!57 = metadata !{i32 110, i32 116, metadata !50, metadata !56}
!58 = metadata !{i32 115, i32 9, metadata !59, metadata !56}
!59 = metadata !{i32 786443, metadata !60, i32 115, i32 4, metadata !19, i32 24} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !50, i32 111, i32 1, metadata !19, i32 23} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 117, i32 12, metadata !62, metadata !56}
!62 = metadata !{i32 786443, metadata !63, i32 117, i32 7, metadata !19, i32 26} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !59, i32 115, i32 66, metadata !19, i32 25} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 115, i32 61, metadata !59, metadata !56}
!65 = metadata !{i32 118, i32 1, metadata !66, metadata !56}
!66 = metadata !{i32 786443, metadata !62, i32 118, i32 1, metadata !19, i32 27} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 118, i32 2, metadata !66, metadata !56}
!68 = metadata !{i32 119, i32 1, metadata !66, metadata !56}
!69 = metadata !{i32 118, i32 67, metadata !66, metadata !56}
!70 = metadata !{i32 117, i32 64, metadata !62, metadata !56}
!71 = metadata !{i32 786688, metadata !60, metadata !"c", metadata !19, i32 112, metadata !72, i32 0, metadata !56} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 134, i32 1, metadata !34, null}
!74 = metadata !{i32 790531, metadata !75, metadata !"in_block[0]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!75 = metadata !{i32 786689, metadata !76, metadata !"in_block", null, i32 67, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct_2d", metadata !"dct_2d", metadata !"_Z6dct_2dPA8_sS0_", metadata !19, i32 67, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 69} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !79, metadata !79}
!79 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !81, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !19, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!82 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !81, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !81, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{i32 67, i32 24, metadata !76, null}
!85 = metadata !{i32 790531, metadata !75, metadata !"in_block[1]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!86 = metadata !{i32 790531, metadata !75, metadata !"in_block[2]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 790531, metadata !75, metadata !"in_block[3]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!88 = metadata !{i32 790531, metadata !75, metadata !"in_block[4]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!89 = metadata !{i32 790531, metadata !75, metadata !"in_block[5]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!90 = metadata !{i32 790531, metadata !75, metadata !"in_block[6]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!91 = metadata !{i32 790531, metadata !75, metadata !"in_block[7]", null, i32 67, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!92 = metadata !{i32 786689, metadata !76, metadata !"out_block", null, i32 68, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 68, i32 18, metadata !76, null}
!94 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[0]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!95 = metadata !{i32 786688, metadata !96, metadata !"col_inbuf", metadata !19, i32 71, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786443, metadata !76, i32 69, i32 1, metadata !19, i32 5} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 71, i32 109, metadata !96, null}
!98 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[1]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!99 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[2]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!100 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[3]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!101 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[4]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!102 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[5]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!103 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[6]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!104 = metadata !{i32 790529, metadata !95, metadata !"col_inbuf[7]", null, i32 71, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!105 = metadata !{i32 76, i32 8, metadata !106, null}
!106 = metadata !{i32 786443, metadata !96, i32 76, i32 4, metadata !19, i32 6} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 76, i32 60, metadata !106, null}
!108 = metadata !{i32 76, i32 66, metadata !109, null}
!109 = metadata !{i32 786443, metadata !106, i32 76, i32 65, metadata !19, i32 7} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 77, i32 7, metadata !109, null}
!111 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !19, i32 72, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 84, i32 34, metadata !114, null}
!114 = metadata !{i32 786443, metadata !115, i32 84, i32 1, metadata !19, i32 11} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !116, i32 83, i32 7, metadata !19, i32 10} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !117, i32 82, i32 1, metadata !19, i32 9} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !96, i32 81, i32 4, metadata !19, i32 8} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 83, i32 63, metadata !115, null}
!119 = metadata !{i32 83, i32 11, metadata !115, null}
!120 = metadata !{i32 81, i32 61, metadata !117, null}
!121 = metadata !{i32 84, i32 1, metadata !114, null}
!122 = metadata !{i32 84, i32 2, metadata !114, null}
!123 = metadata !{i32 85, i32 1, metadata !114, null}
!124 = metadata !{i32 87, i32 9, metadata !125, null}
!125 = metadata !{i32 786443, metadata !96, i32 87, i32 4, metadata !19, i32 12} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 87, i32 61, metadata !125, null}
!127 = metadata !{i32 87, i32 67, metadata !128, null}
!128 = metadata !{i32 786443, metadata !125, i32 87, i32 66, metadata !19, i32 13} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 88, i32 7, metadata !128, null}
!130 = metadata !{i32 94, i32 11, metadata !131, null}
!131 = metadata !{i32 786443, metadata !132, i32 94, i32 7, metadata !19, i32 16} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !133, i32 93, i32 1, metadata !19, i32 15} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !96, i32 92, i32 4, metadata !19, i32 14} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 92, i32 61, metadata !133, null}
!135 = metadata !{i32 95, i32 2, metadata !136, null}
!136 = metadata !{i32 786443, metadata !131, i32 95, i32 1, metadata !19, i32 17} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 96, i32 1, metadata !136, null}
!138 = metadata !{i32 95, i32 1, metadata !136, null}
!139 = metadata !{i32 95, i32 34, metadata !136, null}
!140 = metadata !{i32 94, i32 63, metadata !131, null}
!141 = metadata !{i32 96, i32 1, metadata !96, null}
!142 = metadata !{i32 786689, metadata !143, metadata !"input", null, i32 98, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 786478, i32 0, metadata !19, metadata !"read_data", metadata !"read_data", metadata !"_Z9read_dataPsPA8_s", metadata !19, i32 98, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 99} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{null, metadata !22, metadata !53}
!146 = metadata !{i32 98, i32 22, metadata !143, null}
!147 = metadata !{i32 790531, metadata !148, metadata !"buf[0]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!148 = metadata !{i32 786689, metadata !143, metadata !"buf", null, i32 98, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 98, i32 44, metadata !143, null}
!150 = metadata !{i32 790531, metadata !148, metadata !"buf[1]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!151 = metadata !{i32 790531, metadata !148, metadata !"buf[2]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!152 = metadata !{i32 790531, metadata !148, metadata !"buf[3]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!153 = metadata !{i32 790531, metadata !148, metadata !"buf[4]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!154 = metadata !{i32 790531, metadata !148, metadata !"buf[5]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!155 = metadata !{i32 790531, metadata !148, metadata !"buf[6]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!156 = metadata !{i32 790531, metadata !148, metadata !"buf[7]", null, i32 98, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!157 = metadata !{i32 103, i32 9, metadata !158, null}
!158 = metadata !{i32 786443, metadata !159, i32 103, i32 4, metadata !19, i32 19} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !143, i32 99, i32 1, metadata !19, i32 18} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 106, i32 66, metadata !161, null}
!161 = metadata !{i32 786443, metadata !162, i32 106, i32 1, metadata !19, i32 22} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !163, i32 105, i32 7, metadata !19, i32 21} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !158, i32 103, i32 66, metadata !19, i32 20} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 105, i32 64, metadata !162, null}
!165 = metadata !{i32 786688, metadata !159, metadata !"c", metadata !19, i32 100, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 105, i32 12, metadata !162, null}
!167 = metadata !{i32 103, i32 61, metadata !158, null}
!168 = metadata !{i32 106, i32 1, metadata !161, null}
!169 = metadata !{i32 106, i32 2, metadata !161, null}
!170 = metadata !{i32 107, i32 1, metadata !161, null}
!171 = metadata !{i32 108, i32 1, metadata !159, null}
!172 = metadata !{i32 786689, metadata !173, metadata !"dst", null, i32 48, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct_1d", metadata !"dct_1d", metadata !"_Z6dct_1dPsS_", metadata !19, i32 48, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 49} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{null, metadata !176, metadata !176}
!176 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !81, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!178 = metadata !{i32 48, i32 81, metadata !173, null}
!179 = metadata !{i32 57, i32 9, metadata !180, null}
!180 = metadata !{i32 786443, metadata !181, i32 57, i32 4, metadata !19, i32 1} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !173, i32 49, i32 1, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 57, i32 61, metadata !180, null}
!183 = metadata !{i32 57, i32 67, metadata !184, null}
!184 = metadata !{i32 786443, metadata !180, i32 57, i32 66, metadata !19, i32 2} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 58, i32 1, metadata !184, null}
!186 = metadata !{i32 60, i32 48, metadata !187, null}
!187 = metadata !{i32 786443, metadata !188, i32 59, i32 77, metadata !19, i32 4} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786443, metadata !184, i32 59, i32 7, metadata !19, i32 3} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 61, i32 10, metadata !187, null}
!190 = metadata !{i32 63, i32 7, metadata !184, null}
!191 = metadata !{i32 64, i32 4, metadata !184, null}
!192 = metadata !{i32 786688, metadata !181, metadata !"k", metadata !19, i32 50, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 65, i32 1, metadata !181, null}
