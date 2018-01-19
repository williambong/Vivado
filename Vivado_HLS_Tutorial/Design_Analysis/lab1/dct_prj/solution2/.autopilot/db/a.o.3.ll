; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Analysis/lab1/dct_prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=17]
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
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !17), !dbg !29 ; [debug line = 122:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !30), !dbg !31 ; [debug line = 122:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !32), !dbg !37 ; [debug line = 124:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !38) nounwind, !dbg !46 ; [debug line = 98:22@128:4] [debug variable = input]
  br label %1, !dbg !47                           ; [debug line = 103:9@128:4]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r_i = phi i4 [ 0, %0 ], [ %r_i_mid2, %.reset ] ; [#uses=2 type=i4]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !50     ; [#uses=2 type=i1] [debug line = 105:12@128:4]
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i ; [#uses=3 type=i4]
  %r = add i4 1, %r_i, !dbg !53                   ; [#uses=1 type=i4] [debug line = 103:61@128:4]
  %r_i_mid2 = select i1 %exitcond_i, i4 %r, i4 %r_i ; [#uses=3 type=i4]
  %tmp = trunc i4 %r_i_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !54 ; [#uses=1 type=i6] [debug line = 106:1@128:4]
  %c_i_cast6 = zext i4 %c_i_mid2 to i6, !dbg !50  ; [#uses=1 type=i6] [debug line = 105:12@128:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !56 ; [debug line = 106:2@128:4]
  %tmp_12_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !56 ; [#uses=1 type=i32] [debug line = 106:2@128:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !57 ; [debug line = 107:1@128:4]
  %tmp_5_i = add i6 %c_i_cast6, %tmp_i, !dbg !54  ; [#uses=1 type=i6] [debug line = 106:1@128:4]
  %tmp_6_i = zext i6 %tmp_5_i to i64, !dbg !54    ; [#uses=1 type=i64] [debug line = 106:1@128:4]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_6_i, !dbg !54 ; [#uses=1 type=i16*] [debug line = 106:1@128:4]
  %input_load = load i16* %input_addr, align 2, !dbg !54 ; [#uses=1 type=i16] [debug line = 106:1@128:4]
  %tmp_7_i_trn_cast = zext i4 %c_i_mid2 to i8     ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_1 to i8, !dbg !54   ; [#uses=1 type=i8] [debug line = 106:1@128:4]
  %p_addr1 = add i8 %p_addr_cast, %tmp_7_i_trn_cast, !dbg !54 ; [#uses=1 type=i8] [debug line = 106:1@128:4]
  %tmp_2 = zext i8 %p_addr1 to i64, !dbg !54      ; [#uses=1 type=i64] [debug line = 106:1@128:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_2, !dbg !54 ; [#uses=1 type=i16*] [debug line = 106:1@128:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !54 ; [debug line = 106:1@128:4]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_12_i) nounwind, !dbg !58 ; [#uses=0 type=i32] [debug line = 106:66@128:4]
  %c = add i4 1, %c_i_mid2, !dbg !59              ; [#uses=1 type=i4] [debug line = 105:64@128:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !60) nounwind, !dbg !59 ; [debug line = 105:64@128:4] [debug variable = c]
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_dct_2d([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %buf_2d_out) nounwind, !dbg !62 ; [debug line = 130:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !63) nounwind, !dbg !68 ; [debug line = 110:116@133:4] [debug variable = output]
  br label %2, !dbg !69                           ; [debug line = 115:9@133:4]

; <label>:2                                       ; preds = %.reset10, %read_data.exit
  %indvar_flatten1 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next1, %.reset10 ] ; [#uses=2 type=i7]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_i2_mid2, %.reset10 ] ; [#uses=2 type=i4]
  %c_i6 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i1 = icmp eq i4 %c_i6, -8, !dbg !72   ; [#uses=2 type=i1] [debug line = 117:12@133:4]
  %c_i6_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i6 ; [#uses=3 type=i4]
  %r_s = add i4 1, %r_i2, !dbg !75                ; [#uses=1 type=i4] [debug line = 115:61@133:4]
  %r_i2_mid2 = select i1 %exitcond_i1, i4 %r_s, i4 %r_i2 ; [#uses=3 type=i4]
  %tmp_3 = trunc i4 %r_i2_mid2 to i3              ; [#uses=1 type=i3]
  %tmp_i5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0), !dbg !76 ; [#uses=1 type=i6] [debug line = 118:1@133:4]
  %c_i6_cast2 = zext i4 %c_i6_mid2 to i6, !dbg !72 ; [#uses=1 type=i6] [debug line = 117:12@133:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !78 ; [debug line = 118:2@133:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 118:2@133:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !79 ; [debug line = 119:1@133:4]
  %tmp_8_i_trn_cast = zext i4 %c_i6_mid2 to i8    ; [#uses=1 type=i8]
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp_4 to i8, !dbg !76  ; [#uses=1 type=i8] [debug line = 118:1@133:4]
  %p_addr3 = add i8 %p_addr2_cast, %tmp_8_i_trn_cast, !dbg !76 ; [#uses=1 type=i8] [debug line = 118:1@133:4]
  %tmp_5 = zext i8 %p_addr3 to i64, !dbg !76      ; [#uses=1 type=i64] [debug line = 118:1@133:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_5, !dbg !76 ; [#uses=1 type=i16*] [debug line = 118:1@133:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !76 ; [#uses=1 type=i16] [debug line = 118:1@133:4]
  %tmp_9_i = add i6 %c_i6_cast2, %tmp_i5, !dbg !76 ; [#uses=1 type=i6] [debug line = 118:1@133:4]
  %tmp_3_i = zext i6 %tmp_9_i to i64, !dbg !76    ; [#uses=1 type=i64] [debug line = 118:1@133:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_3_i, !dbg !76 ; [#uses=1 type=i16*] [debug line = 118:1@133:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !76 ; [debug line = 118:1@133:4]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_2_i) nounwind, !dbg !80 ; [#uses=0 type=i32] [debug line = 118:67@133:4]
  %c_1 = add i4 1, %c_i6_mid2, !dbg !81           ; [#uses=1 type=i4] [debug line = 117:64@133:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !82) nounwind, !dbg !81 ; [debug line = 117:64@133:4] [debug variable = c]
  br label %2

write_data.exit:                                  ; preds = %2
  ret void, !dbg !83                              ; [debug line = 134:1]
}

; [#uses=1]
define internal fastcc void @dct_dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %in_block}, i64 0, metadata !84), !dbg !92 ; [debug line = 67:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !93), !dbg !94 ; [debug line = 68:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !95), !dbg !97 ; [debug line = 71:109] [debug variable = col_inbuf]
  br label %1, !dbg !98                           ; [debug line = 76:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !98        ; [#uses=1 type=i1] [debug line = 76:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !100                  ; [#uses=1 type=i4] [debug line = 76:60]
  br i1 %exitcond5, label %.preheader7.preheader, label %2, !dbg !98 ; [debug line = 76:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind, !dbg !101 ; [debug line = 76:66]
  call fastcc void @dct_dct_1d([64 x i16]* nocapture %in_block, i4 %i, [64 x i16]* nocapture %row_outbuf, i4 %i), !dbg !103 ; [debug line = 77:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !104), !dbg !100 ; [debug line = 76:60] [debug variable = i]
  br label %1, !dbg !100                          ; [debug line = 76:60]

.preheader7.preheader:                            ; preds = %.preheader7, %1
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader7 ], [ 0, %1 ] ; [#uses=2 type=i7]
  %j = phi i4 [ %j_mid2, %.preheader7 ], [ 0, %1 ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %.preheader7 ], [ 0, %1 ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6, label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %i_1, -8, !dbg !106      ; [#uses=2 type=i1] [debug line = 83:11]
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1  ; [#uses=3 type=i4]
  %j_s = add i4 %j, 1, !dbg !110                  ; [#uses=1 type=i4] [debug line = 81:61]
  %j_mid2 = select i1 %exitcond, i4 %j_s, i4 %j   ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind, !dbg !111 ; [debug line = 84:2]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5), !dbg !111 ; [#uses=1 type=i32] [debug line = 84:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !113 ; [debug line = 85:1]
  %tmp_2_trn_cast = zext i4 %i_1_mid2 to i8, !dbg !114 ; [#uses=1 type=i8] [debug line = 84:1]
  %tmp_trn_cast = zext i4 %j_mid2 to i8           ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !114    ; [#uses=1 type=i8] [debug line = 84:1]
  %p_addr5 = add i8 %tmp_trn_cast, %p_addr_cast, !dbg !114 ; [#uses=1 type=i8] [debug line = 84:1]
  %tmp_6 = zext i8 %p_addr5 to i64, !dbg !114     ; [#uses=1 type=i64] [debug line = 84:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_6, !dbg !114 ; [#uses=1 type=i16*] [debug line = 84:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !114 ; [#uses=1 type=i16] [debug line = 84:1]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr6_cast = zext i7 %tmp_7 to i8, !dbg !114 ; [#uses=1 type=i8] [debug line = 84:1]
  %p_addr7 = add i8 %tmp_2_trn_cast, %p_addr6_cast, !dbg !114 ; [#uses=1 type=i8] [debug line = 84:1]
  %tmp_8 = zext i8 %p_addr7 to i64, !dbg !114     ; [#uses=1 type=i64] [debug line = 84:1]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_8, !dbg !114 ; [#uses=1 type=i16*] [debug line = 84:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !114 ; [debug line = 84:1]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_9), !dbg !115 ; [#uses=0 type=i32] [debug line = 84:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !116           ; [#uses=1 type=i4] [debug line = 83:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !104), !dbg !116 ; [debug line = 83:63] [debug variable = i]
  br label %.preheader7.preheader

.preheader6:                                      ; preds = %3, %.preheader7.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader7.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i_2, -8, !dbg !117     ; [#uses=1 type=i1] [debug line = 87:9]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !119                ; [#uses=1 type=i4] [debug line = 87:61]
  br i1 %exitcond2, label %.preheader.preheader, label %3, !dbg !117 ; [debug line = 87:9]

; <label>:3                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind, !dbg !120 ; [debug line = 87:67]
  call fastcc void @dct_dct_1d([64 x i16]* nocapture %col_inbuf, i4 %i_2, [64 x i16]* nocapture %col_outbuf, i4 %i_2), !dbg !122 ; [debug line = 88:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !104), !dbg !119 ; [debug line = 87:61] [debug variable = i]
  br label %.preheader6, !dbg !119                ; [debug line = 87:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader6
  %indvar_flatten2 = phi i7 [ %indvar_flatten_next2, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %j_1_mid2, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten2, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i4 %i_3, -8, !dbg !123     ; [#uses=2 type=i1] [debug line = 94:11]
  %i_3_mid2 = select i1 %exitcond1, i4 0, i4 %i_3 ; [#uses=3 type=i4]
  %j_2 = add i4 %j_1, 1, !dbg !127                ; [#uses=1 type=i4] [debug line = 92:61]
  %j_1_mid2 = select i1 %exitcond1, i4 %j_2, i4 %j_1 ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind, !dbg !128 ; [debug line = 95:2]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8), !dbg !128 ; [#uses=1 type=i32] [debug line = 95:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !130 ; [debug line = 96:1]
  %tmp_4_trn_cast = zext i4 %i_3_mid2 to i8, !dbg !131 ; [#uses=1 type=i8] [debug line = 95:1]
  %tmp_3_trn_cast = zext i4 %j_1_mid2 to i8       ; [#uses=1 type=i8]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr8_cast = zext i7 %tmp_s to i8, !dbg !131 ; [#uses=1 type=i8] [debug line = 95:1]
  %p_addr9 = add i8 %tmp_3_trn_cast, %p_addr8_cast, !dbg !131 ; [#uses=1 type=i8] [debug line = 95:1]
  %tmp_1 = zext i8 %p_addr9 to i64, !dbg !131     ; [#uses=1 type=i64] [debug line = 95:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_1, !dbg !131 ; [#uses=1 type=i16*] [debug line = 95:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !131 ; [#uses=1 type=i16] [debug line = 95:1]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr3_cast = zext i7 %tmp_2 to i8, !dbg !131 ; [#uses=1 type=i8] [debug line = 95:1]
  %p_addr4 = add i8 %tmp_4_trn_cast, %p_addr3_cast, !dbg !131 ; [#uses=1 type=i8] [debug line = 95:1]
  %tmp_3 = zext i8 %p_addr4 to i64, !dbg !131     ; [#uses=1 type=i64] [debug line = 95:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 95:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !131 ; [debug line = 95:1]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_5), !dbg !132 ; [#uses=0 type=i32] [debug line = 95:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !133           ; [#uses=1 type=i4] [debug line = 94:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !104), !dbg !133 ; [debug line = 94:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !134                             ; [debug line = 96:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define internal fastcc void @dct_dct_1d([64 x i16]* nocapture %src, i4 %tmp_1, [64 x i16]* nocapture %dst, i4 %tmp_11) {
  %tmp_11_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_11) ; [#uses=1 type=i4]
  %tmp_1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_1) ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !135), !dbg !141 ; [debug line = 48:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !142), !dbg !143 ; [debug line = 48:81] [debug variable = dst]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8               ; [#uses=1 type=i8]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_11_read, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp_6 to i8, !dbg !144 ; [#uses=1 type=i8] [debug line = 57:9]
  br label %1, !dbg !144                          ; [debug line = 57:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !144       ; [#uses=1 type=i1] [debug line = 57:9]
  %k_1 = add i4 %k, 1, !dbg !147                  ; [#uses=1 type=i4] [debug line = 57:61]
  br i1 %exitcond1, label %6, label %2, !dbg !144 ; [debug line = 57:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !148 ; [debug line = 57:67]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !148 ; [#uses=1 type=i32] [debug line = 57:67]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %dct_coeff_table_addr6_cast = zext i7 %tmp_7 to i8, !dbg !150 ; [#uses=1 type=i8] [debug line = 59:11]
  br label %3, !dbg !150                          ; [debug line = 59:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_5, %4 ]       ; [#uses=2 type=i32]
  %exitcond = icmp eq i4 %n, -8, !dbg !150        ; [#uses=1 type=i1] [debug line = 59:11]
  %n_1 = add i4 %n, 1, !dbg !152                  ; [#uses=1 type=i4] [debug line = 59:72]
  br i1 %exitcond, label %5, label %4, !dbg !150  ; [debug line = 59:11]

; <label>:4                                       ; preds = %3
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !153 ; [debug line = 59:78]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind, !dbg !153 ; [#uses=1 type=i32] [debug line = 59:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !155 ; [debug line = 60:1]
  %tmp_6_trn5_cast = zext i4 %n to i8, !dbg !156  ; [#uses=2 type=i8] [debug line = 60:48]
  %dct_coeff_table_addr7 = add i8 %tmp_6_trn5_cast, %dct_coeff_table_addr6_cast, !dbg !156 ; [#uses=1 type=i8] [debug line = 60:48]
  %tmp_13 = zext i8 %dct_coeff_table_addr7 to i64, !dbg !156 ; [#uses=1 type=i64] [debug line = 60:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_13, !dbg !156 ; [#uses=1 type=i15*] [debug line = 60:48]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !156 ; [#uses=1 type=i15] [debug line = 60:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !156 ; [#uses=1 type=i31] [debug line = 60:48]
  %p_addr1 = add i8 %tmp_6_trn5_cast, %p_addr_cast, !dbg !157 ; [#uses=1 type=i8] [debug line = 61:10]
  %tmp_14 = zext i8 %p_addr1 to i64, !dbg !157    ; [#uses=1 type=i64] [debug line = 61:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_14, !dbg !157 ; [#uses=1 type=i16*] [debug line = 61:10]
  %src_load = load i16* %src_addr, align 2, !dbg !157 ; [#uses=1 type=i16] [debug line = 61:10]
  %tmp_7_cast = sext i16 %src_load to i31, !dbg !157 ; [#uses=1 type=i31] [debug line = 61:10]
  %tmp_8 = mul i31 %tmp_7_cast, %coeff_cast, !dbg !157 ; [#uses=1 type=i31] [debug line = 61:10]
  %tmp_8_cast = sext i31 %tmp_8 to i32, !dbg !157 ; [#uses=1 type=i32] [debug line = 61:10]
  %tmp_5 = add nsw i32 %tmp_8_cast, %tmp1, !dbg !157 ; [#uses=1 type=i32] [debug line = 61:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_5}, i64 0, metadata !158), !dbg !157 ; [debug line = 61:10] [debug variable = tmp]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_9) nounwind, !dbg !159 ; [#uses=0 type=i32] [debug line = 62:7]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !160), !dbg !152 ; [debug line = 59:72] [debug variable = n]
  br label %3, !dbg !152                          ; [debug line = 59:72]

; <label>:5                                       ; preds = %3
  %tmp_10 = trunc i32 %tmp1 to i29, !dbg !150     ; [#uses=1 type=i29] [debug line = 59:11]
  %tmp_2 = add i29 4096, %tmp_10, !dbg !161       ; [#uses=1 type=i29] [debug line = 63:7]
  %tmp_4 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2, i32 13, i32 28), !dbg !161 ; [#uses=1 type=i16] [debug line = 63:7]
  %tmp_trn_cast = zext i4 %k to i8, !dbg !161     ; [#uses=1 type=i8] [debug line = 63:7]
  %p_addr3 = add i8 %tmp_trn_cast, %p_addr2_cast, !dbg !161 ; [#uses=1 type=i8] [debug line = 63:7]
  %tmp_12 = zext i8 %p_addr3 to i64, !dbg !161    ; [#uses=1 type=i64] [debug line = 63:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_12, !dbg !161 ; [#uses=1 type=i16*] [debug line = 63:7]
  store i16 %tmp_4, i16* %dst_addr, align 2, !dbg !161 ; [debug line = 63:7]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s) nounwind, !dbg !162 ; [#uses=0 type=i32] [debug line = 64:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !163), !dbg !147 ; [debug line = 57:61] [debug variable = k]
  br label %1, !dbg !147                          ; [debug line = 57:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !164                             ; [debug line = 65:1]
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_16 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_17 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_18 = or i6 %empty_17, %empty_16          ; [#uses=1 type=i6]
  ret i6 %empty_18
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_19 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_20 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_21 = or i7 %empty_20, %empty_19          ; [#uses=1 type=i7]
  ret i7 %empty_21
}

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_22 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_22
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

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

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
!32 = metadata !{i32 786688, metadata !33, metadata !"buf_2d_in", metadata !19, i32 124, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 786443, metadata !18, i32 123, i32 1, metadata !19, i32 28} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !23, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36, metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 124, i32 10, metadata !33, null}
!38 = metadata !{i32 786689, metadata !39, metadata !"input", null, i32 98, metadata !26, i32 0, metadata !45} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786478, i32 0, metadata !19, metadata !"read_data", metadata !"read_data", metadata !"_Z9read_dataPsPA8_s", metadata !19, i32 98, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 99} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !22, metadata !42}
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !23, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{metadata !36}
!45 = metadata !{i32 128, i32 4, metadata !33, null}
!46 = metadata !{i32 98, i32 22, metadata !39, metadata !45}
!47 = metadata !{i32 103, i32 9, metadata !48, metadata !45}
!48 = metadata !{i32 786443, metadata !49, i32 103, i32 4, metadata !19, i32 19} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786443, metadata !39, i32 99, i32 1, metadata !19, i32 18} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 105, i32 12, metadata !51, metadata !45}
!51 = metadata !{i32 786443, metadata !52, i32 105, i32 7, metadata !19, i32 21} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !48, i32 103, i32 66, metadata !19, i32 20} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 103, i32 61, metadata !48, metadata !45}
!54 = metadata !{i32 106, i32 1, metadata !55, metadata !45}
!55 = metadata !{i32 786443, metadata !51, i32 106, i32 1, metadata !19, i32 22} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 106, i32 2, metadata !55, metadata !45}
!57 = metadata !{i32 107, i32 1, metadata !55, metadata !45}
!58 = metadata !{i32 106, i32 66, metadata !55, metadata !45}
!59 = metadata !{i32 105, i32 64, metadata !51, metadata !45}
!60 = metadata !{i32 786688, metadata !49, metadata !"c", metadata !19, i32 100, metadata !61, i32 0, metadata !45} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 130, i32 4, metadata !33, null}
!63 = metadata !{i32 786689, metadata !64, metadata !"output", null, i32 110, metadata !26, i32 0, metadata !67} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786478, i32 0, metadata !19, metadata !"write_data", metadata !"write_data", metadata !"_Z10write_dataPA8_sPs", metadata !19, i32 110, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 111} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !42, metadata !22}
!67 = metadata !{i32 133, i32 4, metadata !33, null}
!68 = metadata !{i32 110, i32 116, metadata !64, metadata !67}
!69 = metadata !{i32 115, i32 9, metadata !70, metadata !67}
!70 = metadata !{i32 786443, metadata !71, i32 115, i32 4, metadata !19, i32 24} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !64, i32 111, i32 1, metadata !19, i32 23} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 117, i32 12, metadata !73, metadata !67}
!73 = metadata !{i32 786443, metadata !74, i32 117, i32 7, metadata !19, i32 26} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !70, i32 115, i32 66, metadata !19, i32 25} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 115, i32 61, metadata !70, metadata !67}
!76 = metadata !{i32 118, i32 1, metadata !77, metadata !67}
!77 = metadata !{i32 786443, metadata !73, i32 118, i32 1, metadata !19, i32 27} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 118, i32 2, metadata !77, metadata !67}
!79 = metadata !{i32 119, i32 1, metadata !77, metadata !67}
!80 = metadata !{i32 118, i32 67, metadata !77, metadata !67}
!81 = metadata !{i32 117, i32 64, metadata !73, metadata !67}
!82 = metadata !{i32 786688, metadata !71, metadata !"c", metadata !19, i32 112, metadata !61, i32 0, metadata !67} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 134, i32 1, metadata !33, null}
!84 = metadata !{i32 786689, metadata !85, metadata !"in_block", null, i32 67, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct_2d", metadata !"dct_2d", metadata !"_Z6dct_2dPA8_sS0_", metadata !19, i32 67, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 69} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !88, metadata !88}
!88 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !90, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!90 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !19, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!91 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !90, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!92 = metadata !{i32 67, i32 24, metadata !85, null}
!93 = metadata !{i32 786689, metadata !85, metadata !"out_block", null, i32 68, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 68, i32 18, metadata !85, null}
!95 = metadata !{i32 786688, metadata !96, metadata !"col_inbuf", metadata !19, i32 71, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786443, metadata !85, i32 69, i32 1, metadata !19, i32 5} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 71, i32 109, metadata !96, null}
!98 = metadata !{i32 76, i32 8, metadata !99, null}
!99 = metadata !{i32 786443, metadata !96, i32 76, i32 4, metadata !19, i32 6} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 76, i32 60, metadata !99, null}
!101 = metadata !{i32 76, i32 66, metadata !102, null}
!102 = metadata !{i32 786443, metadata !99, i32 76, i32 65, metadata !19, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 77, i32 7, metadata !102, null}
!104 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !19, i32 72, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 83, i32 11, metadata !107, null}
!107 = metadata !{i32 786443, metadata !108, i32 83, i32 7, metadata !19, i32 10} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786443, metadata !109, i32 82, i32 1, metadata !19, i32 9} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786443, metadata !96, i32 81, i32 4, metadata !19, i32 8} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 81, i32 61, metadata !109, null}
!111 = metadata !{i32 84, i32 2, metadata !112, null}
!112 = metadata !{i32 786443, metadata !107, i32 84, i32 1, metadata !19, i32 11} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 85, i32 1, metadata !112, null}
!114 = metadata !{i32 84, i32 1, metadata !112, null}
!115 = metadata !{i32 84, i32 34, metadata !112, null}
!116 = metadata !{i32 83, i32 63, metadata !107, null}
!117 = metadata !{i32 87, i32 9, metadata !118, null}
!118 = metadata !{i32 786443, metadata !96, i32 87, i32 4, metadata !19, i32 12} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 87, i32 61, metadata !118, null}
!120 = metadata !{i32 87, i32 67, metadata !121, null}
!121 = metadata !{i32 786443, metadata !118, i32 87, i32 66, metadata !19, i32 13} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 88, i32 7, metadata !121, null}
!123 = metadata !{i32 94, i32 11, metadata !124, null}
!124 = metadata !{i32 786443, metadata !125, i32 94, i32 7, metadata !19, i32 16} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !126, i32 93, i32 1, metadata !19, i32 15} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786443, metadata !96, i32 92, i32 4, metadata !19, i32 14} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 92, i32 61, metadata !126, null}
!128 = metadata !{i32 95, i32 2, metadata !129, null}
!129 = metadata !{i32 786443, metadata !124, i32 95, i32 1, metadata !19, i32 17} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 96, i32 1, metadata !129, null}
!131 = metadata !{i32 95, i32 1, metadata !129, null}
!132 = metadata !{i32 95, i32 34, metadata !129, null}
!133 = metadata !{i32 94, i32 63, metadata !124, null}
!134 = metadata !{i32 96, i32 1, metadata !96, null}
!135 = metadata !{i32 786689, metadata !136, metadata !"src", null, i32 48, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct_1d", metadata !"dct_1d", metadata !"_Z6dct_1dPsS_", metadata !19, i32 48, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 49} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !139, metadata !139}
!139 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ]
!140 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !90, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!141 = metadata !{i32 48, i32 24, metadata !136, null}
!142 = metadata !{i32 786689, metadata !136, metadata !"dst", null, i32 48, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 48, i32 81, metadata !136, null}
!144 = metadata !{i32 57, i32 9, metadata !145, null}
!145 = metadata !{i32 786443, metadata !146, i32 57, i32 4, metadata !19, i32 1} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !136, i32 49, i32 1, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 57, i32 61, metadata !145, null}
!148 = metadata !{i32 57, i32 67, metadata !149, null}
!149 = metadata !{i32 786443, metadata !145, i32 57, i32 66, metadata !19, i32 2} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 59, i32 11, metadata !151, null}
!151 = metadata !{i32 786443, metadata !149, i32 59, i32 7, metadata !19, i32 3} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 59, i32 72, metadata !151, null}
!153 = metadata !{i32 59, i32 78, metadata !154, null}
!154 = metadata !{i32 786443, metadata !151, i32 59, i32 77, metadata !19, i32 4} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 60, i32 1, metadata !154, null}
!156 = metadata !{i32 60, i32 48, metadata !154, null}
!157 = metadata !{i32 61, i32 10, metadata !154, null}
!158 = metadata !{i32 786688, metadata !146, metadata !"tmp", metadata !19, i32 51, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 62, i32 7, metadata !154, null}
!160 = metadata !{i32 786688, metadata !146, metadata !"n", metadata !19, i32 50, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 63, i32 7, metadata !149, null}
!162 = metadata !{i32 64, i32 4, metadata !149, null}
!163 = metadata !{i32 786688, metadata !146, metadata !"k", metadata !19, i32 50, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 65, i32 1, metadata !146, null}
