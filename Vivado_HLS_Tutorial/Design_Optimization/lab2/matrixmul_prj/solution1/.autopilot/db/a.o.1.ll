; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2/matrixmul_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str3 = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str4 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"Cache_Row\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [10 x i8] c"Cache_Col\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str7 = private unnamed_addr constant [8 x i8] c"Product\00", align 1 ; [#uses=1 type=[8 x i8]*]
@matrixmul.str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define void @matrixmul([3 x i8]* %a, [3 x i8]* %b, [3 x i16]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul.str) nounwind
  %a_row = alloca [3 x i8], align 1               ; [#uses=2 type=[3 x i8]*]
  %b_copy = alloca [3 x [3 x i8]], align 1        ; [#uses=2 type=[3 x [3 x i8]]*]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %a}, i64 0, metadata !24), !dbg !25 ; [debug line = 49:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %b}, i64 0, metadata !26), !dbg !27 ; [debug line = 50:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[3 x i16]* %res}, i64 0, metadata !28), !dbg !29 ; [debug line = 51:16] [debug variable = res]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %a, i32 3) nounwind, !dbg !30 ; [debug line = 52:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i16]* %res, i32 3) nounwind, !dbg !32 ; [debug line = 52:30]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %b, i32 3) nounwind, !dbg !33 ; [debug line = 52:60]
  call void (...)* @_ssdm_SpecArrayReshape([3 x i8]* %b, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !34 ; [debug line = 53:1]
  call void (...)* @_ssdm_SpecArrayReshape([3 x i8]* %a, i32 2, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !35 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface([3 x i8]* %a, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !36 ; [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface([3 x i8]* %b, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !37 ; [debug line = 56:1]
  call void (...)* @_ssdm_op_SpecInterface([3 x i16]* %res, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !38 ; [debug line = 57:1]
  call void @llvm.dbg.declare(metadata !{[3 x i8]* %a_row}, metadata !39), !dbg !40 ; [debug line = 58:10] [debug variable = a_row]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %b_copy}, metadata !41), !dbg !44 ; [debug line = 59:11] [debug variable = b_copy]
  br label %1, !dbg !45                           ; [debug line = 63:21]

; <label>:1                                       ; preds = %10, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %10 ]           ; [#uses=4 type=i32]
  %exitcond4 = icmp eq i32 %i, 3, !dbg !45        ; [#uses=1 type=i1] [debug line = 63:21]
  br i1 %exitcond4, label %11, label %2, !dbg !45 ; [debug line = 63:21]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !47 ; [debug line = 63:36]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !47 ; [#uses=1 type=i32] [debug line = 63:36]
  %tmp = icmp eq i32 %i, 0, !dbg !49              ; [#uses=1 type=i1] [debug line = 75:6]
  %tmp.1 = sext i32 %i to i64, !dbg !52           ; [#uses=2 type=i64] [debug line = 82:7]
  br label %3, !dbg !53                           ; [debug line = 65:23]

; <label>:3                                       ; preds = %9, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %9 ]            ; [#uses=5 type=i32]
  %exitcond3 = icmp eq i32 %j, 3, !dbg !53        ; [#uses=1 type=i1] [debug line = 65:23]
  br i1 %exitcond3, label %10, label %4, !dbg !53 ; [debug line = 65:23]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 65:38]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 65:38]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !55 ; [debug line = 66:1]
  %tmp.3 = icmp eq i32 %j, 0, !dbg !56            ; [#uses=1 type=i1] [debug line = 70:7]
  br i1 %tmp.3, label %.preheader5.preheader, label %.loopexit6, !dbg !56 ; [debug line = 70:7]

.preheader5.preheader:                            ; preds = %4
  br label %.preheader5, !dbg !57                 ; [debug line = 71:33]

.preheader5:                                      ; preds = %5, %.preheader5.preheader
  %k = phi i32 [ %k.1, %5 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %k, 3, !dbg !57        ; [#uses=1 type=i1] [debug line = 71:33]
  br i1 %exitcond2, label %.loopexit6.loopexit, label %5, !dbg !57 ; [debug line = 71:33]

; <label>:5                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 72:11]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 72:11]
  %tmp.4 = sext i32 %k to i64, !dbg !59           ; [#uses=2 type=i64] [debug line = 72:11]
  %a.addr = getelementptr inbounds [3 x i8]* %a, i64 %tmp.1, i64 %tmp.4, !dbg !59 ; [#uses=1 type=i8*] [debug line = 72:11]
  %a.load = load i8* %a.addr, align 1, !dbg !59   ; [#uses=2 type=i8] [debug line = 72:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %a_row.addr = getelementptr inbounds [3 x i8]* %a_row, i64 0, i64 %tmp.4, !dbg !59 ; [#uses=1 type=i8*] [debug line = 72:11]
  store i8 %a.load, i8* %a_row.addr, align 1, !dbg !59 ; [debug line = 72:11]
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !61 ; [#uses=0 type=i32] [debug line = 72:28]
  %k.1 = add nsw i32 %k, 1, !dbg !62              ; [#uses=1 type=i32] [debug line = 71:42]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !63), !dbg !62 ; [debug line = 71:42] [debug variable = k]
  br label %.preheader5, !dbg !62                 ; [debug line = 71:42]

.loopexit6.loopexit:                              ; preds = %.preheader5
  br label %.loopexit6

.loopexit6:                                       ; preds = %.loopexit6.loopexit, %4
  br i1 %tmp, label %.preheader.preheader, label %.loopexit, !dbg !49 ; [debug line = 75:6]

.preheader.preheader:                             ; preds = %.loopexit6
  %tmp.6 = sext i32 %j to i64, !dbg !65           ; [#uses=2 type=i64] [debug line = 77:16]
  br label %.preheader, !dbg !68                  ; [debug line = 76:37]

.preheader:                                       ; preds = %6, %.preheader.preheader
  %k1 = phi i32 [ %k.2, %6 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %k1, 3, !dbg !68       ; [#uses=1 type=i1] [debug line = 76:37]
  br i1 %exitcond1, label %.loopexit.loopexit, label %6, !dbg !68 ; [debug line = 76:37]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 77:16]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !65 ; [#uses=1 type=i32] [debug line = 77:16]
  %tmp.7 = sext i32 %k1 to i64, !dbg !65          ; [#uses=2 type=i64] [debug line = 77:16]
  %b.addr = getelementptr inbounds [3 x i8]* %b, i64 %tmp.7, i64 %tmp.6, !dbg !65 ; [#uses=1 type=i8*] [debug line = 77:16]
  %b.load = load i8* %b.addr, align 1, !dbg !65   ; [#uses=2 type=i8] [debug line = 77:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %b_copy.addr = getelementptr inbounds [3 x [3 x i8]]* %b_copy, i64 0, i64 %tmp.7, i64 %tmp.6, !dbg !65 ; [#uses=1 type=i8*] [debug line = 77:16]
  store i8 %b.load, i8* %b_copy.addr, align 1, !dbg !65 ; [debug line = 77:16]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 77:37]
  %k.2 = add nsw i32 %k1, 1, !dbg !70             ; [#uses=1 type=i32] [debug line = 76:46]
  call void @llvm.dbg.value(metadata !{i32 %k.2}, i64 0, metadata !71), !dbg !70 ; [debug line = 76:46] [debug variable = k]
  br label %.preheader, !dbg !70                  ; [debug line = 76:46]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit6
  %tmp.9 = sext i32 %j to i64, !dbg !72           ; [#uses=2 type=i64] [debug line = 80:9]
  br label %7, !dbg !75                           ; [debug line = 79:29]

; <label>:7                                       ; preds = %8, %.loopexit
  %tmp10 = phi i32 [ 0, %.loopexit ], [ %tmp.17, %8 ] ; [#uses=2 type=i32]
  %k2 = phi i32 [ 0, %.loopexit ], [ %k.3, %8 ]   ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %k2, 3, !dbg !75        ; [#uses=1 type=i1] [debug line = 79:29]
  br i1 %exitcond, label %9, label %8, !dbg !75   ; [debug line = 79:29]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 79:44]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !76 ; [#uses=1 type=i32] [debug line = 79:44]
  %tmp.13 = sext i32 %k2 to i64, !dbg !72         ; [#uses=2 type=i64] [debug line = 80:9]
  %a_row.addr.1 = getelementptr inbounds [3 x i8]* %a_row, i64 0, i64 %tmp.13, !dbg !72 ; [#uses=1 type=i8*] [debug line = 80:9]
  %a_row.load = load i8* %a_row.addr.1, align 1, !dbg !72 ; [#uses=2 type=i8] [debug line = 80:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a_row.load) nounwind
  %tmp.14 = sext i8 %a_row.load to i32, !dbg !72  ; [#uses=1 type=i32] [debug line = 80:9]
  %b_copy.addr.1 = getelementptr inbounds [3 x [3 x i8]]* %b_copy, i64 0, i64 %tmp.13, i64 %tmp.9, !dbg !72 ; [#uses=1 type=i8*] [debug line = 80:9]
  %b_copy.load = load i8* %b_copy.addr.1, align 1, !dbg !72 ; [#uses=2 type=i8] [debug line = 80:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b_copy.load) nounwind
  %tmp.15 = sext i8 %b_copy.load to i32, !dbg !72 ; [#uses=1 type=i32] [debug line = 80:9]
  %tmp.16 = mul nsw i32 %tmp.15, %tmp.14, !dbg !72 ; [#uses=1 type=i32] [debug line = 80:9]
  %tmp.17 = add nsw i32 %tmp.16, %tmp10, !dbg !72 ; [#uses=1 type=i32] [debug line = 80:9]
  call void @llvm.dbg.value(metadata !{i32 %tmp.17}, i64 0, metadata !77), !dbg !72 ; [debug line = 80:9] [debug variable = tmp]
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !78 ; [#uses=0 type=i32] [debug line = 81:7]
  %k.3 = add nsw i32 %k2, 1, !dbg !79             ; [#uses=1 type=i32] [debug line = 79:38]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !80), !dbg !79 ; [debug line = 79:38] [debug variable = k]
  br label %7, !dbg !79                           ; [debug line = 79:38]

; <label>:9                                       ; preds = %7
  %tmp.0.lcssa = phi i32 [ %tmp10, %7 ]           ; [#uses=1 type=i32]
  %tmp.11 = trunc i32 %tmp.0.lcssa to i16, !dbg !52 ; [#uses=1 type=i16] [debug line = 82:7]
  %res.addr = getelementptr inbounds [3 x i16]* %res, i64 %tmp.1, i64 %tmp.9, !dbg !52 ; [#uses=1 type=i16*] [debug line = 82:7]
  store i16 %tmp.11, i16* %res.addr, align 2, !dbg !52 ; [debug line = 82:7]
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !81 ; [#uses=0 type=i32] [debug line = 83:5]
  %j.1 = add nsw i32 %j, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 65:32]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !83), !dbg !82 ; [debug line = 65:32] [debug variable = j]
  br label %3, !dbg !82                           ; [debug line = 65:32]

; <label>:10                                      ; preds = %3
  %rend14 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !84 ; [#uses=0 type=i32] [debug line = 84:3]
  %i.1 = add nsw i32 %i, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 63:30]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !86), !dbg !85 ; [debug line = 63:30] [debug variable = i]
  br label %1, !dbg !85                           ; [debug line = 63:30]

; <label>:11                                      ; preds = %1
  ret void, !dbg !87                              ; [debug line = 85:1]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayReshape(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2/matrixmul_prj/solution1/.autopilot/db/matrixmul.pragma.2.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @matrixmul, null, null, metadata !22, i32 52} ; [ DW_TAG_subprogram ]
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
!24 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777265, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 49, i32 15, metadata !5, null}
!26 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554482, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 50, i32 15, metadata !5, null}
!28 = metadata !{i32 786689, metadata !5, metadata !"res", metadata !6, i32 50331699, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 51, i32 16, metadata !5, null}
!30 = metadata !{i32 52, i32 2, metadata !31, null}
!31 = metadata !{i32 786443, metadata !5, i32 52, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 52, i32 30, metadata !31, null}
!33 = metadata !{i32 52, i32 60, metadata !31, null}
!34 = metadata !{i32 53, i32 1, metadata !31, null}
!35 = metadata !{i32 54, i32 1, metadata !31, null}
!36 = metadata !{i32 55, i32 1, metadata !31, null}
!37 = metadata !{i32 56, i32 1, metadata !31, null}
!38 = metadata !{i32 57, i32 1, metadata !31, null}
!39 = metadata !{i32 786688, metadata !31, metadata !"a_row", metadata !6, i32 58, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 58, i32 10, metadata !31, null}
!41 = metadata !{i32 786688, metadata !31, metadata !"b_copy", metadata !6, i32 59, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !17, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !14, metadata !14}
!44 = metadata !{i32 59, i32 11, metadata !31, null}
!45 = metadata !{i32 63, i32 21, metadata !46, null}
!46 = metadata !{i32 786443, metadata !31, i32 63, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 63, i32 36, metadata !48, null}
!48 = metadata !{i32 786443, metadata !46, i32 63, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 75, i32 6, metadata !50, null}
!50 = metadata !{i32 786443, metadata !51, i32 65, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !48, i32 65, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 82, i32 7, metadata !50, null}
!53 = metadata !{i32 65, i32 23, metadata !51, null}
!54 = metadata !{i32 65, i32 38, metadata !50, null}
!55 = metadata !{i32 66, i32 1, metadata !50, null}
!56 = metadata !{i32 70, i32 7, metadata !50, null}
!57 = metadata !{i32 71, i32 33, metadata !58, null}
!58 = metadata !{i32 786443, metadata !50, i32 71, i32 20, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 72, i32 11, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 72, i32 11, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 72, i32 28, metadata !60, null}
!62 = metadata !{i32 71, i32 42, metadata !58, null}
!63 = metadata !{i32 786688, metadata !58, metadata !"k", metadata !6, i32 71, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 77, i32 16, metadata !66, null}
!66 = metadata !{i32 786443, metadata !67, i32 77, i32 16, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !50, i32 76, i32 24, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 76, i32 37, metadata !67, null}
!69 = metadata !{i32 77, i32 37, metadata !66, null}
!70 = metadata !{i32 76, i32 46, metadata !67, null}
!71 = metadata !{i32 786688, metadata !67, metadata !"k", metadata !6, i32 76, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 80, i32 9, metadata !73, null}
!73 = metadata !{i32 786443, metadata !74, i32 79, i32 43, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !50, i32 79, i32 16, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 79, i32 29, metadata !74, null}
!76 = metadata !{i32 79, i32 44, metadata !73, null}
!77 = metadata !{i32 786688, metadata !31, metadata !"tmp", metadata !6, i32 60, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 81, i32 7, metadata !73, null}
!79 = metadata !{i32 79, i32 38, metadata !74, null}
!80 = metadata !{i32 786688, metadata !74, metadata !"k", metadata !6, i32 79, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 83, i32 5, metadata !50, null}
!82 = metadata !{i32 65, i32 32, metadata !51, null}
!83 = metadata !{i32 786688, metadata !51, metadata !"j", metadata !6, i32 65, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 84, i32 3, metadata !48, null}
!85 = metadata !{i32 63, i32 30, metadata !46, null}
!86 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 63, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 85, i32 1, metadata !31, null}
