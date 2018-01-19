; ModuleID = 'D:/opt/source/Vivado/Vivado_HLS_Tutorial/RTL_Verification/lab2/duc_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@c = internal unnamed_addr constant [48 x i18] [i18 25, i18 -56, i18 121, i18 -155, i18 84, i18 176, i18 -680, i18 1415, i18 -2283, i18 3116, i18 -3719, i18 69475, i18 -3719, i18 3116, i18 -2283, i18 1415, i18 -680, i18 176, i18 84, i18 -155, i18 121, i18 -56, i18 25, i18 0, i18 46, i18 -16, i18 -78, i18 226, i18 -347, i18 268, i18 288, i18 -1727, i18 4751, i18 -11484, i18 40865, i18 40865, i18 -11484, i18 4751, i18 -1727, i18 288, i18 268, i18 -347, i18 226, i18 -78, i18 -16, i18 46, i18 0, i18 0], align 16
@shift_reg_p = internal global [96 x i38] zeroinitializer
@in_r = internal unnamed_addr global i18 0, align 4
@init = internal unnamed_addr global i1 true, align 1
@ch = internal unnamed_addr global i1 false, align 1
@i = internal unnamed_addr global i6 0, align 1
@DI_cache = internal unnamed_addr global [16 x i18] zeroinitializer, align 16
@init_1 = internal unnamed_addr global i1 true, align 1
@index = internal unnamed_addr global i4 0, align 1
@i_1 = internal unnamed_addr global i3 0, align 1
@ch_1 = internal unnamed_addr global i1 true, align 1
@c_1_0 = internal unnamed_addr constant [6 x i18] [i18 1651, i18 -13134, i18 77019, i18 77019, i18 -13134, i18 1651]
@shift_reg_p0 = internal global [12 x i38] zeroinitializer
@shift_reg_p1 = internal global [12 x i38] zeroinitializer
@in_1 = internal unnamed_addr global i18 0, align 4
@init_2 = internal unnamed_addr global i1 true, align 1
@i_2 = internal unnamed_addr global i6 0, align 1
@j = internal unnamed_addr global i6 0, align 1
@c_1 = internal unnamed_addr constant [12 x i18] [i18 2054, i18 -14177, i18 77667, i18 77667, i18 -14177, i18 2054, i18 0, i18 0, i18 131071, i18 0, i18 0, i18 0], align 16
@shift_reg_p_1 = internal global [26 x i38] zeroinitializer
@in_2 = internal unnamed_addr global i18 0, align 4
@init_3 = internal unnamed_addr global i1 true, align 1
@cnt = internal unnamed_addr global i2 0, align 1
@ch_2 = internal unnamed_addr global i1 false, align 1
@i_3 = internal unnamed_addr global i4 0, align 1
@c_2 = internal unnamed_addr constant [24 x i18] [i18 -224, i18 1139, i18 -3642, i18 9343, i18 -22689, i18 81597, i18 81597, i18 -22689, i18 9343, i18 -3642, i18 1139, i18 -224, i18 0, i18 0, i18 0, i18 0, i18 0, i18 131071, i18 0, i18 0, i18 0, i18 0, i18 0, i18 0], align 16
@shift_reg_p_2 = internal global [50 x i38] zeroinitializer
@in_3 = internal unnamed_addr global i18 0, align 4
@init_4 = internal unnamed_addr global i1 true, align 1
@cnt_1 = internal unnamed_addr global i1 false, align 1
@ch_3 = internal unnamed_addr global i1 false, align 1
@i_4 = internal unnamed_addr global i5 0, align 1
@acc = internal unnamed_addr global i16 0, align 2
@dds_table = internal unnamed_addr constant [32 x i16] [i16 0, i16 3196, i16 6270, i16 9102, i16 11585, i16 13623, i16 15137, i16 16069, i16 16384, i16 16069, i16 15137, i16 13623, i16 11585, i16 9102, i16 6270, i16 3196, i16 0, i16 -3196, i16 -6270, i16 -9102, i16 -11585, i16 -13623, i16 -15137, i16 -16069, i16 -16384, i16 -16069, i16 -15137, i16 -13623, i16 -11585, i16 -9102, i16 -6270, i16 -3196], align 16
@duc_str = internal unnamed_addr constant [4 x i8] c"duc\00"
@c_1_1 = internal unnamed_addr constant [6 x i1] [i1 false, i1 false, i1 false, i1 true, i1 false, i1 false]

define internal fastcc void @duc_mixer(i16 zeroext %freq, i18 signext %Din, i18* nocapture %Dout_I, i18* nocapture %Dout_Q) nounwind uwtable {
  %Din_read = call i18 @_ssdm_op_Read.ap_auto.i18(i18 %Din) nounwind
  %freq_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %freq) nounwind
  %i_1_load = load i3* @i_1, align 1
  %inc = add i3 %i_1_load, 1
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %i_1_load, i32 1, i32 2)
  %valid_in = icmp eq i2 %tmp_14, 0
  %init_1_load = load i1* @init_1, align 1
  %freq_dds = select i1 %init_1_load, i16 0, i16 %freq_read
  %ch_1_load = load i1* @ch_1, align 1
  %brmerge_demorgan = and i1 %ch_1_load, %valid_in
  %index_load = load i4* @index, align 1
  br i1 %brmerge_demorgan, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp = zext i4 %index_load to i64
  %DI_cache_addr = getelementptr inbounds [16 x i18]* @DI_cache, i64 0, i64 %tmp
  store i18 %Din_read, i18* %DI_cache_addr, align 4
  br label %5

; <label>:2                                       ; preds = %0
  br i1 %valid_in, label %3, label %._crit_edge

; <label>:3                                       ; preds = %2
  %acc_load = load i16* @acc, align 2
  %acc_assign_i = add i16 %acc_load, %freq_dds
  store i16 %acc_assign_i, i16* @acc, align 2
  %phase1 = call i5 @_ssdm_op_PartSelect.i5.i16.i32.i32(i16 %acc_assign_i, i32 11, i32 15)
  %tmp_i = zext i5 %phase1 to i64
  %dds_table_addr = getelementptr inbounds [32 x i16]* @dds_table, i64 0, i64 %tmp_i
  %sine = load i16* %dds_table_addr, align 2
  %phase2 = sub i5 8, %phase1
  %tmp_61_i = zext i5 %phase2 to i64
  %dds_table_addr_1 = getelementptr inbounds [32 x i16]* @dds_table, i64 0, i64 %tmp_61_i
  %cosine = load i16* %dds_table_addr_1, align 2
  %tmp_s = zext i4 %index_load to i64
  %DI_cache_addr_1 = getelementptr inbounds [16 x i18]* @DI_cache, i64 0, i64 %tmp_s
  %Din_re = load i18* %DI_cache_addr_1, align 4
  %tmp_i3_cast = sext i16 %sine to i17
  %tmp_i4_cast = sext i16 %cosine to i17
  %tmp_3 = sub i17 %tmp_i3_cast, %tmp_i4_cast
  %tmp_i_i = sext i18 %Din_read to i32
  %tmp_i_i_10 = sext i17 %tmp_3 to i32
  %tmp_2 = mul i32 %tmp_i_i_10, %tmp_i_i
  %tmp_i5 = sext i18 %Din_re to i19
  %tmp_i6 = sext i18 %Din_read to i19
  %tmp_5 = sub i19 %tmp_i5, %tmp_i6
  %tmp_i_i8_cast = sext i16 %sine to i32
  %tmp_i_i9_cast = sext i19 %tmp_5 to i32
  %m = mul i32 %tmp_i_i9_cast, %tmp_i_i8_cast
  %tmp_8 = add i32 %m, %tmp_2
  %tmp_1 = call i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32 %tmp_8, i32 14, i32 31)
  call void @_ssdm_op_Write.ap_auto.i18P(i18* %Dout_I, i18 %tmp_1) nounwind
  %tmp_6 = add i19 %tmp_i6, %tmp_i5
  %tmp_i_i1_cast = sext i16 %cosine to i32
  %tmp_i_i1_cast_11 = sext i19 %tmp_6 to i32
  %m_i_i = mul i32 %tmp_i_i1_cast_11, %tmp_i_i1_cast
  %tmp_4 = add i32 %m_i_i, %tmp_2
  %tmp_7 = call i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32 %tmp_4, i32 14, i32 31)
  call void @_ssdm_op_Write.ap_auto.i18P(i18* %Dout_Q, i18 %tmp_7) nounwind
  %tmp_9 = icmp eq i4 %index_load, -1
  br i1 %tmp_9, label %4, label %._crit_edge2

; <label>:4                                       ; preds = %3
  store i1 false, i1* @init_1, align 1
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %4, %3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge2, %2
  br label %5

; <label>:5                                       ; preds = %._crit_edge, %1
  %tmp_10 = icmp eq i4 %index_load, -1
  br i1 %tmp_10, label %6, label %._crit_edge3

; <label>:6                                       ; preds = %5
  %tmp_11 = xor i1 %ch_1_load, true
  store i1 %tmp_11, i1* @ch_1, align 1
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %6, %5
  br i1 %valid_in, label %7, label %._crit_edge4

; <label>:7                                       ; preds = %._crit_edge3
  %tmp_12 = add i4 %index_load, 1
  store i4 %tmp_12, i4* @index, align 1
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %7, %._crit_edge3
  %tmp_13 = icmp eq i3 %i_1_load, -3
  %inc_1 = select i1 %tmp_13, i3 0, i3 %inc
  store i3 %inc_1, i3* @i_1, align 1
  ret void
}

define internal fastcc i18 @duc_imf3(i18 signext %x) {
  %x_read = call i18 @_ssdm_op_Read.ap_auto.i18(i18 %x)
  %i_2_load = load i6* @i_2, align 1
  %tmp = icmp eq i6 %i_2_load, 0
  %in_1_load = load i18* @in_1, align 4
  br i1 %tmp, label %1, label %._crit_edge_ifconv

; <label>:1                                       ; preds = %0
  store i18 %x_read, i18* @in_1, align 4
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %1, %0
  %d_assign = phi i18 [ %x_read, %1 ], [ %in_1_load, %0 ]
  %inc = add i6 %i_2_load, 1
  %p_Val2_s = load i6* @j, align 1
  %ch_4 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %p_Val2_s, i32 3)
  %tmp_s = zext i6 %i_2_load to i64
  %c_1_0_addr = getelementptr [6 x i18]* @c_1_0, i64 0, i64 %tmp_s
  %c_1_0_load = load i18* %c_1_0_addr, align 8
  %init_2_load = load i1* @init_2, align 1
  %tmp_14 = icmp eq i6 %i_2_load, 5
  %or_cond = or i1 %init_2_load, %tmp_14
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %inc, i1 %ch_4)
  %tmp_8 = zext i7 %tmp_7 to i64
  %shift_reg_p0_addr = getelementptr [12 x i38]* @shift_reg_p0, i64 0, i64 %tmp_8
  %shift_reg_p0_load = load i38* %shift_reg_p0_addr, align 8
  %tmp_15 = select i1 %or_cond, i38 0, i38 %shift_reg_p0_load
  %tmp_i = sext i18 %c_1_0_load to i36
  %tmp_i_12 = sext i18 %d_assign to i36
  %tmp_i_cast = sext i18 %d_assign to i35
  %m = mul nsw i36 %tmp_i_12, %tmp_i
  %tmp_26_i = sext i36 %m to i38
  %acc0 = add i38 %tmp_15, %tmp_26_i
  %c_1_1_addr = getelementptr [6 x i1]* @c_1_1, i64 0, i64 %tmp_s
  %c_1_1_load = load i1* %c_1_1_addr, align 1
  %shift_reg_p1_addr = getelementptr [12 x i38]* @shift_reg_p1, i64 0, i64 %tmp_8
  %shift_reg_p1_load = load i38* %shift_reg_p1_addr, align 8
  %tmp_16 = select i1 %or_cond, i38 0, i38 %shift_reg_p1_load
  %p_shl = call i35 @_ssdm_op_BitConcatenate.i35.i18.i17(i18 %d_assign, i17 0)
  %mt = sub i35 %p_shl, %tmp_i_cast
  %m_1 = select i1 %c_1_1_load, i35 %mt, i35 0
  %tmp_26_i6 = sext i35 %m_1 to i38
  %acc1 = add i38 %tmp_16, %tmp_26_i6
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %i_2_load, i1 %ch_4)
  %tmp_10 = zext i7 %tmp_9 to i64
  %shift_reg_p0_addr_1 = getelementptr [12 x i38]* @shift_reg_p0, i64 0, i64 %tmp_10
  store i38 %acc0, i38* %shift_reg_p0_addr_1, align 8
  %shift_reg_p1_addr_1 = getelementptr [12 x i38]* @shift_reg_p1, i64 0, i64 %tmp_10
  store i38 %acc1, i38* %shift_reg_p1_addr_1, align 8
  %tmp_11 = call i18 @_ssdm_op_PartSelect.i18.i38.i32.i32(i38 %acc0, i32 17, i32 34)
  %tmp_12 = call i18 @_ssdm_op_PartSelect.i18.i38.i32.i32(i38 %acc1, i32 17, i32 34)
  %tmp_13 = select i1 %tmp, i18 %tmp_11, i18 %tmp_12
  %tmp_17 = icmp eq i6 %p_Val2_s, 15
  %or_cond5 = and i1 %tmp_14, %tmp_17
  br i1 %or_cond5, label %2, label %._crit_edge8

; <label>:2                                       ; preds = %._crit_edge_ifconv
  store i1 false, i1* @init_2, align 1
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %2, %._crit_edge_ifconv
  br i1 %tmp_14, label %._crit_edge10, label %._crit_edge9

._crit_edge10:                                    ; preds = %._crit_edge8
  %tmp_18 = add i6 %p_Val2_s, 1
  %tmp_19 = select i1 %tmp_17, i6 0, i6 %tmp_18
  store i6 %tmp_19, i6* @j, align 1
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge10, %._crit_edge8
  %inc_2 = select i1 %tmp_14, i6 0, i6 %inc
  store i6 %inc_2, i6* @i_2, align 1
  ret i18 %tmp_13
}

define internal fastcc i18 @duc_imf2(i18 signext %x) {
  %x_read = call i18 @_ssdm_op_Read.ap_auto.i18(i18 %x)
  %i_3_load = load i4* @i_3, align 1
  %tmp = icmp eq i4 %i_3_load, 0
  br i1 %tmp, label %1, label %._crit_edge_ifconv

; <label>:1                                       ; preds = %0
  store i18 %x_read, i18* @in_2, align 4
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %1, %0
  %inc = add i4 %i_3_load, 1
  %tmp_s = zext i4 %i_3_load to i64
  %c_1_addr = getelementptr inbounds [12 x i18]* @c_1, i64 0, i64 %tmp_s
  %c_1_load = load i18* %c_1_addr, align 4
  %in_2_load = load i18* @in_2, align 4
  %init_3_load = load i1* @init_3, align 1
  %ch_2_load = load i1* @ch_2, align 1
  %tmp_14 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %inc, i1 %ch_2_load)
  %tmp_15 = zext i5 %tmp_14 to i64
  %shift_reg_p_1_addr = getelementptr [26 x i38]* @shift_reg_p_1, i64 0, i64 %tmp_15
  %shift_reg_p_1_load = load i38* %shift_reg_p_1_addr, align 8
  %sel_tmp1 = icmp eq i4 %i_3_load, -5
  %sel_tmp2 = icmp eq i4 %i_3_load, 5
  %sel_tmp3 = xor i1 %init_3_load, true
  %sel_tmp4 = or i1 %sel_tmp1, %sel_tmp2
  %sel_tmp5 = and i1 %sel_tmp4, %sel_tmp3
  %tmp_20 = or i1 %sel_tmp5, %init_3_load
  %s_assign = select i1 %tmp_20, i38 0, i38 %shift_reg_p_1_load
  %tmp_i = sext i18 %c_1_load to i36
  %tmp_i_13 = sext i18 %in_2_load to i36
  %m = mul nsw i36 %tmp_i, %tmp_i_13
  %tmp_25_i = sext i36 %m to i38
  %sum = add nsw i38 %tmp_25_i, %s_assign
  %tmp_16 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i_3_load, i1 %ch_2_load)
  %tmp_17 = zext i5 %tmp_16 to i64
  %shift_reg_p_1_addr_1 = getelementptr [26 x i38]* @shift_reg_p_1, i64 0, i64 %tmp_17
  store i38 %sum, i38* %shift_reg_p_1_addr_1, align 8
  br i1 %sel_tmp1, label %2, label %._crit_edge8_ifconv

; <label>:2                                       ; preds = %._crit_edge_ifconv
  %cnt_load = load i2* @cnt, align 1
  %tmp_21 = icmp eq i2 %cnt_load, -1
  br i1 %tmp_21, label %3, label %._crit_edge9

; <label>:3                                       ; preds = %2
  br i1 %ch_2_load, label %4, label %._crit_edge10

; <label>:4                                       ; preds = %3
  store i1 false, i1* @init_3, align 1
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %4, %3
  %tmp_22 = xor i1 %ch_2_load, true
  store i1 %tmp_22, i1* @ch_2, align 1
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge10, %2
  %tmp_23 = add i2 %cnt_load, 1
  store i2 %tmp_23, i2* @cnt, align 1
  br label %._crit_edge8_ifconv

._crit_edge8_ifconv:                              ; preds = %._crit_edge9, %._crit_edge_ifconv
  %y_write_assign = call i18 @_ssdm_op_PartSelect.i18.i38.i32.i32(i38 %sum, i32 17, i32 34)
  %inc_3 = select i1 %sel_tmp1, i4 0, i4 %inc
  store i4 %inc_3, i4* @i_3, align 1
  ret i18 %y_write_assign
}

define void @duc(i18 signext %din_i, i16 zeroext %freq, i18* %dout_i, i18* %dout_q) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i18 %din_i) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %freq) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %dout_i) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %dout_q) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @duc_str) nounwind
  %freq_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %freq) nounwind
  %din_i_read = call i18 @_ssdm_op_Read.ap_auto.i18(i18 %din_i) nounwind
  %i_load = load i6* @i, align 1
  %tmp_i = icmp eq i6 %i_load, 0
  br i1 %tmp_i, label %1, label %._crit_edge_ifconv.i

; <label>:1                                       ; preds = %0
  store i18 %din_i_read, i18* @in_r, align 4
  br label %._crit_edge_ifconv.i

._crit_edge_ifconv.i:                             ; preds = %1, %0
  %inc = add i6 %i_load, 1
  %tmp_2_i = zext i6 %i_load to i64
  %c_addr = getelementptr inbounds [48 x i18]* @c, i64 0, i64 %tmp_2_i
  %c_load = load i18* %c_addr, align 4
  %in_load = load i18* @in_r, align 4
  %init_load = load i1* @init, align 1
  %ch_load = load i1* @ch, align 1
  %tmp_18 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %inc, i1 %ch_load)
  %tmp_19 = zext i7 %tmp_18 to i64
  %shift_reg_p_addr = getelementptr [96 x i38]* @shift_reg_p, i64 0, i64 %tmp_19
  %shift_reg_p_load = load i38* %shift_reg_p_addr, align 8
  %sel_tmp1_i = icmp eq i6 %i_load, -17
  %sel_tmp2_i = icmp eq i6 %i_load, 23
  %sel_tmp3_i = xor i1 %init_load, true
  %sel_tmp4_i = or i1 %sel_tmp1_i, %sel_tmp2_i
  %sel_tmp5_i = and i1 %sel_tmp4_i, %sel_tmp3_i
  %tmp = or i1 %sel_tmp5_i, %init_load
  %tmp_5_i = select i1 %tmp, i38 0, i38 %shift_reg_p_load
  %tmp_i_i = sext i18 %c_load to i36
  %tmp_i_i_14 = sext i18 %in_load to i36
  %m = mul nsw i36 %tmp_i_i, %tmp_i_i_14
  %tmp_21_i_i = sext i36 %m to i38
  %acc_1 = add i38 %tmp_21_i_i, %tmp_5_i
  %tmp_20 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %i_load, i1 %ch_load)
  %tmp_21 = zext i7 %tmp_20 to i64
  %shift_reg_p_addr_1 = getelementptr [96 x i38]* @shift_reg_p, i64 0, i64 %tmp_21
  store i38 %acc_1, i38* %shift_reg_p_addr_1, align 8
  br i1 %sel_tmp1_i, label %2, label %srrc.exit

; <label>:2                                       ; preds = %._crit_edge_ifconv.i
  br i1 %ch_load, label %3, label %._crit_edge9.i

; <label>:3                                       ; preds = %2
  store i1 false, i1* @init, align 1
  br label %._crit_edge9.i

._crit_edge9.i:                                   ; preds = %3, %2
  %tmp_i_15 = xor i1 %ch_load, true
  store i1 %tmp_i_15, i1* @ch, align 1
  br label %srrc.exit

srrc.exit:                                        ; preds = %._crit_edge9.i, %._crit_edge_ifconv.i
  %srrc_o = call i18 @_ssdm_op_PartSelect.i18.i38.i32.i32(i38 %acc_1, i32 17, i32 34)
  %inc_4 = select i1 %sel_tmp1_i, i6 0, i6 %inc
  store i6 %inc_4, i6* @i, align 1
  %i_4_load = load i5* @i_4, align 1
  %tmp_i1 = icmp eq i5 %i_4_load, 0
  br i1 %tmp_i1, label %4, label %._crit_edge_ifconv.i15

; <label>:4                                       ; preds = %srrc.exit
  store i18 %srrc_o, i18* @in_3, align 4
  br label %._crit_edge_ifconv.i15

._crit_edge_ifconv.i15:                           ; preds = %4, %srrc.exit
  %inc_5 = add i5 %i_4_load, 1
  %tmp_i3 = zext i5 %i_4_load to i64
  %c_2_addr = getelementptr inbounds [24 x i18]* @c_2, i64 0, i64 %tmp_i3
  %c_2_load = load i18* %c_2_addr, align 4
  %in_3_load = load i18* @in_3, align 4
  %init_4_load = load i1* @init_4, align 1
  %ch_3_load = load i1* @ch_3, align 1
  %tmp_23 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %inc_5, i1 %ch_3_load)
  %tmp_s = zext i6 %tmp_23 to i64
  %shift_reg_p_2_addr = getelementptr [50 x i38]* @shift_reg_p_2, i64 0, i64 %tmp_s
  %shift_reg_p_2_load = load i38* %shift_reg_p_2_addr, align 8
  %sel_tmp1_i7 = icmp eq i5 %i_4_load, -9
  %sel_tmp2_i8 = icmp eq i5 %i_4_load, 11
  %sel_tmp3_i9 = xor i1 %init_4_load, true
  %sel_tmp4_i1 = or i1 %sel_tmp1_i7, %sel_tmp2_i8
  %sel_tmp5_i1 = and i1 %sel_tmp4_i1, %sel_tmp3_i9
  %tmp_22 = or i1 %sel_tmp5_i1, %init_4_load
  %s_assign = select i1 %tmp_22, i38 0, i38 %shift_reg_p_2_load
  %tmp_i_i1 = sext i18 %c_2_load to i36
  %tmp_i_i1_16 = sext i18 %in_3_load to i36
  %m_2 = mul nsw i36 %tmp_i_i1, %tmp_i_i1_16
  %tmp_24_i_i = sext i36 %m_2 to i38
  %sum = add nsw i38 %tmp_24_i_i, %s_assign
  %tmp_24 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %i_4_load, i1 %ch_3_load)
  %tmp_25 = zext i6 %tmp_24 to i64
  %shift_reg_p_2_addr_1 = getelementptr [50 x i38]* @shift_reg_p_2, i64 0, i64 %tmp_25
  store i38 %sum, i38* %shift_reg_p_2_addr_1, align 8
  br i1 %sel_tmp1_i7, label %5, label %imf1.exit

; <label>:5                                       ; preds = %._crit_edge_ifconv.i15
  br i1 %ch_3_load, label %6, label %._crit_edge9.i16

; <label>:6                                       ; preds = %5
  store i1 false, i1* @init_4, align 1
  br label %._crit_edge9.i16

._crit_edge9.i16:                                 ; preds = %6, %5
  %cnt_1_load = load i1* @cnt_1, align 1
  %tmp_41_i = xor i1 %ch_3_load, %cnt_1_load
  store i1 %tmp_41_i, i1* @ch_3, align 1
  %tmp_42_i = xor i1 %cnt_1_load, true
  store i1 %tmp_42_i, i1* @cnt_1, align 1
  br label %imf1.exit

imf1.exit:                                        ; preds = %._crit_edge9.i16, %._crit_edge_ifconv.i15
  %imf1_o = call i18 @_ssdm_op_PartSelect.i18.i38.i32.i32(i38 %sum, i32 17, i32 34)
  %inc_6 = select i1 %sel_tmp1_i7, i5 0, i5 %inc_5
  store i5 %inc_6, i5* @i_4, align 1
  %imf2_o = call fastcc i18 @duc_imf2(i18 %imf1_o) nounwind
  %imf3_o = call fastcc i18 @duc_imf3(i18 %imf2_o) nounwind
  call fastcc void @duc_mixer(i16 zeroext %freq_read, i18 signext %imf3_o, i18* %dout_i, i18* %dout_q)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_17 = trunc i32 %empty to i18
  ret i18 %empty_17
}

define weak i5 @_ssdm_op_PartSelect.i5.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_18 = trunc i16 %empty to i5
  ret i5 %empty_18
}

define weak i35 @_ssdm_op_BitConcatenate.i35.i18.i17(i18, i17) nounwind readnone {
entry:
  %empty = zext i18 %0 to i35
  %empty_19 = zext i17 %1 to i35
  %empty_20 = shl i35 %empty, 17
  %empty_21 = or i35 %empty_20, %empty_19
  ret i35 %empty_21
}

define weak i18 @_ssdm_op_PartSelect.i18.i38.i32.i32(i38, i32, i32) nounwind readnone {
entry:
  %empty = call i38 @llvm.part.select.i38(i38 %0, i32 %1, i32 %2)
  %empty_22 = trunc i38 %empty to i18
  ret i18 %empty_22
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_23 = zext i1 %1 to i7
  %empty_24 = shl i7 %empty, 1
  %empty_25 = or i7 %empty_24, %empty_23
  ret i7 %empty_25
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_26 = zext i1 %1 to i5
  %empty_27 = shl i5 %empty, 1
  %empty_28 = or i5 %empty_27, %empty_26
  ret i5 %empty_28
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %0 to i6
  %empty_29 = zext i1 %1 to i6
  %empty_30 = shl i6 %empty, 1
  %empty_31 = or i6 %empty_30, %empty_29
  ret i6 %empty_31
}

define weak i18 @_ssdm_op_Read.ap_auto.i18(i18) {
entry:
  ret i18 %0
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak void @_ssdm_op_Write.ap_auto.i18P(i18*, i18) {
entry:
  store i18 %1, i18* %0
  ret void
}

define weak i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.select.i3(i3 %0, i32 %1, i32 %2)
  %empty_32 = trunc i3 %empty to i2
  ret i2 %empty_32
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_33 = shl i6 1, %empty
  %empty_34 = and i6 %0, %empty_33
  %empty_35 = icmp ne i6 %empty_34, 0
  ret i1 %empty_35
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i38 @llvm.part.select.i38(i38, i32, i32) nounwind readnone

declare i3 @llvm.part.select.i3(i3, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 17, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"din_i", metadata !4, metadata !"int18", i32 0, i32 17}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"freq", metadata !4, metadata !"uint16", i32 0, i32 15}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 17, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"dout_i", metadata !14, metadata !"int18", i32 0, i32 17}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, i32 1}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 17, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"dout_q", metadata !14, metadata !"int18", i32 0, i32 17}
