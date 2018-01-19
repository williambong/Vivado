; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2/matrixmul_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str3 = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str4 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=3 type=[4 x i8]*]
@matrixmul.str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=35]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=6]
declare i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone

; [#uses=0]
define void @matrixmul(i24* %a, i24* %b, i16* %res) {
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %a), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %b), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %res), !map !54
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul.str) nounwind
  call void @llvm.dbg.value(metadata !{i24* %a}, i64 0, metadata !59), !dbg !62 ; [debug line = 49:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i24* %b}, i64 0, metadata !63), !dbg !65 ; [debug line = 50:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i16* %res}, i64 0, metadata !66), !dbg !68 ; [debug line = 51:16] [debug variable = res]
  call void (...)* @_ssdm_op_SpecInterface(i24* %a, [8 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void (...)* @_ssdm_op_SpecInterface(i24* %b, [8 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %res, [8 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1)
  br label %1, !dbg !69                           ; [debug line = 63:21]

; <label>:1                                       ; preds = %8, %0
  %"b_copy[2][2]." = phi i8 [ undef, %0 ], [ %"b_copy[2][2].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[2][1]." = phi i8 [ undef, %0 ], [ %"b_copy[2][1].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[2][0]." = phi i8 [ undef, %0 ], [ %"b_copy[2][0].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[1][2]." = phi i8 [ undef, %0 ], [ %"b_copy[1][2].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[1][1]." = phi i8 [ undef, %0 ], [ %"b_copy[1][1].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[1][0]." = phi i8 [ undef, %0 ], [ %"b_copy[1][0].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[0][2]." = phi i8 [ undef, %0 ], [ %"b_copy[0][2].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[0][1]." = phi i8 [ undef, %0 ], [ %"b_copy[0][1].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %"b_copy[0][0]." = phi i8 [ undef, %0 ], [ %"b_copy[0][0].1.lcssa", %8 ] ; [#uses=1 type=i8]
  %a_row.2. = phi i8 [ undef, %0 ], [ %a_row.2.1.lcssa, %8 ] ; [#uses=1 type=i8]
  %a_row.1. = phi i8 [ undef, %0 ], [ %a_row.1.1.lcssa, %8 ] ; [#uses=1 type=i8]
  %a_row.0. = phi i8 [ undef, %0 ], [ %a_row.0.1.lcssa, %8 ] ; [#uses=1 type=i8]
  %i = phi i2 [ 0, %0 ], [ %i.1, %8 ]             ; [#uses=3 type=i2]
  %exitcond4 = icmp eq i2 %i, -1, !dbg !69        ; [#uses=1 type=i1] [debug line = 63:21]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %10, label %3, !dbg !69 ; [debug line = 63:21]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str3) nounwind, !dbg !72 ; [debug line = 63:36]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str3) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 63:36]
  %tmp = icmp eq i2 %i, 0, !dbg !74               ; [#uses=1 type=i1] [debug line = 75:6]
  br label %4, !dbg !77                           ; [debug line = 65:23]

; <label>:4                                       ; preds = %.loopexit, %3
  %"b_copy[2][2].1" = phi i8 [ %"b_copy[2][2].", %3 ], [ %"b_copy[2][2].3", %.loopexit ] ; [#uses=4 type=i8]
  %"b_copy[2][1].1" = phi i8 [ %"b_copy[2][1].", %3 ], [ %"b_copy[2][1].3", %.loopexit ] ; [#uses=4 type=i8]
  %"b_copy[2][2].6" = phi i8 [ %"b_copy[2][0].", %3 ], [ %"b_copy[2][0].3", %.loopexit ] ; [#uses=3 type=i8]
  %"b_copy[1][2].1" = phi i8 [ %"b_copy[1][2].", %3 ], [ %"b_copy[1][2].3", %.loopexit ] ; [#uses=4 type=i8]
  %"b_copy[1][1].1" = phi i8 [ %"b_copy[1][1].", %3 ], [ %"b_copy[1][1].3", %.loopexit ] ; [#uses=4 type=i8]
  %"b_copy[1][2].6" = phi i8 [ %"b_copy[1][0].", %3 ], [ %"b_copy[1][0].3", %.loopexit ] ; [#uses=3 type=i8]
  %"b_copy[0][2].1" = phi i8 [ %"b_copy[0][2].", %3 ], [ %"b_copy[0][2].3", %.loopexit ] ; [#uses=4 type=i8]
  %"b_copy[0][1].1" = phi i8 [ %"b_copy[0][1].", %3 ], [ %"b_copy[0][1].3", %.loopexit ] ; [#uses=4 type=i8]
  %"b_copy[0][2].6" = phi i8 [ %"b_copy[0][0].", %3 ], [ %"b_copy[0][0].3", %.loopexit ] ; [#uses=3 type=i8]
  %a_row.2.1 = phi i8 [ %a_row.2., %3 ], [ %a_row.2.2, %.loopexit ] ; [#uses=2 type=i8]
  %a_row.1.1 = phi i8 [ %a_row.1., %3 ], [ %a_row.1.2, %.loopexit ] ; [#uses=2 type=i8]
  %a_row.0.1 = phi i8 [ %a_row.0., %3 ], [ %a_row.0.2, %.loopexit ] ; [#uses=2 type=i8]
  %j = phi i2 [ 0, %3 ], [ %j.1, %.loopexit ]     ; [#uses=8 type=i2]
  %exitcond3 = icmp eq i2 %j, -1, !dbg !77        ; [#uses=1 type=i1] [debug line = 65:23]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %8, label %6, !dbg !77  ; [debug line = 65:23]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str4) nounwind, !dbg !78 ; [debug line = 65:38]
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str4) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 65:38]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !79 ; [debug line = 66:1]
  %tmp.3 = icmp eq i2 %j, 0, !dbg !80             ; [#uses=1 type=i1] [debug line = 70:7]
  br i1 %tmp.3, label %.preheader5.0, label %.loopexit6, !dbg !80 ; [debug line = 70:7]

.preheader5.0:                                    ; preds = %6
  %a.load = load volatile i24* %a, align 4, !dbg !81 ; [#uses=3 type=i24] [debug line = 72:11]
  %"a_row[0]" = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a.load, i32 0, i32 7), !dbg !81 ; [#uses=1 type=i8] [debug line = 72:11]
  call void @llvm.dbg.value(metadata !{i8 %"a_row[0]"}, i64 0, metadata !84), !dbg !81 ; [debug line = 72:11] [debug variable = a_row[0]]
  %"a_row[1]" = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a.load, i32 8, i32 15), !dbg !81 ; [#uses=1 type=i8] [debug line = 72:11]
  call void @llvm.dbg.value(metadata !{i8 %"a_row[1]"}, i64 0, metadata !86), !dbg !81 ; [debug line = 72:11] [debug variable = a_row[1]]
  %"a_row[2]" = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %a.load, i32 16, i32 23), !dbg !81 ; [#uses=1 type=i8] [debug line = 72:11]
  call void @llvm.dbg.value(metadata !{i8 %"a_row[2]"}, i64 0, metadata !87), !dbg !81 ; [debug line = 72:11] [debug variable = a_row[2]]
  br label %.loopexit6

.loopexit6:                                       ; preds = %.preheader5.0, %6
  %a_row.2.2 = phi i8 [ %"a_row[2]", %.preheader5.0 ], [ %a_row.2.1, %6 ] ; [#uses=2 type=i8]
  %a_row.1.2 = phi i8 [ %"a_row[1]", %.preheader5.0 ], [ %a_row.1.1, %6 ] ; [#uses=2 type=i8]
  %a_row.0.2 = phi i8 [ %"a_row[0]", %.preheader5.0 ], [ %a_row.0.1, %6 ] ; [#uses=2 type=i8]
  br i1 %tmp, label %.preheader.preheader_ifconv, label %.loopexit, !dbg !74 ; [debug line = 75:6]

.preheader.preheader_ifconv:                      ; preds = %.loopexit6
  %b.load = load volatile i24* %b, align 4, !dbg !88 ; [#uses=3 type=i24] [debug line = 77:16]
  %"b_copy[0][2].8" = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b.load, i32 0, i32 7), !dbg !88 ; [#uses=3 type=i8] [debug line = 77:16]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].8"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].8"}, i64 0, metadata !95), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][0]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].8"}, i64 0, metadata !96), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][1]]
  %sel_tmp = icmp eq i2 %j, 1                     ; [#uses=6 type=i1]
  %"b_copy[0][2]" = select i1 %sel_tmp, i8 %"b_copy[0][2].1", i8 %"b_copy[0][2].8" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2]"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %sel_tmp2 = icmp eq i2 %j, 0                    ; [#uses=9 type=i1]
  %"b_copy[0][2].2" = select i1 %sel_tmp2, i8 %"b_copy[0][2].1", i8 %"b_copy[0][2]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].2"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %"b_copy[0][2].4" = select i1 %sel_tmp, i8 %"b_copy[0][2].8", i8 %"b_copy[0][1].1" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].4"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %"b_copy[0][2].5" = select i1 %sel_tmp2, i8 %"b_copy[0][1].1", i8 %"b_copy[0][2].4" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].5"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].6"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %"b_copy[0][2].7" = select i1 %sel_tmp2, i8 %"b_copy[0][2].8", i8 %"b_copy[0][2].6" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[0][2].7"}, i64 0, metadata !91), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[0][2]]
  %"b_copy[1][2].8" = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b.load, i32 8, i32 15), !dbg !88 ; [#uses=3 type=i8] [debug line = 77:16]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].8"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].8"}, i64 0, metadata !99), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][0]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].8"}, i64 0, metadata !100), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][1]]
  %"b_copy[1][2]" = select i1 %sel_tmp, i8 %"b_copy[1][2].1", i8 %"b_copy[1][2].8" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2]"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %"b_copy[1][2].2" = select i1 %sel_tmp2, i8 %"b_copy[1][2].1", i8 %"b_copy[1][2]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].2"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %"b_copy[1][2].4" = select i1 %sel_tmp, i8 %"b_copy[1][2].8", i8 %"b_copy[1][1].1" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].4"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %"b_copy[1][2].5" = select i1 %sel_tmp2, i8 %"b_copy[1][1].1", i8 %"b_copy[1][2].4" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].5"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].6"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %"b_copy[1][2].7" = select i1 %sel_tmp2, i8 %"b_copy[1][2].8", i8 %"b_copy[1][2].6" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[1][2].7"}, i64 0, metadata !97), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[1][2]]
  %"b_copy[2][2].8" = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %b.load, i32 16, i32 23), !dbg !88 ; [#uses=3 type=i8] [debug line = 77:16]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].8"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].8"}, i64 0, metadata !103), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][0]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].8"}, i64 0, metadata !104), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][1]]
  %"b_copy[2][2]" = select i1 %sel_tmp, i8 %"b_copy[2][2].1", i8 %"b_copy[2][2].8" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2]"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %"b_copy[2][2].2" = select i1 %sel_tmp2, i8 %"b_copy[2][2].1", i8 %"b_copy[2][2]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].2"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %"b_copy[2][2].4" = select i1 %sel_tmp, i8 %"b_copy[2][2].8", i8 %"b_copy[2][1].1" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].4"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %"b_copy[2][2].5" = select i1 %sel_tmp2, i8 %"b_copy[2][1].1", i8 %"b_copy[2][2].4" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].5"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].6"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  %"b_copy[2][2].7" = select i1 %sel_tmp2, i8 %"b_copy[2][2].8", i8 %"b_copy[2][2].6" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"b_copy[2][2].7"}, i64 0, metadata !101), !dbg !88 ; [debug line = 77:16] [debug variable = b_copy[2][2]]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader_ifconv, %.loopexit6
  %"b_copy[2][2].3" = phi i8 [ %"b_copy[2][2].2", %.preheader.preheader_ifconv ], [ %"b_copy[2][2].1", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[2][1].3" = phi i8 [ %"b_copy[2][2].5", %.preheader.preheader_ifconv ], [ %"b_copy[2][1].1", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[2][0].3" = phi i8 [ %"b_copy[2][2].7", %.preheader.preheader_ifconv ], [ %"b_copy[2][2].6", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[1][2].3" = phi i8 [ %"b_copy[1][2].2", %.preheader.preheader_ifconv ], [ %"b_copy[1][2].1", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[1][1].3" = phi i8 [ %"b_copy[1][2].5", %.preheader.preheader_ifconv ], [ %"b_copy[1][1].1", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[1][0].3" = phi i8 [ %"b_copy[1][2].7", %.preheader.preheader_ifconv ], [ %"b_copy[1][2].6", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[0][2].3" = phi i8 [ %"b_copy[0][2].2", %.preheader.preheader_ifconv ], [ %"b_copy[0][2].1", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[0][1].3" = phi i8 [ %"b_copy[0][2].5", %.preheader.preheader_ifconv ], [ %"b_copy[0][1].1", %.loopexit6 ] ; [#uses=2 type=i8]
  %"b_copy[0][0].3" = phi i8 [ %"b_copy[0][2].7", %.preheader.preheader_ifconv ], [ %"b_copy[0][2].6", %.loopexit6 ] ; [#uses=2 type=i8]
  %tmp. = sext i8 %a_row.0.2 to i16, !dbg !105    ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.1 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %"b_copy[0][0].3", i8 %"b_copy[0][1].3", i8 %"b_copy[0][2].3", i2 %j) ; [#uses=1 type=i8]
  %tmp.5 = sext i8 %tmp.1 to i16, !dbg !105       ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.6 = mul i16 %tmp.5, %tmp., !dbg !105       ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.5.1 = sext i8 %a_row.1.2 to i16, !dbg !105 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.7 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %"b_copy[1][0].3", i8 %"b_copy[1][1].3", i8 %"b_copy[1][2].3", i2 %j) ; [#uses=1 type=i8]
  %tmp.8.1 = sext i8 %tmp.7 to i16, !dbg !105     ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.10.1 = mul i16 %tmp.8.1, %tmp.5.1, !dbg !105 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.5.2 = sext i8 %a_row.2.2 to i16, !dbg !105 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.8 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %"b_copy[2][0].3", i8 %"b_copy[2][1].3", i8 %"b_copy[2][2].3", i2 %j) ; [#uses=1 type=i8]
  %tmp.8.2 = sext i8 %tmp.8 to i16, !dbg !105     ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.10.2 = mul i16 %tmp.8.2, %tmp.5.2, !dbg !105 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp9 = add i16 %tmp.10.2, %tmp.10.1, !dbg !105 ; [#uses=1 type=i16] [debug line = 82:7]
  %tmp.11.2 = add i16 %tmp.6, %tmp9, !dbg !105    ; [#uses=1 type=i16] [debug line = 82:7]
  store volatile i16 %tmp.11.2, i16* %res, align 2, !dbg !105 ; [debug line = 82:7]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str4, i32 %tmp.4) nounwind, !dbg !106 ; [#uses=0 type=i32] [debug line = 83:5]
  %j.1 = add i2 %j, 1, !dbg !107                  ; [#uses=1 type=i2] [debug line = 65:32]
  call void @llvm.dbg.value(metadata !{i2 %j.1}, i64 0, metadata !108), !dbg !107 ; [debug line = 65:32] [debug variable = j]
  br label %4, !dbg !107                          ; [debug line = 65:32]

; <label>:8                                       ; preds = %4
  %a_row.0.1.lcssa = phi i8 [ %a_row.0.1, %4 ]    ; [#uses=1 type=i8]
  %a_row.1.1.lcssa = phi i8 [ %a_row.1.1, %4 ]    ; [#uses=1 type=i8]
  %a_row.2.1.lcssa = phi i8 [ %a_row.2.1, %4 ]    ; [#uses=1 type=i8]
  %"b_copy[0][0].1.lcssa" = phi i8 [ %"b_copy[0][2].6", %4 ] ; [#uses=1 type=i8]
  %"b_copy[0][1].1.lcssa" = phi i8 [ %"b_copy[0][1].1", %4 ] ; [#uses=1 type=i8]
  %"b_copy[0][2].1.lcssa" = phi i8 [ %"b_copy[0][2].1", %4 ] ; [#uses=1 type=i8]
  %"b_copy[1][0].1.lcssa" = phi i8 [ %"b_copy[1][2].6", %4 ] ; [#uses=1 type=i8]
  %"b_copy[1][1].1.lcssa" = phi i8 [ %"b_copy[1][1].1", %4 ] ; [#uses=1 type=i8]
  %"b_copy[1][2].1.lcssa" = phi i8 [ %"b_copy[1][2].1", %4 ] ; [#uses=1 type=i8]
  %"b_copy[2][0].1.lcssa" = phi i8 [ %"b_copy[2][2].6", %4 ] ; [#uses=1 type=i8]
  %"b_copy[2][1].1.lcssa" = phi i8 [ %"b_copy[2][1].1", %4 ] ; [#uses=1 type=i8]
  %"b_copy[2][2].1.lcssa" = phi i8 [ %"b_copy[2][2].1", %4 ] ; [#uses=1 type=i8]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str3, i32 %tmp.2) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 84:3]
  %i.1 = add i2 %i, 1, !dbg !111                  ; [#uses=1 type=i2] [debug line = 63:30]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !112), !dbg !111 ; [debug line = 63:30] [debug variable = i]
  br label %1, !dbg !111                          ; [debug line = 63:30]

; <label>:10                                      ; preds = %1
  ret void, !dbg !113                             ; [debug line = 85:1]
}

; [#uses=3]
declare i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2/matrixmul_prj/solution1/.autopilot/db/matrixmul.pragma.2.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 52} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"matrixmul.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !15, metadata !18}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !6, i32 60, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !17, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !6, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !20, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"result_t", metadata !6, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25, metadata !31, metadata !36}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"a", metadata !28, metadata !"char", i32 0, i32 7}
!28 = metadata !{metadata !29, metadata !30}
!29 = metadata !{i32 0, i32 2, i32 1}
!30 = metadata !{i32 0, i32 0, i32 2}
!31 = metadata !{i32 8, i32 15, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"a", metadata !34, metadata !"char", i32 0, i32 7}
!34 = metadata !{metadata !29, metadata !35}
!35 = metadata !{i32 1, i32 1, i32 2}
!36 = metadata !{i32 16, i32 23, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"a", metadata !39, metadata !"char", i32 0, i32 7}
!39 = metadata !{metadata !29, metadata !40}
!40 = metadata !{i32 2, i32 2, i32 2}
!41 = metadata !{metadata !42, metadata !46, metadata !50}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"b", metadata !45, metadata !"char", i32 0, i32 7}
!45 = metadata !{metadata !30, metadata !29}
!46 = metadata !{i32 8, i32 15, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"b", metadata !49, metadata !"char", i32 0, i32 7}
!49 = metadata !{metadata !35, metadata !29}
!50 = metadata !{i32 16, i32 23, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"b", metadata !53, metadata !"char", i32 0, i32 7}
!53 = metadata !{metadata !40, metadata !29}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 15, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"res", metadata !58, metadata !"short", i32 0, i32 15}
!58 = metadata !{metadata !29, metadata !29}
!59 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 49, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !14, metadata !14}
!62 = metadata !{i32 49, i32 15, metadata !5, null}
!63 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 50, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !17, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{i32 50, i32 15, metadata !5, null}
!66 = metadata !{i32 786689, metadata !5, metadata !"res", null, i32 51, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !20, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{i32 51, i32 16, metadata !5, null}
!69 = metadata !{i32 63, i32 21, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 63, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !5, i32 52, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 63, i32 36, metadata !73, null}
!73 = metadata !{i32 786443, metadata !70, i32 63, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 75, i32 6, metadata !75, null}
!75 = metadata !{i32 786443, metadata !76, i32 65, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !73, i32 65, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 65, i32 23, metadata !76, null}
!78 = metadata !{i32 65, i32 38, metadata !75, null}
!79 = metadata !{i32 66, i32 1, metadata !75, null}
!80 = metadata !{i32 70, i32 7, metadata !75, null}
!81 = metadata !{i32 72, i32 11, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 72, i32 11, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !75, i32 71, i32 20, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786688, metadata !71, metadata !"a_row[0]", null, i32 58, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !11, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!86 = metadata !{i32 786688, metadata !71, metadata !"a_row[1]", null, i32 58, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 786688, metadata !71, metadata !"a_row[2]", null, i32 58, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 77, i32 16, metadata !89, null}
!89 = metadata !{i32 786443, metadata !90, i32 77, i32 16, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !75, i32 76, i32 24, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 790529, metadata !92, metadata !"b_copy[0][2]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!92 = metadata !{i32 786688, metadata !71, metadata !"b_copy[0]", null, i32 59, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !17, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!94 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!95 = metadata !{i32 790529, metadata !92, metadata !"b_copy[0][0]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!96 = metadata !{i32 790529, metadata !92, metadata !"b_copy[0][1]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!97 = metadata !{i32 790529, metadata !98, metadata !"b_copy[1][2]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!98 = metadata !{i32 786688, metadata !71, metadata !"b_copy[1]", null, i32 59, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 790529, metadata !98, metadata !"b_copy[1][0]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!100 = metadata !{i32 790529, metadata !98, metadata !"b_copy[1][1]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!101 = metadata !{i32 790529, metadata !102, metadata !"b_copy[2][2]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!102 = metadata !{i32 786688, metadata !71, metadata !"b_copy[2]", null, i32 59, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 790529, metadata !102, metadata !"b_copy[2][0]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!104 = metadata !{i32 790529, metadata !102, metadata !"b_copy[2][1]", null, i32 59, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!105 = metadata !{i32 82, i32 7, metadata !75, null}
!106 = metadata !{i32 83, i32 5, metadata !75, null}
!107 = metadata !{i32 65, i32 32, metadata !76, null}
!108 = metadata !{i32 786688, metadata !76, metadata !"j", metadata !6, i32 65, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 84, i32 3, metadata !73, null}
!111 = metadata !{i32 63, i32 30, metadata !70, null}
!112 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !6, i32 63, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 85, i32 1, metadata !71, null}
