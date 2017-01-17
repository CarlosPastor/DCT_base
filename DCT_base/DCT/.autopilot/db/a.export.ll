; ModuleID = 'C:/Users/alienBot/Documents/GitHub/DCT_base/DCT_base/DCT/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@ssdm_ins_sc_FIFO_DCT_9 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_8 = constant i8 0
@ssdm_ins_sc_FIFO_DCT_7 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_6 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_5 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_4 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_3 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_13 = constant [64 x i18] zeroinitializer
@ssdm_ins_sc_FIFO_DCT_12 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_11 = constant i8 0
@ssdm_ins_sc_FIFO_DCT_1 = constant [64 x i18] zeroinitializer
@ssdm_ins_sc_FIFO_DCT = constant i1 false
@sc_FIFO_DCT_ssdm_thread_M_Prc2 = external global i1
@sc_FIFO_DCT_ssdm_thread_M_Prc1 = external global i1
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a58]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@b_a = internal unnamed_addr constant [64 x i8] c"Z}vjZG0\18Zj0\E8\A6\83\8A\B9ZG\D0\83\A6\18vjZ\18\8A\B9Zj\D0\83Z\E8\8AGZ\96\D0}Z\B9\D0}\A6\E8v\96Z\960\18\A6}\8AGZ\83v\96Z\B90\E8"
@b = internal unnamed_addr constant [64 x i8] c"ZZZZZZZZ}jG\18\E8\B9\96\83v0\D0\8A\8A\D00vj\E8\83\B9G}\18\96Z\A6\A6ZZ\A6\A6ZG\83\18j\96\E8}\B90\8Av\D0\D0v\8A0\18\B9j\83}\96G\E8"
@p_str9 = private unnamed_addr constant [4 x i8] c"din\00", align 1
@p_str8 = private unnamed_addr constant [13 x i8] c"\22sc_uint<8>\22\00", align 1
@p_str7 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"data_ok\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@p_str19 = private unnamed_addr constant [5 x i8] c"Prc2\00", align 1
@p_str16 = private unnamed_addr constant [10 x i8] c"s_working\00", align 1
@p_str15 = private unnamed_addr constant [8 x i8] c"s_start\00", align 1
@p_str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str12 = private unnamed_addr constant [15 x i8] c"__ssdm_reset__\00", align 1
@p_str11 = private unnamed_addr constant [5 x i8] c"Prc1\00", align 1
@p_str10 = private unnamed_addr constant [5 x i8] c"dout\00", align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str = private unnamed_addr constant [12 x i8] c"sc_FIFO_DCT\00", align 1

define weak void @"sc_FIFO_DCT::sc_FIFO_DCT"(i1* %clock, i1* %reset, i1* %sync, i1* %data_ok, i1* %done, i1* %error, i8* %din, i8* %dout, i1* %s_start, i1* %s_working, [64 x i18]* %sc_FIFO_DCT_mA_V, [64 x i18]* %sc_FIFO_DCT_mB_V) {
arrayctor.loop1.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !411
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !415
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %sync), !map !419
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_ok), !map !423
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %done), !map !427
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %error), !map !431
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !435
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !439
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_start), !map !443
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !447
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i18]* %sc_FIFO_DCT_mA_V), !map !451
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i18]* %sc_FIFO_DCT_mB_V), !map !457
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @p_str, [12 x i8]* @p_str) nounwind
  %sc_FIFO_DCT_ssdm_s = load i1* @sc_FIFO_DCT_ssdm_thread_M_Prc1, align 1
  br i1 %sc_FIFO_DCT_ssdm_s, label %0, label %1

; <label>:0                                       ; preds = %arrayctor.loop1.preheader
  call void @"sc_FIFO_DCT::Prc1"(i1* %clock, i1* %reset, i1* %sync, i1* %data_ok, i1* %done, i1* %error, i8* %din, i8* %dout, i1* %s_start, i1* %s_working, [64 x i18]* %sc_FIFO_DCT_mA_V, [64 x i18]* %sc_FIFO_DCT_mB_V)
  br label %UnifiedUnreachableBlock

; <label>:1                                       ; preds = %arrayctor.loop1.preheader
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str, i32 2, [5 x i8]* @p_str11) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([5 x i8]* @p_str11, [6 x i8]* @p_str2, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([5 x i8]* @p_str11, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  %sc_FIFO_DCT_ssdm_1 = load i1* @sc_FIFO_DCT_ssdm_thread_M_Prc2, align 1
  br i1 %sc_FIFO_DCT_ssdm_1, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @"sc_FIFO_DCT::Prc2"(i1* %clock, i1* %reset, i1* %sync, i1* %data_ok, i1* %done, i1* %error, i8* %din, i8* %dout, i1* %s_start, i1* %s_working, [64 x i18]* %sc_FIFO_DCT_mA_V, [64 x i18]* %sc_FIFO_DCT_mB_V)
  br label %UnifiedUnreachableBlock

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str, i32 2, [5 x i8]* @p_str19) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([5 x i8]* @p_str19, [6 x i8]* @p_str2, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([5 x i8]* @p_str19, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [5 x i8]* @p_str4, i32 0, i32 0, i1* %sync) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [8 x i8]* @p_str5, i32 0, i32 0, i1* %data_ok) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [5 x i8]* @p_str6, i32 0, i32 0, i1* %done) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [6 x i8]* @p_str7, i32 0, i32 0, i1* %error) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [13 x i8]* @p_str8, [4 x i8]* @p_str9, i32 0, i32 0, i8* %din) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [13 x i8]* @p_str8, [5 x i8]* @p_str10, i32 0, i32 0, i8* %dout) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [8 x i8]* @p_str15, i32 1, i32 0, i1* %s_start) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [10 x i8]* @p_str16, i32 1, i32 0, i1* %s_working) nounwind
  ret void

UnifiedUnreachableBlock:                          ; preds = %2, %0
  unreachable
}

define void @"sc_FIFO_DCT::Prc2"(i1* %clock, i1* %reset, i1* %sync, i1* %data_ok, i1* %done, i1* %error, i8* %din, i8* %dout, i1* %s_start, i1* %s_working, [64 x i18]* %sc_FIFO_DCT_mA_V, [64 x i18]* %sc_FIFO_DCT_mB_V) {
_ZN7_ap_sc_7sc_core4waitEi.exit2:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !411
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !415
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %sync), !map !419
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_ok), !map !423
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %done), !map !427
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %error), !map !431
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !435
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !439
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_start), !map !443
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !447
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i18]* %sc_FIFO_DCT_mA_V), !map !451
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i18]* %sc_FIFO_DCT_mB_V), !map !457
  %a = alloca [64 x i32], align 4
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [5 x i8]* @p_str4, i32 0, i32 0, i1* %sync) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [8 x i8]* @p_str5, i32 0, i32 0, i1* %data_ok) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [5 x i8]* @p_str6, i32 0, i32 0, i1* %done) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [6 x i8]* @p_str7, i32 0, i32 0, i1* %error) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [13 x i8]* @p_str8, [4 x i8]* @p_str9, i32 0, i32 0, i8* %din) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [13 x i8]* @p_str8, [5 x i8]* @p_str10, i32 0, i32 0, i8* %dout) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str, i32 2, [5 x i8]* @p_str19) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str13) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %done, i1 false)
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str12, i32 %tmp_7)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit, %_ZN7_ap_sc_7sc_core4waitEi.exit2
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_start)
  call void (...)* @_ssdm_op_Poll(i1 %tmp)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_start, i1 false)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_working, i1 true)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i0 = phi i4 [ 0, %0 ], [ %i0_1, %.loopexit.loopexit ]
  %i0_cast5 = zext i4 %i0 to i6
  %exitcond1 = icmp eq i4 %i0, -8
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i0_1 = add i4 %i0, 1
  br i1 %exitcond1, label %_ZN7_ap_sc_7sc_core4waitEi.exit, label %.preheader165.preheader

.preheader165.preheader:                          ; preds = %.loopexit
  br label %.preheader165

.preheader165.loopexit:                           ; preds = %2
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.preheader, %.preheader165.loopexit
  %i1 = phi i4 [ %i1_2, %.preheader165.loopexit ], [ 0, %.preheader165.preheader ]
  %exitcond2 = icmp eq i4 %i1, -8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i1_2 = add i4 %i1, 1
  br i1 %exitcond2, label %.preheader.preheader, label %1

.preheader.preheader:                             ; preds = %.preheader165
  br label %.preheader

; <label>:1                                       ; preds = %.preheader165
  %tmp_16 = trunc i4 %i1 to i3
  %tmp_1 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_16, i3 0)
  %tmp_2 = add i6 %i0_cast5, %tmp_1
  %tmp_2_cast = zext i6 %tmp_2 to i32
  %a_addr = getelementptr inbounds [64 x i32]* %a, i32 0, i32 %tmp_2_cast
  br label %2

; <label>:2                                       ; preds = %3, %1
  %a_load = phi i32 [ 0, %1 ], [ %tmp_s, %3 ]
  %i2 = phi i4 [ 0, %1 ], [ %i2_2, %3 ]
  store i32 %a_load, i32* %a_addr, align 4
  %i2_cast3 = zext i4 %i2 to i6
  %exitcond4 = icmp eq i4 %i2, -8
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i2_2 = add i4 %i2, 1
  br i1 %exitcond4, label %.preheader165.loopexit, label %3

; <label>:3                                       ; preds = %2
  %tmp_18 = trunc i4 %i2 to i3
  %tmp_3 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_18, i3 0)
  %tmp_6 = add i6 %tmp_3, %i0_cast5
  %tmp_6_cast = zext i6 %tmp_6 to i32
  %b_a_addr = getelementptr [64 x i8]* @b_a, i32 0, i32 %tmp_6_cast
  %b_a_load = load i8* %b_a_addr, align 1
  %i_op_assign_cast_cas = sext i8 %b_a_load to i26
  %tmp_9 = add i6 %i2_cast3, %tmp_1
  %tmp_9_cast = zext i6 %tmp_9 to i32
  %sc_FIFO_DCT_mA_V_add = getelementptr [64 x i18]* %sc_FIFO_DCT_mA_V, i32 0, i32 %tmp_9_cast
  %sc_FIFO_DCT_mA_V_loa = load i18* %sc_FIFO_DCT_mA_V_add, align 4
  %tmp_cast_cast = zext i18 %sc_FIFO_DCT_mA_V_loa to i26
  %tmp_8 = mul i26 %i_op_assign_cast_cas, %tmp_cast_cast
  %tmp_8_cast = sext i26 %tmp_8 to i32
  %tmp_s = add i32 %a_load, %tmp_8_cast
  br label %2

.preheader:                                       ; preds = %.preheader.preheader, %_ZN7_ap_sc_7sc_core4waitEi.exit6
  %i1_1 = phi i4 [ %i1_3, %_ZN7_ap_sc_7sc_core4waitEi.exit6 ], [ 0, %.preheader.preheader ]
  %exitcond3 = icmp eq i4 %i1_1, -8
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i1_3 = add i4 %i1_1, 1
  br i1 %exitcond3, label %.loopexit.loopexit, label %"operator<<.exit.i"

"operator<<.exit.i":                              ; preds = %.preheader
  %tmp_17 = trunc i4 %i1_1 to i3
  %tmp_4 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_17, i3 0)
  %tmp_5 = add i6 %tmp_4, %i0_cast5
  %tmp_5_cast = zext i6 %tmp_5 to i32
  %sc_FIFO_DCT_mB_V_add = getelementptr [64 x i18]* %sc_FIFO_DCT_mB_V, i32 0, i32 %tmp_5_cast
  br label %4

; <label>:4                                       ; preds = %5, %"operator<<.exit.i"
  %sc_FIFO_DCT_mB_V_loa = phi i18 [ 0, %"operator<<.exit.i" ], [ %tmp_15, %5 ]
  %i2_1 = phi i4 [ 0, %"operator<<.exit.i" ], [ %i2_3, %5 ]
  store i18 %sc_FIFO_DCT_mB_V_loa, i18* %sc_FIFO_DCT_mB_V_add, align 4
  %i2_1_cast1 = zext i4 %i2_1 to i6
  %exitcond = icmp eq i4 %i2_1, -8
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i2_3 = add i4 %i2_1, 1
  br i1 %exitcond, label %_ZN7_ap_sc_7sc_core4waitEi.exit6, label %5

; <label>:5                                       ; preds = %4
  %tmp_19 = trunc i4 %i2_1 to i3
  %tmp_10 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_19, i3 0)
  %tmp_11 = add i6 %i0_cast5, %tmp_10
  %tmp_12_cast = zext i6 %tmp_11 to i32
  %a_addr_1 = getelementptr inbounds [64 x i32]* %a, i32 0, i32 %tmp_12_cast
  %a_load_1 = load i32* %a_addr_1, align 4
  %tmp_12 = add i6 %tmp_4, %i2_1_cast1
  %tmp_13_cast = zext i6 %tmp_12 to i32
  %b_addr = getelementptr [64 x i8]* @b, i32 0, i32 %tmp_13_cast
  %b_load = load i8* %b_addr, align 1
  %tmp_13 = sext i8 %b_load to i18
  %tmp_20 = trunc i32 %a_load_1 to i18
  %tmp_14 = mul i18 %tmp_20, %tmp_13
  %tmp_15 = add i18 %tmp_14, %sc_FIFO_DCT_mB_V_loa
  br label %4

_ZN7_ap_sc_7sc_core4waitEi.exit6:                 ; preds = %4
  call void @_ssdm_op_Write.ap_auto.volatile.i8P(i8* %dout, i8 127)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %data_ok, i1 true)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %data_ok, i1 false)
  br label %.preheader

_ZN7_ap_sc_7sc_core4waitEi.exit:                  ; preds = %.loopexit
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_working, i1 false)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %done, i1 true)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0
}

define void @"sc_FIFO_DCT::Prc1"(i1* %clock, i1* %reset, i1* %sync, i1* %data_ok, i1* %done, i1* %error, i8* %din, i8* %dout, i1* %s_start, i1* %s_working, [64 x i18]* %sc_FIFO_DCT_mA_V, [64 x i18]* %sc_FIFO_DCT_mB_V) {
_ZN7_ap_sc_7sc_core4waitEi.exit:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !411
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !415
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %sync), !map !419
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_ok), !map !423
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %done), !map !427
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %error), !map !431
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !435
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !439
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_start), !map !443
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !447
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i18]* %sc_FIFO_DCT_mA_V), !map !451
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i18]* %sc_FIFO_DCT_mB_V), !map !457
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [5 x i8]* @p_str4, i32 0, i32 0, i1* %sync) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [8 x i8]* @p_str5, i32 0, i32 0, i1* %data_ok) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [5 x i8]* @p_str6, i32 0, i32 0, i1* %done) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [7 x i8]* @p_str1, [6 x i8]* @p_str7, i32 0, i32 0, i1* %error) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [13 x i8]* @p_str8, [4 x i8]* @p_str9, i32 0, i32 0, i8* %din) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 1, [13 x i8]* @p_str8, [5 x i8]* @p_str10, i32 0, i32 0, i8* %dout) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str, i32 2, [5 x i8]* @p_str11) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str13) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str12, i32 %tmp_8)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit
  %i0 = phi i32 [ 0, %_ZN7_ap_sc_7sc_core4waitEi.exit ], [ %i0_3, %_ZN7_ap_sc_7sc_core4waitEi.exit2 ]
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %sync)
  br i1 %tmp, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %tmp_21 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_working)
  br i1 %tmp_21, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %error, i1 true)
  br label %._crit_edge

; <label>:3                                       ; preds = %1
  %val_V = call i8 @_ssdm_op_Read.ap_auto.volatile.i8P(i8* %din)
  %tmp_s = zext i8 %val_V to i18
  %sc_FIFO_DCT_mA_V_add = getelementptr [64 x i18]* %sc_FIFO_DCT_mA_V, i32 0, i32 %i0
  store i18 %tmp_s, i18* %sc_FIFO_DCT_mA_V_add, align 4
  %i0_4 = add nsw i32 %i0, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2, %0
  %i0_2 = phi i32 [ %i0, %2 ], [ %i0_4, %3 ], [ %i0, %0 ]
  %tmp_16 = icmp eq i32 %i0_2, 64
  br i1 %tmp_16, label %4, label %_ZN7_ap_sc_7sc_core4waitEi.exit2

; <label>:4                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_start, i1 true)
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2

_ZN7_ap_sc_7sc_core4waitEi.exit2:                 ; preds = %4, %._crit_edge
  %i0_3 = phi i32 [ 0, %4 ], [ %i0_2, %._crit_edge ]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecStateEnd(...) nounwind {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecStateBegin(...) nounwind {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecSensitive(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDef(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDecl(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPort(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecChannel(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_auto.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak void @_ssdm_op_Poll(...) nounwind {
entry:
  ret void
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_10 = zext i3 %1 to i6
  %empty_11 = shl i6 %empty, 3
  %empty_12 = or i6 %empty_11, %empty_10
  ret i6 %empty_12
}

declare void @_GLOBAL__I_a58() nounwind

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !13, !19, !22, !22, !22, !0, !25, !28, !28, !0, !30, !0, !0, !0, !33, !33, !35, !35, !37, !39, !0, !0, !0, !41, !43, !0, !0, !0, !0, !45, !47, !48, !48, !51, !0, !0, !52, !55, !0, !0, !0, !57, !57, !33, !33, !59, !61, !63, !63, !0, !65, !0, !67, !70, !0, !0, !0, !0, !59, !72, !0, !0, !73, !75, !75, !80, !80, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !82, !84, !84, !84, !84, !87, !87, !87, !87, !84, !84, !84, !84, !87, !87, !87, !87, !88, !0, !0, !0, !94, !28, !28, !0, !0, !0, !0, !97, !97, !0, !99, !101, !101, !0, !103, !105, !105, !0, !107, !107, !109, !107, !107, !109, !111, !28, !28, !117, !0, !0, !0, !119, !28, !28, !0, !0, !0, !121, !28, !28, !123, !0, !0, !0, !33, !33, !125, !125, !127, !0, !0, !0, !129, !129, !129, !0, !131, !133, !136, !136, !140, !140, !143, !143, !147, !149, !149, !0, !0, !0, !0, !151, !153, !153, !0, !0, !140, !154, !154, !156, !156, !157, !159, !159, !160, !162, !162, !160, !164, !164, !166, !168, !168, !0, !0, !169, !171, !171, !140, !140, !172, !172, !166, !169, !171, !171, !0, !140, !174, !174, !176, !177, !177, !179, !0, !131, !176, !181, !181, !131, !131, !0, !0, !0, !0, !0, !0, !0, !0, !183, !0, !0, !0, !94, !28, !28, !0, !0, !97, !97, !0, !185, !103, !187, !187, !0, !189, !189, !191, !189, !189, !191, !111, !193, !0, !0, !0, !195, !28, !28, !127, !0, !0, !0, !197, !197, !197, !162, !162, !160, !199, !0, !0, !0, !94, !28, !28, !0, !0, !97, !97, !0, !201, !103, !203, !203, !0, !205, !205, !207, !205, !205, !207, !111, !209, !0, !0, !0, !211, !28, !28, !127, !0, !0, !0, !213, !213, !213, !162, !162, !160, !215, !0, !0, !0, !94, !28, !28, !0, !0, !97, !97, !0, !217, !103, !219, !219, !0, !221, !221, !223, !221, !221, !223, !111, !225, !0, !0, !0, !227, !28, !28, !127, !0, !0, !0, !229, !229, !229, !162, !162, !160, !231, !0, !233, !233, !235, !233, !233, !235, !237, !0, !0, !0, !239, !28, !28, !0, !241, !243, !245, !245, !127, !0, !0, !0, !247, !247, !247, !0, !131, !133, !249, !249, !140, !140, !251, !251, !253, !255, !255, !0, !0, !0, !0, !256, !258, !258, !0, !0, !140, !259, !259, !156, !156, !157, !159, !159, !261, !263, !263, !261, !265, !265, !266, !268, !268, !0, !0, !269, !271, !271, !140, !140, !272, !272, !266, !269, !271, !271, !140, !274, !274, !176, !276, !276, !278, !0, !280, !280, !0, !0, !0, !0, !281, !283, !283, !285, !283, !283, !285, !287, !0, !0, !0, !289, !28, !28, !127, !0, !0, !0, !291, !291, !291, !263, !263, !261, !293, !295, !295, !297, !295, !295, !297, !299, !0, !0, !0, !301, !28, !28, !127, !0, !0, !0, !303, !303, !303, !263, !263, !261, !305, !307, !307, !309, !307, !307, !309, !311, !0, !0, !0, !313, !28, !28, !127, !0, !0, !0, !315, !315, !315, !263, !263, !261, !317, !0, !0, !0, !94, !0, !319, !319, !321, !321, !321, !323, !325, !325, !319, !0, !131, !176, !327, !327, !97, !97, !0, !329, !0, !0, !0, !94, !28, !28, !0, !0, !331, !331, !0, !333, !333, !333, !335, !337, !337, !331, !0, !131, !176, !339, !339, !97, !97, !0, !341, !0, !0, !0, !94, !28, !28, !0, !0, !343, !343, !0, !345, !345, !345, !347, !349, !349, !343, !0, !131, !176, !351, !351, !97, !97, !0, !353, !355, !357, !48, !48, !359, !0, !361, !0, !0, !0, !363, !363, !365, !365, !367, !0, !0, !0, !369, !0, !0, !0, !0, !370, !0, !48, !48, !359, !370, !0, !48, !48, !359, !370, !0, !372, !372, !372, !0, !372, !372, !372, !0, !372, !372, !372, !0, !372, !372, !372, !372, !372, !372, !372, !372, !372, !0, !372, !372, !372, !0, !372, !372, !372, !0, !372, !372, !372, !0, !374, !0, !0, !0, !94, !28, !28, !0, !0, !376, !376, !0, !378, !378, !378, !380, !382, !382, !376, !0, !131, !176, !384, !384, !97, !97, !0, !386, !372, !372, !372, !0, !372, !372, !372, !372, !372, !372, !388, !388, !388, !0, !372, !372, !372, !0, !372, !372, !372, !0, !372, !372, !372, !0, !388, !388, !388, !0, !388, !388, !388}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!392, !399, !404}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_int_base<33, true, true> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"v2"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<8> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !24, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!30 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &", metadata !"const ap_int_base<32, true> &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !24, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !24, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &"}
!37 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !27, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, true> &", metadata !"int"}
!39 = metadata !{null, metadata !14, metadata !15, metadata !40, metadata !17, metadata !32, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, true> &", metadata !"const ap_int_base<32, true> &"}
!41 = metadata !{null, metadata !14, metadata !15, metadata !42, metadata !17, metadata !27, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, false> &", metadata !"int"}
!43 = metadata !{null, metadata !14, metadata !15, metadata !44, metadata !17, metadata !32, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, false> &", metadata !"const ap_int_base<32, true> &"}
!45 = metadata !{null, metadata !14, metadata !15, metadata !46, metadata !17, metadata !32, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<18, false> &", metadata !"int"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !21, metadata !6}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !24, metadata !6}
!52 = metadata !{null, metadata !14, metadata !15, metadata !53, metadata !17, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<18, false> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!55 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !32, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<18, false> &"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !58, metadata !11, metadata !24, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, false> &"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !50, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!61 = metadata !{null, metadata !14, metadata !15, metadata !62, metadata !17, metadata !18, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &", metadata !"const _Bool &"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !24, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const sc_uint<8> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !21, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<18> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !69, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<8> &"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !21, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_uint<8> &"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !12, metadata !6}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !69, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!75 = metadata !{null, metadata !76, metadata !9, metadata !77, metadata !78, metadata !79, metadata !6}
!76 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!78 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !""}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !79, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !83, metadata !6}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !86, metadata !6}
!88 = metadata !{null, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !6}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!90 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!92 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !95, metadata !11, metadata !96, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!97 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !98, metadata !6}
!98 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!99 = metadata !{null, metadata !14, metadata !15, metadata !100, metadata !17, metadata !27, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!101 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !102, metadata !6}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!103 = metadata !{null, metadata !8, metadata !9, metadata !104, metadata !11, metadata !21, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!105 = metadata !{null, metadata !8, metadata !9, metadata !106, metadata !11, metadata !24, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !24, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !110, metadata !11, metadata !24, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!111 = metadata !{null, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !6}
!112 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!113 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!115 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!117 = metadata !{null, metadata !14, metadata !15, metadata !118, metadata !17, metadata !32, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !120, metadata !11, metadata !21, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!121 = metadata !{null, metadata !14, metadata !15, metadata !122, metadata !17, metadata !27, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!123 = metadata !{null, metadata !14, metadata !15, metadata !124, metadata !17, metadata !32, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!125 = metadata !{null, metadata !8, metadata !9, metadata !126, metadata !11, metadata !24, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!127 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !128, metadata !6}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!129 = metadata !{null, metadata !8, metadata !9, metadata !130, metadata !11, metadata !24, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!131 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !98, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!133 = metadata !{null, metadata !8, metadata !9, metadata !134, metadata !11, metadata !135, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!136 = metadata !{null, metadata !137, metadata !15, metadata !138, metadata !17, metadata !139, metadata !6}
!137 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!140 = metadata !{null, metadata !14, metadata !15, metadata !141, metadata !17, metadata !142, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!142 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!143 = metadata !{null, metadata !144, metadata !90, metadata !145, metadata !92, metadata !146, metadata !6}
!144 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!147 = metadata !{null, metadata !8, metadata !9, metadata !148, metadata !11, metadata !98, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!149 = metadata !{null, metadata !8, metadata !9, metadata !148, metadata !11, metadata !150, metadata !6}
!150 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!151 = metadata !{null, metadata !8, metadata !9, metadata !152, metadata !11, metadata !98, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!153 = metadata !{null, metadata !8, metadata !9, metadata !152, metadata !11, metadata !24, metadata !6}
!154 = metadata !{null, metadata !144, metadata !90, metadata !155, metadata !92, metadata !146, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!156 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !50, metadata !6}
!157 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !158, metadata !6}
!158 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !104, metadata !11, metadata !24, metadata !6}
!160 = metadata !{null, metadata !8, metadata !9, metadata !161, metadata !11, metadata !24, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!162 = metadata !{null, metadata !8, metadata !9, metadata !163, metadata !11, metadata !24, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!164 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !165, metadata !6}
!165 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!166 = metadata !{null, metadata !8, metadata !9, metadata !167, metadata !11, metadata !98, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!168 = metadata !{null, metadata !8, metadata !9, metadata !167, metadata !11, metadata !150, metadata !6}
!169 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !98, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!171 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !24, metadata !6}
!172 = metadata !{null, metadata !144, metadata !90, metadata !173, metadata !92, metadata !146, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!174 = metadata !{null, metadata !144, metadata !90, metadata !175, metadata !92, metadata !146, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!176 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !135, metadata !6}
!177 = metadata !{null, metadata !137, metadata !15, metadata !178, metadata !17, metadata !139, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!179 = metadata !{null, metadata !8, metadata !9, metadata !180, metadata !11, metadata !98, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!181 = metadata !{null, metadata !137, metadata !15, metadata !182, metadata !17, metadata !139, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!183 = metadata !{null, metadata !89, metadata !90, metadata !184, metadata !92, metadata !93, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!185 = metadata !{null, metadata !14, metadata !15, metadata !186, metadata !17, metadata !27, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!187 = metadata !{null, metadata !8, metadata !9, metadata !188, metadata !11, metadata !24, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!189 = metadata !{null, metadata !8, metadata !9, metadata !190, metadata !11, metadata !24, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!191 = metadata !{null, metadata !8, metadata !9, metadata !192, metadata !11, metadata !24, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!193 = metadata !{null, metadata !14, metadata !15, metadata !194, metadata !17, metadata !32, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!195 = metadata !{null, metadata !8, metadata !9, metadata !196, metadata !11, metadata !21, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!197 = metadata !{null, metadata !8, metadata !9, metadata !198, metadata !11, metadata !24, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!199 = metadata !{null, metadata !89, metadata !90, metadata !200, metadata !92, metadata !93, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!201 = metadata !{null, metadata !14, metadata !15, metadata !202, metadata !17, metadata !27, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!203 = metadata !{null, metadata !8, metadata !9, metadata !204, metadata !11, metadata !24, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!205 = metadata !{null, metadata !8, metadata !9, metadata !206, metadata !11, metadata !24, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!207 = metadata !{null, metadata !8, metadata !9, metadata !208, metadata !11, metadata !24, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!209 = metadata !{null, metadata !14, metadata !15, metadata !210, metadata !17, metadata !32, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!211 = metadata !{null, metadata !8, metadata !9, metadata !212, metadata !11, metadata !21, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!213 = metadata !{null, metadata !8, metadata !9, metadata !214, metadata !11, metadata !24, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!215 = metadata !{null, metadata !89, metadata !90, metadata !216, metadata !92, metadata !93, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!217 = metadata !{null, metadata !14, metadata !15, metadata !218, metadata !17, metadata !27, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!219 = metadata !{null, metadata !8, metadata !9, metadata !220, metadata !11, metadata !24, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!221 = metadata !{null, metadata !8, metadata !9, metadata !222, metadata !11, metadata !24, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!223 = metadata !{null, metadata !8, metadata !9, metadata !224, metadata !11, metadata !24, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!225 = metadata !{null, metadata !14, metadata !15, metadata !226, metadata !17, metadata !32, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!227 = metadata !{null, metadata !8, metadata !9, metadata !228, metadata !11, metadata !21, metadata !6}
!228 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!229 = metadata !{null, metadata !8, metadata !9, metadata !230, metadata !11, metadata !24, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!231 = metadata !{null, metadata !89, metadata !90, metadata !232, metadata !92, metadata !93, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!233 = metadata !{null, metadata !8, metadata !9, metadata !234, metadata !11, metadata !24, metadata !6}
!234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!235 = metadata !{null, metadata !8, metadata !9, metadata !236, metadata !11, metadata !24, metadata !6}
!236 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!237 = metadata !{null, metadata !14, metadata !15, metadata !238, metadata !17, metadata !32, metadata !6}
!238 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!239 = metadata !{null, metadata !8, metadata !9, metadata !240, metadata !11, metadata !21, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!241 = metadata !{null, metadata !14, metadata !15, metadata !242, metadata !17, metadata !27, metadata !6}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!243 = metadata !{null, metadata !14, metadata !15, metadata !244, metadata !17, metadata !32, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!245 = metadata !{null, metadata !8, metadata !9, metadata !246, metadata !11, metadata !24, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!247 = metadata !{null, metadata !8, metadata !9, metadata !248, metadata !11, metadata !24, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!249 = metadata !{null, metadata !137, metadata !15, metadata !250, metadata !17, metadata !139, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!251 = metadata !{null, metadata !144, metadata !90, metadata !252, metadata !92, metadata !146, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!253 = metadata !{null, metadata !8, metadata !9, metadata !254, metadata !11, metadata !98, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!255 = metadata !{null, metadata !8, metadata !9, metadata !254, metadata !11, metadata !150, metadata !6}
!256 = metadata !{null, metadata !8, metadata !9, metadata !257, metadata !11, metadata !98, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!258 = metadata !{null, metadata !8, metadata !9, metadata !257, metadata !11, metadata !24, metadata !6}
!259 = metadata !{null, metadata !144, metadata !90, metadata !260, metadata !92, metadata !146, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!261 = metadata !{null, metadata !8, metadata !9, metadata !262, metadata !11, metadata !24, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!263 = metadata !{null, metadata !8, metadata !9, metadata !264, metadata !11, metadata !24, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!265 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !165, metadata !6}
!266 = metadata !{null, metadata !8, metadata !9, metadata !267, metadata !11, metadata !98, metadata !6}
!267 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!268 = metadata !{null, metadata !8, metadata !9, metadata !267, metadata !11, metadata !150, metadata !6}
!269 = metadata !{null, metadata !8, metadata !9, metadata !270, metadata !11, metadata !98, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!271 = metadata !{null, metadata !8, metadata !9, metadata !270, metadata !11, metadata !24, metadata !6}
!272 = metadata !{null, metadata !144, metadata !90, metadata !273, metadata !92, metadata !146, metadata !6}
!273 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!274 = metadata !{null, metadata !144, metadata !90, metadata !275, metadata !92, metadata !146, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!276 = metadata !{null, metadata !137, metadata !15, metadata !277, metadata !17, metadata !139, metadata !6}
!277 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!278 = metadata !{null, metadata !8, metadata !9, metadata !279, metadata !11, metadata !98, metadata !6}
!279 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!280 = metadata !{null, metadata !8, metadata !9, metadata !134, metadata !11, metadata !98, metadata !6}
!281 = metadata !{null, metadata !89, metadata !90, metadata !282, metadata !92, metadata !93, metadata !6}
!282 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!283 = metadata !{null, metadata !8, metadata !9, metadata !284, metadata !11, metadata !24, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!285 = metadata !{null, metadata !8, metadata !9, metadata !286, metadata !11, metadata !24, metadata !6}
!286 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!287 = metadata !{null, metadata !14, metadata !15, metadata !288, metadata !17, metadata !32, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!289 = metadata !{null, metadata !8, metadata !9, metadata !290, metadata !11, metadata !21, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!291 = metadata !{null, metadata !8, metadata !9, metadata !292, metadata !11, metadata !24, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!293 = metadata !{null, metadata !89, metadata !90, metadata !294, metadata !92, metadata !93, metadata !6}
!294 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!295 = metadata !{null, metadata !8, metadata !9, metadata !296, metadata !11, metadata !24, metadata !6}
!296 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!297 = metadata !{null, metadata !8, metadata !9, metadata !298, metadata !11, metadata !24, metadata !6}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!299 = metadata !{null, metadata !14, metadata !15, metadata !300, metadata !17, metadata !32, metadata !6}
!300 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!301 = metadata !{null, metadata !8, metadata !9, metadata !302, metadata !11, metadata !21, metadata !6}
!302 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!303 = metadata !{null, metadata !8, metadata !9, metadata !304, metadata !11, metadata !24, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!305 = metadata !{null, metadata !89, metadata !90, metadata !306, metadata !92, metadata !93, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!307 = metadata !{null, metadata !8, metadata !9, metadata !308, metadata !11, metadata !24, metadata !6}
!308 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!309 = metadata !{null, metadata !8, metadata !9, metadata !310, metadata !11, metadata !24, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!311 = metadata !{null, metadata !14, metadata !15, metadata !312, metadata !17, metadata !32, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!313 = metadata !{null, metadata !8, metadata !9, metadata !314, metadata !11, metadata !21, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!315 = metadata !{null, metadata !8, metadata !9, metadata !316, metadata !11, metadata !24, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!317 = metadata !{null, metadata !89, metadata !90, metadata !318, metadata !92, metadata !93, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!319 = metadata !{null, metadata !8, metadata !9, metadata !320, metadata !11, metadata !24, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!321 = metadata !{null, metadata !8, metadata !9, metadata !322, metadata !11, metadata !24, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!323 = metadata !{null, metadata !8, metadata !9, metadata !324, metadata !11, metadata !24, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!325 = metadata !{null, metadata !8, metadata !9, metadata !326, metadata !11, metadata !24, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!327 = metadata !{null, metadata !137, metadata !15, metadata !328, metadata !17, metadata !139, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!329 = metadata !{null, metadata !89, metadata !90, metadata !330, metadata !92, metadata !93, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!331 = metadata !{null, metadata !8, metadata !9, metadata !332, metadata !11, metadata !24, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!333 = metadata !{null, metadata !8, metadata !9, metadata !334, metadata !11, metadata !24, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!335 = metadata !{null, metadata !8, metadata !9, metadata !336, metadata !11, metadata !24, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!337 = metadata !{null, metadata !8, metadata !9, metadata !338, metadata !11, metadata !24, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!339 = metadata !{null, metadata !137, metadata !15, metadata !340, metadata !17, metadata !139, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!341 = metadata !{null, metadata !89, metadata !90, metadata !342, metadata !92, metadata !93, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!343 = metadata !{null, metadata !8, metadata !9, metadata !344, metadata !11, metadata !24, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!345 = metadata !{null, metadata !8, metadata !9, metadata !346, metadata !11, metadata !24, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!347 = metadata !{null, metadata !8, metadata !9, metadata !348, metadata !11, metadata !24, metadata !6}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!349 = metadata !{null, metadata !8, metadata !9, metadata !350, metadata !11, metadata !24, metadata !6}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!351 = metadata !{null, metadata !137, metadata !15, metadata !352, metadata !17, metadata !139, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!353 = metadata !{null, metadata !89, metadata !90, metadata !354, metadata !92, metadata !93, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!355 = metadata !{null, metadata !89, metadata !90, metadata !356, metadata !92, metadata !93, metadata !6}
!356 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!357 = metadata !{null, metadata !89, metadata !90, metadata !358, metadata !92, metadata !93, metadata !6}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!359 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !360, metadata !6}
!360 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!361 = metadata !{null, metadata !14, metadata !15, metadata !362, metadata !17, metadata !32, metadata !6}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!363 = metadata !{null, metadata !8, metadata !9, metadata !364, metadata !11, metadata !24, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!365 = metadata !{null, metadata !8, metadata !9, metadata !366, metadata !11, metadata !24, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!367 = metadata !{null, metadata !8, metadata !9, metadata !368, metadata !11, metadata !21, metadata !6}
!368 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!369 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !21, metadata !6}
!370 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !371, metadata !6}
!371 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!372 = metadata !{null, metadata !76, metadata !9, metadata !77, metadata !78, metadata !373, metadata !6}
!373 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!374 = metadata !{null, metadata !89, metadata !90, metadata !375, metadata !92, metadata !93, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!376 = metadata !{null, metadata !8, metadata !9, metadata !377, metadata !11, metadata !24, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!378 = metadata !{null, metadata !8, metadata !9, metadata !379, metadata !11, metadata !24, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!380 = metadata !{null, metadata !8, metadata !9, metadata !381, metadata !11, metadata !24, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!382 = metadata !{null, metadata !8, metadata !9, metadata !383, metadata !11, metadata !24, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!384 = metadata !{null, metadata !137, metadata !15, metadata !385, metadata !17, metadata !139, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!386 = metadata !{null, metadata !89, metadata !90, metadata !387, metadata !92, metadata !93, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!388 = metadata !{null, metadata !137, metadata !15, metadata !389, metadata !390, metadata !391, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!390 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!391 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!392 = metadata !{metadata !393, i1* @sc_FIFO_DCT_ssdm_thread_M_Prc2}
!393 = metadata !{metadata !394}
!394 = metadata !{i32 0, i32 0, metadata !395}
!395 = metadata !{metadata !396}
!396 = metadata !{metadata !"sc_FIFO_DCT::__ssdm_thread_M_Prc2", metadata !397, metadata !"bool", i32 0, i32 0}
!397 = metadata !{metadata !398}
!398 = metadata !{i32 0, i32 0, i32 1}
!399 = metadata !{metadata !400, i1* @sc_FIFO_DCT_ssdm_thread_M_Prc1}
!400 = metadata !{metadata !401}
!401 = metadata !{i32 0, i32 0, metadata !402}
!402 = metadata !{metadata !403}
!403 = metadata !{metadata !"sc_FIFO_DCT::__ssdm_thread_M_Prc1", metadata !397, metadata !"bool", i32 0, i32 0}
!404 = metadata !{metadata !405, [2 x i32]* @llvm_global_ctors_0}
!405 = metadata !{metadata !406}
!406 = metadata !{i32 0, i32 31, metadata !407}
!407 = metadata !{metadata !408}
!408 = metadata !{metadata !"llvm.global_ctors.0", metadata !409, metadata !"", i32 0, i32 31}
!409 = metadata !{metadata !410}
!410 = metadata !{i32 0, i32 1, i32 1}
!411 = metadata !{metadata !412}
!412 = metadata !{i32 0, i32 0, metadata !413}
!413 = metadata !{metadata !414}
!414 = metadata !{metadata !"sc_FIFO_DCT.clock.m_if.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!415 = metadata !{metadata !416}
!416 = metadata !{i32 0, i32 0, metadata !417}
!417 = metadata !{metadata !418}
!418 = metadata !{metadata !"sc_FIFO_DCT.reset.m_if.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!419 = metadata !{metadata !420}
!420 = metadata !{i32 0, i32 0, metadata !421}
!421 = metadata !{metadata !422}
!422 = metadata !{metadata !"sc_FIFO_DCT.sync.m_if.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!423 = metadata !{metadata !424}
!424 = metadata !{i32 0, i32 0, metadata !425}
!425 = metadata !{metadata !426}
!426 = metadata !{metadata !"sc_FIFO_DCT.data_ok.m_if.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!427 = metadata !{metadata !428}
!428 = metadata !{i32 0, i32 0, metadata !429}
!429 = metadata !{metadata !430}
!430 = metadata !{metadata !"sc_FIFO_DCT.done.m_if.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!431 = metadata !{metadata !432}
!432 = metadata !{i32 0, i32 0, metadata !433}
!433 = metadata !{metadata !434}
!434 = metadata !{metadata !"sc_FIFO_DCT.error.m_if.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!435 = metadata !{metadata !436}
!436 = metadata !{i32 0, i32 7, metadata !437}
!437 = metadata !{metadata !438}
!438 = metadata !{metadata !"sc_FIFO_DCT.din.m_if.Val.V", metadata !397, metadata !"uint8", i32 0, i32 7}
!439 = metadata !{metadata !440}
!440 = metadata !{i32 0, i32 7, metadata !441}
!441 = metadata !{metadata !442}
!442 = metadata !{metadata !"sc_FIFO_DCT.dout.m_if.Val.V", metadata !397, metadata !"uint8", i32 0, i32 7}
!443 = metadata !{metadata !444}
!444 = metadata !{i32 0, i32 0, metadata !445}
!445 = metadata !{metadata !446}
!446 = metadata !{metadata !"sc_FIFO_DCT.s_start.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!447 = metadata !{metadata !448}
!448 = metadata !{i32 0, i32 0, metadata !449}
!449 = metadata !{metadata !450}
!450 = metadata !{metadata !"sc_FIFO_DCT.s_working.Val", metadata !397, metadata !"bool", i32 0, i32 0}
!451 = metadata !{metadata !452}
!452 = metadata !{i32 0, i32 17, metadata !453}
!453 = metadata !{metadata !454}
!454 = metadata !{metadata !"sc_FIFO_DCT.mA.V", metadata !455, metadata !"uint18", i32 0, i32 17}
!455 = metadata !{metadata !456}
!456 = metadata !{i32 0, i32 63, i32 1}
!457 = metadata !{metadata !458}
!458 = metadata !{i32 0, i32 17, metadata !459}
!459 = metadata !{metadata !460}
!460 = metadata !{metadata !"sc_FIFO_DCT.mB.V", metadata !455, metadata !"uint18", i32 0, i32 17}
