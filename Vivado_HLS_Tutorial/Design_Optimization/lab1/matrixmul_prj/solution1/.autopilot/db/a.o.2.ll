; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab1/matrixmul_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"Product\00", align 1 ; [#uses=1 type=[8 x i8]*]
@matrixmul.str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
define void @matrixmul([3 x [3 x i8]]* %a, [3 x [3 x i8]]* %b, [3 x [3 x i16]]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i8]]* %a) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i8]]* %b) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i16]]* %res) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x [3 x i8]]* %a}, i64 0, metadata !38), !dbg !41 ; [debug line = 49:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i8]]* %b}, i64 0, metadata !42), !dbg !44 ; [debug line = 50:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i16]]* %res}, i64 0, metadata !45), !dbg !47 ; [debug line = 51:16] [debug variable = res]
  br label %1, !dbg !48                           ; [debug line = 54:22]

; <label>:1                                       ; preds = %12, %0
  %i = phi i2 [ 0, %0 ], [ %i.1, %12 ]            ; [#uses=3 type=i2]
  %exitcond2 = icmp eq i2 %i, -1, !dbg !48        ; [#uses=1 type=i1] [debug line = 54:22]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %14, label %3, !dbg !48 ; [debug line = 54:22]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !51 ; [debug line = 54:37]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str) nounwind, !dbg !51 ; [#uses=1 type=i32] [debug line = 54:37]
  %tmp = zext i2 %i to i64, !dbg !53              ; [#uses=2 type=i64] [debug line = 57:10]
  br label %4, !dbg !56                           ; [debug line = 56:25]

; <label>:4                                       ; preds = %10, %3
  %j = phi i2 [ 0, %3 ], [ %j.1, %10 ]            ; [#uses=3 type=i2]
  %exitcond1 = icmp eq i2 %j, -1, !dbg !56        ; [#uses=1 type=i1] [debug line = 56:25]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %12, label %6, !dbg !56 ; [debug line = 56:25]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str1) nounwind, !dbg !57 ; [debug line = 56:40]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str1) nounwind, !dbg !57 ; [#uses=1 type=i32] [debug line = 56:40]
  %tmp.2 = zext i2 %j to i64, !dbg !53            ; [#uses=2 type=i64] [debug line = 57:10]
  %res.addr = getelementptr [3 x [3 x i16]]* %res, i64 0, i64 %tmp, i64 %tmp.2, !dbg !53 ; [#uses=3 type=i16*] [debug line = 57:10]
  store i16 0, i16* %res.addr, align 2, !dbg !53  ; [debug line = 57:10]
  br label %7, !dbg !58                           ; [debug line = 59:32]

; <label>:7                                       ; preds = %9, %6
  %k = phi i2 [ 0, %6 ], [ %k.1, %9 ]             ; [#uses=3 type=i2]
  %exitcond = icmp eq i2 %k, -1, !dbg !58         ; [#uses=1 type=i1] [debug line = 59:32]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %10, label %9, !dbg !58  ; [debug line = 59:32]

; <label>:9                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @.str2) nounwind, !dbg !60 ; [debug line = 59:47]
  %tmp.4 = zext i2 %k to i64, !dbg !62            ; [#uses=2 type=i64] [debug line = 60:13]
  %a.addr = getelementptr [3 x [3 x i8]]* %a, i64 0, i64 %tmp, i64 %tmp.4, !dbg !62 ; [#uses=1 type=i8*] [debug line = 60:13]
  %a.load = load i8* %a.addr, align 1, !dbg !62   ; [#uses=1 type=i8] [debug line = 60:13]
  %tmp.5 = sext i8 %a.load to i16, !dbg !62       ; [#uses=1 type=i16] [debug line = 60:13]
  %b.addr = getelementptr [3 x [3 x i8]]* %b, i64 0, i64 %tmp.4, i64 %tmp.2, !dbg !62 ; [#uses=1 type=i8*] [debug line = 60:13]
  %b.load = load i8* %b.addr, align 1, !dbg !62   ; [#uses=1 type=i8] [debug line = 60:13]
  %tmp.6 = sext i8 %b.load to i16, !dbg !62       ; [#uses=1 type=i16] [debug line = 60:13]
  %tmp.7 = mul i16 %tmp.6, %tmp.5, !dbg !62       ; [#uses=1 type=i16] [debug line = 60:13]
  %res.load = load i16* %res.addr, align 2, !dbg !62 ; [#uses=1 type=i16] [debug line = 60:13]
  %tmp.8 = add i16 %tmp.7, %res.load, !dbg !62    ; [#uses=1 type=i16] [debug line = 60:13]
  store i16 %tmp.8, i16* %res.addr, align 2, !dbg !62 ; [debug line = 60:13]
  %k.1 = add i2 %k, 1, !dbg !63                   ; [#uses=1 type=i2] [debug line = 59:41]
  call void @llvm.dbg.value(metadata !{i2 %k.1}, i64 0, metadata !64), !dbg !63 ; [debug line = 59:41] [debug variable = k]
  br label %7, !dbg !63                           ; [debug line = 59:41]

; <label>:10                                      ; preds = %7
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str1, i32 %tmp.3) nounwind, !dbg !66 ; [#uses=0 type=i32] [debug line = 62:7]
  %j.1 = add i2 %j, 1, !dbg !67                   ; [#uses=1 type=i2] [debug line = 56:34]
  call void @llvm.dbg.value(metadata !{i2 %j.1}, i64 0, metadata !68), !dbg !67 ; [debug line = 56:34] [debug variable = j]
  br label %4, !dbg !67                           ; [debug line = 56:34]

; <label>:12                                      ; preds = %4
  %13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str, i32 %tmp.1) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 63:4]
  %i.1 = add i2 %i, 1, !dbg !70                   ; [#uses=1 type=i2] [debug line = 54:31]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 54:31] [debug variable = i]
  br label %1, !dbg !70                           ; [debug line = 54:31]

; <label>:14                                      ; preds = %1
  ret void, !dbg !72                              ; [debug line = 65:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab1/matrixmul_prj/solution1/.autopilot/db/matrixmul.pragma.2.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab1", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 52} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"matrixmul.cpp", metadata !"d:/opt/source/Vivado/Vivado_HLS_Tutorial/Design_Optimization/lab1", null} ; [ DW_TAG_file_type ]
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
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"a", metadata !28, metadata !"char", i32 0, i32 7}
!28 = metadata !{metadata !29, metadata !29}
!29 = metadata !{i32 0, i32 2, i32 1}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 7, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"b", metadata !28, metadata !"char", i32 0, i32 7}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 15, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"res", metadata !28, metadata !"short", i32 0, i32 15}
!38 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 49, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{metadata !14, metadata !14}
!41 = metadata !{i32 49, i32 15, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 50, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !17, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{i32 50, i32 15, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"res", null, i32 51, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !20, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{i32 51, i32 16, metadata !5, null}
!48 = metadata !{i32 54, i32 22, metadata !49, null}
!49 = metadata !{i32 786443, metadata !50, i32 54, i32 9, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !5, i32 52, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 54, i32 37, metadata !52, null}
!52 = metadata !{i32 786443, metadata !49, i32 54, i32 36, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 57, i32 10, metadata !54, null}
!54 = metadata !{i32 786443, metadata !55, i32 56, i32 39, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !52, i32 56, i32 12, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 56, i32 25, metadata !55, null}
!57 = metadata !{i32 56, i32 40, metadata !54, null}
!58 = metadata !{i32 59, i32 32, metadata !59, null}
!59 = metadata !{i32 786443, metadata !54, i32 59, i32 19, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 59, i32 47, metadata !61, null}
!61 = metadata !{i32 786443, metadata !59, i32 59, i32 46, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 60, i32 13, metadata !61, null}
!63 = metadata !{i32 59, i32 41, metadata !59, null}
!64 = metadata !{i32 786688, metadata !59, metadata !"k", metadata !6, i32 59, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!66 = metadata !{i32 62, i32 7, metadata !54, null}
!67 = metadata !{i32 56, i32 34, metadata !55, null}
!68 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !6, i32 56, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 63, i32 4, metadata !52, null}
!70 = metadata !{i32 54, i32 31, metadata !49, null}
!71 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 54, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 65, i32 1, metadata !50, null}