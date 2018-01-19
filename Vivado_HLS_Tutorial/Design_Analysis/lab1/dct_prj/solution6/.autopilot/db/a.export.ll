; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Analysis/lab1/dct_prj/solution6/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00"
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436]
@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@Row_DCT_Loop_DCT_Outer_Loop_st = internal unnamed_addr constant [28 x i8] c"Row_DCT_Loop_DCT_Outer_Loop\00"
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@Col_DCT_Loop_DCT_Outer_Loop_st = internal unnamed_addr constant [28 x i8] c"Col_DCT_Loop_DCT_Outer_Loop\00"
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @dct([64 x i16]* %input_r, [64 x i16]* %output_r) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !13
  %row_outbuf_i = alloca [64 x i16], align 2
  %col_outbuf_i = alloca [64 x i16], align 2
  %col_inbuf_0 = alloca [8 x i16], align 2
  %col_inbuf_1 = alloca [8 x i16], align 2
  %col_inbuf_2 = alloca [8 x i16], align 2
  %col_inbuf_3 = alloca [8 x i16], align 2
  %col_inbuf_4 = alloca [8 x i16], align 2
  %col_inbuf_5 = alloca [8 x i16], align 2
  %col_inbuf_6 = alloca [8 x i16], align 2
  %col_inbuf_7 = alloca [8 x i16], align 2
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in_0 = alloca [8 x i16], align 2
  %buf_2d_in_1 = alloca [8 x i16], align 2
  %buf_2d_in_2 = alloca [8 x i16], align 2
  %buf_2d_in_3 = alloca [8 x i16], align 2
  %buf_2d_in_4 = alloca [8 x i16], align 2
  %buf_2d_in_5 = alloca [8 x i16], align 2
  %buf_2d_in_6 = alloca [8 x i16], align 2
  %buf_2d_in_7 = alloca [8 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  call fastcc void @dct_read_data([64 x i16]* %input_r, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind
  call fastcc void @dct_write_data([64 x i16]* nocapture %buf_2d_out, [64 x i16]* nocapture %output_r) nounwind
  ret void
}

define internal fastcc void @dct_write_data([64 x i16]* nocapture %buf_r, [64 x i16]* nocapture %output_r) {
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c
  %r_s = add i4 1, %r
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r
  %tmp = trunc i4 %r_mid2 to i3
  %tmp_s = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %c_cast6 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_4_trn_cast = zext i4 %c_mid2 to i8
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_1 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_4_trn_cast
  %tmp_2 = zext i8 %p_addr1 to i64
  %buf_addr = getelementptr [64 x i16]* %buf_r, i64 0, i64 %tmp_2
  %buf_load = load i16* %buf_addr, align 2
  %tmp_5 = add i6 %c_cast6, %tmp_s
  %tmp_6 = zext i6 %tmp_5 to i64
  %output_addr = getelementptr [64 x i16]* %output_r, i64 0, i64 %tmp_6
  store i16 %buf_load, i16* %output_addr, align 2
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_8)
  %c_1 = add i4 1, %c_mid2
  br label %1

; <label>:2                                       ; preds = %1
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

define internal fastcc void @dct_read_data([64 x i16]* nocapture %input_r, [8 x i16]* nocapture %buf_0, [8 x i16]* nocapture %buf_1, [8 x i16]* nocapture %buf_2, [8 x i16]* nocapture %buf_3, [8 x i16]* nocapture %buf_4, [8 x i16]* nocapture %buf_5, [8 x i16]* nocapture %buf_6, [8 x i16]* nocapture %buf_7) {
  br label %1

; <label>:1                                       ; preds = %0, %ifBlock
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %ifBlock ]
  %c = phi i4 [ 0, %0 ], [ %c_1, %ifBlock ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_3)
  %c_1 = add i4 %c_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond, i4 0, i4 %c
  %r_s = add i4 1, %r
  %r_mid2 = select i1 %exitcond, i4 %r_s, i4 %r
  %tmp_4 = trunc i4 %r_mid2 to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0)
  %tmp_s = zext i4 %r_mid2 to i64
  %c_cast = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_1 = add i6 %c_cast, %tmp
  %tmp_2 = zext i6 %tmp_1 to i64
  %input_addr = getelementptr [64 x i16]* %input_r, i64 0, i64 %tmp_2
  %input_load = load i16* %input_addr, align 2
  %tmp_5 = trunc i4 %c_mid2 to i3
  switch i3 %tmp_5, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

; <label>:2                                       ; preds = %1
  ret void

branch0:                                          ; preds = %.reset
  %buf_0_addr = getelementptr [8 x i16]* %buf_0, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_0_addr, align 2
  br label %ifBlock

branch1:                                          ; preds = %.reset
  %buf_1_addr = getelementptr [8 x i16]* %buf_1, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_1_addr, align 2
  br label %ifBlock

branch2:                                          ; preds = %.reset
  %buf_2_addr = getelementptr [8 x i16]* %buf_2, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_2_addr, align 2
  br label %ifBlock

branch3:                                          ; preds = %.reset
  %buf_3_addr = getelementptr [8 x i16]* %buf_3, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_3_addr, align 2
  br label %ifBlock

branch4:                                          ; preds = %.reset
  %buf_4_addr = getelementptr [8 x i16]* %buf_4, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_4_addr, align 2
  br label %ifBlock

branch5:                                          ; preds = %.reset
  %buf_5_addr = getelementptr [8 x i16]* %buf_5, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_5_addr, align 2
  br label %ifBlock

branch6:                                          ; preds = %.reset
  %buf_6_addr = getelementptr [8 x i16]* %buf_6, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_6_addr, align 2
  br label %ifBlock

branch7:                                          ; preds = %.reset
  %buf_7_addr = getelementptr [8 x i16]* %buf_7, i64 0, i64 %tmp_s
  store i16 %input_load, i16* %buf_7_addr, align 2
  br label %ifBlock
}

define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %0

.preheader7.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %newFuncRoot, %dct_1d.exit
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ]
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i_0_i_mid2, %dct_1d.exit ]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader7.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @Row_DCT_Loop_DCT_Outer_Loop_st)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond1_i4 = icmp eq i4 %k_i, -8
  %k_i_mid2 = select i1 %exitcond1_i4, i4 0, i4 %k_i
  %i2 = add i4 %i_0_i, 1
  %i_0_i_mid2 = select i1 %exitcond1_i4, i4 %i2, i4 %i_0_i
  %tmp_71_cast_i = zext i4 %i_0_i_mid2 to i64
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i_7 = zext i4 %k_i_mid2 to i64
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_7
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29
  %buf_2d_in_0_addr = getelementptr [8 x i16]* %buf_2d_in_0, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_0_load = load i16* %buf_2d_in_0_addr, align 2
  %tmp_72_cast_i = sext i16 %buf_2d_in_0_load to i29
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_7
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29
  %buf_2d_in_1_addr = getelementptr [8 x i16]* %buf_2d_in_1, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_1_load = load i16* %buf_2d_in_1_addr, align 2
  %tmp_72_1_cast_i = sext i16 %buf_2d_in_1_load to i29
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_7
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29
  %buf_2d_in_2_addr = getelementptr [8 x i16]* %buf_2d_in_2, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_2_load = load i16* %buf_2d_in_2_addr, align 2
  %tmp_72_2_cast_i = sext i16 %buf_2d_in_2_load to i29
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_7
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29
  %buf_2d_in_3_addr = getelementptr [8 x i16]* %buf_2d_in_3, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_3_load = load i16* %buf_2d_in_3_addr, align 2
  %tmp_72_3_cast_i = sext i16 %buf_2d_in_3_load to i29
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_7
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29
  %buf_2d_in_4_addr = getelementptr [8 x i16]* %buf_2d_in_4, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_4_load = load i16* %buf_2d_in_4_addr, align 2
  %tmp_72_4_cast_i = sext i16 %buf_2d_in_4_load to i29
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_7
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29
  %buf_2d_in_5_addr = getelementptr [8 x i16]* %buf_2d_in_5, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_5_load = load i16* %buf_2d_in_5_addr, align 2
  %tmp_72_5_cast_i = sext i16 %buf_2d_in_5_load to i29
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_7
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29
  %buf_2d_in_6_addr = getelementptr [8 x i16]* %buf_2d_in_6, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_6_load = load i16* %buf_2d_in_6_addr, align 2
  %tmp_72_6_cast_i = sext i16 %buf_2d_in_6_load to i29
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_7
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29
  %buf_2d_in_7_addr = getelementptr [8 x i16]* %buf_2d_in_7, i64 0, i64 %tmp_71_cast_i
  %buf_2d_in_7_load = load i16* %buf_2d_in_7_addr, align 2
  %tmp_72_7_cast_i = sext i16 %buf_2d_in_7_load to i29
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i
  %tmp1 = add i29 %tmp_8_i, %tmp_8_1_i
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i
  %tmp = add i29 %tmp2, %tmp1
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i
  %tmp6 = add i29 %tmp_8_7_i, 4096
  %tmp5 = add i29 %tmp6, %tmp_8_6_i
  %tmp3 = add i29 %tmp5, %tmp4
  %tmp_2_i = add i29 %tmp3, %tmp
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28)
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_5 to i8
  %p_addr1 = add i8 %tmp_i_trn_cast, %p_addr_cast
  %tmp_6 = zext i8 %p_addr1 to i64
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_6
  store i16 %tmp_4_i, i16* %row_outbuf_i_addr, align 2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind
  %k = add i4 %k_i_mid2, 1
  br label %0
}

define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind {
newFuncRoot:
  br label %0

.preheader6.i.exitStub:                           ; preds = %0
  ret void

.preheader7.i:                                    ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond3_i4 = icmp eq i4 %i_1_i, -8
  %i_1_i_mid2 = select i1 %exitcond3_i4, i4 0, i4 %i_1_i
  %j2 = add i4 1, %j_0_i
  %j_0_i_mid2 = select i1 %exitcond3_i4, i4 %j2, i4 %j_0_i
  %tmp_s = zext i4 %j_0_i_mid2 to i64
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_trn_cast = zext i4 %j_0_i_mid2 to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast
  %tmp_7 = zext i8 %p_addr1 to i64
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_7
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2
  %tmp_6 = trunc i4 %i_1_i_mid2 to i3
  switch i3 %tmp_6, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

; <label>:0                                       ; preds = %newFuncRoot, %ifBlock
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %ifBlock ]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %j_0_i_mid2, %ifBlock ]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %ifBlock ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader6.i.exitStub, label %.preheader7.i

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_5) nounwind
  %i = add i4 %i_1_i_mid2, 1
  br label %0

branch0:                                          ; preds = %.preheader7.i
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_0_addr, align 2
  br label %ifBlock

branch1:                                          ; preds = %.preheader7.i
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_1_addr, align 2
  br label %ifBlock

branch2:                                          ; preds = %.preheader7.i
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_2_addr, align 2
  br label %ifBlock

branch3:                                          ; preds = %.preheader7.i
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_3_addr, align 2
  br label %ifBlock

branch4:                                          ; preds = %.preheader7.i
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_4_addr, align 2
  br label %ifBlock

branch5:                                          ; preds = %.preheader7.i
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_5_addr, align 2
  br label %ifBlock

branch6:                                          ; preds = %.preheader7.i
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_6_addr, align 2
  br label %ifBlock

branch7:                                          ; preds = %.preheader7.i
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_s
  store i16 %row_outbuf_i_load, i16* %col_inbuf_7_addr, align 2
  br label %ifBlock
}

define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %0

.preheader.i.exitStub:                            ; preds = %0
  ret void

; <label>:0                                       ; preds = %newFuncRoot, %dct_1d.exit
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ]
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i_2_i_mid2, %dct_1d.exit ]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @Col_DCT_Loop_DCT_Outer_Loop_st)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond1_i4 = icmp eq i4 %k_i, -8
  %k_i_mid2 = select i1 %exitcond1_i4, i4 0, i4 %k_i
  %i2 = add i4 %i_2_i, 1
  %i_2_i_mid2 = select i1 %exitcond1_i4, i4 %i2, i4 %i_2_i
  %tmp_71_cast_i = zext i4 %i_2_i_mid2 to i64
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i_10 = zext i4 %k_i_mid2 to i64
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_10
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_0_load = load i16* %col_inbuf_0_addr, align 2
  %tmp_72_cast_i = sext i16 %col_inbuf_0_load to i29
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_10
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_1_load = load i16* %col_inbuf_1_addr, align 2
  %tmp_72_1_cast_i = sext i16 %col_inbuf_1_load to i29
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_10
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_2_load = load i16* %col_inbuf_2_addr, align 2
  %tmp_72_2_cast_i = sext i16 %col_inbuf_2_load to i29
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_10
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_3_load = load i16* %col_inbuf_3_addr, align 2
  %tmp_72_3_cast_i = sext i16 %col_inbuf_3_load to i29
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_10
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_4_load = load i16* %col_inbuf_4_addr, align 2
  %tmp_72_4_cast_i = sext i16 %col_inbuf_4_load to i29
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_10
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_5_load = load i16* %col_inbuf_5_addr, align 2
  %tmp_72_5_cast_i = sext i16 %col_inbuf_5_load to i29
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_10
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_6_load = load i16* %col_inbuf_6_addr, align 2
  %tmp_72_6_cast_i = sext i16 %col_inbuf_6_load to i29
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_10
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_71_cast_i
  %col_inbuf_7_load = load i16* %col_inbuf_7_addr, align 2
  %tmp_72_7_cast_i = sext i16 %col_inbuf_7_load to i29
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i
  %tmp1 = add i29 %tmp_8_i, %tmp_8_1_i
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i
  %tmp = add i29 %tmp2, %tmp1
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i
  %tmp6 = add i29 %tmp_8_7_i, 4096
  %tmp5 = add i29 %tmp6, %tmp_8_6_i
  %tmp3 = add i29 %tmp5, %tmp4
  %tmp_2_i = add i29 %tmp3, %tmp
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28)
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_8 to i8
  %p_addr1 = add i8 %tmp_i_trn_cast, %p_addr_cast
  %tmp_9 = zext i8 %p_addr1 to i64
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_9
  store i16 %tmp_4_i, i16* %col_outbuf_i_addr, align 2
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind
  %k = add i4 %k_i_mid2, 1
  br label %0
}

define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i8 = icmp eq i4 %i_3_i, -8
  %i_3_i_mid2 = select i1 %exitcond_i8, i4 0, i4 %i_3_i
  %j6 = add i4 %j_1_i, 1
  %j_1_i_mid2 = select i1 %exitcond_i8, i4 %j6, i4 %j_1_i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_trn_cast = zext i4 %i_3_i_mid2 to i8
  %tmp_9_trn_cast = zext i4 %j_1_i_mid2 to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr1 = add i8 %tmp_9_trn_cast, %p_addr_cast
  %tmp_s = zext i8 %p_addr1 to i64
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_s
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_i_mid2, i3 0)
  %p_addr4_cast = zext i7 %tmp_1 to i8
  %p_addr5 = add i8 %tmp_trn_cast, %p_addr4_cast
  %tmp_2 = zext i8 %p_addr5 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_2
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_6) nounwind
  %i = add i4 %i_3_i_mid2, 1
  br label %0

; <label>:0                                       ; preds = %newFuncRoot, %.preheader.i
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %j_1_i_mid2, %.preheader.i ]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_13 = zext i3 %1 to i6
  %empty_14 = shl i6 %empty, 3
  %empty_15 = or i6 %empty_14, %empty_13
  ret i6 %empty_15
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_16 = zext i3 %1 to i7
  %empty_17 = shl i7 %empty, 3
  %empty_18 = or i7 %empty_17, %empty_16
  ret i7 %empty_18
}

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_19 = trunc i29 %empty to i16
  ret i16 %empty_19
}

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

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
