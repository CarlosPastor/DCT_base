; ModuleID = 'C:/Users/alienBot/Documents/GitHub/DCT_base/DCT_base/DCT/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@ssdm_ins_sc_FIFO_DCT_9 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_8 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_7 = constant i8 0
@ssdm_ins_sc_FIFO_DCT_6 = constant i8 0
@ssdm_ins_sc_FIFO_DCT_5 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_4 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_3 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_16 = constant i1 false
@ssdm_ins_sc_FIFO_DCT_15 = constant [64 x i32] zeroinitializer
@ssdm_ins_sc_FIFO_DCT_14 = constant [64 x i32] zeroinitializer
@ssdm_ins_sc_FIFO_DCT_13 = constant [64 x i32] zeroinitializer
@ssdm_ins_sc_FIFO_DCT_11 = constant i32 0
@ssdm_ins_sc_FIFO_DCT_1 = constant i1 false
@ssdm_ins_sc_FIFO_DCT = constant i1 false
@sc_FIFO_DCT_ssdm_thread_M_data_out = external global i1
@sc_FIFO_DCT_ssdm_thread_M_buffering = external global i1
@sc_FIFO_DCT_ssdm_thread_M_DCT = external global i1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@b_a = internal unnamed_addr constant [64 x i8] c"Z}vjZG0\18Zj0\E8\A6\83\8A\B9ZG\D0\83\A6\18vjZ\18\8A\B9Zj\D0\83Z\E8\8AGZ\96\D0}Z\B9\D0}\A6\E8v\96Z\960\18\A6}\8AGZ\83v\96Z\B90\E8"
@b = internal unnamed_addr constant [64 x i8] c"ZZZZZZZZ}jG\18\E8\B9\96\83v0\D0\8A\8A\D00vj\E8\83\B9G}\18\96Z\A6\A6ZZ\A6\A6ZG\83\18j\96\E8}\B90\8Av\D0\D0v\8A0\18\B9j\83}\96G\E8"
@p_str8 = private unnamed_addr constant [15 x i8] c"__ssdm_reset__\00", align 1
@p_str7 = private unnamed_addr constant [10 x i8] c"buffering\00", align 1
@p_str6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str42 = private unnamed_addr constant [13 x i8] c"\22sc_uint<8>\22\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@p_str36 = private unnamed_addr constant [9 x i8] c"data_out\00", align 1
@p_str32 = private unnamed_addr constant [7 x i8] c"multAT\00", align 1
@p_str31 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str29 = private unnamed_addr constant [7 x i8] c"multTA\00", align 1
@p_str28 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@p_str27 = private unnamed_addr constant [9 x i8] c"DCT_loop\00", align 1
@p_str24 = private unnamed_addr constant [4 x i8] c"DCT\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@p_str16 = private unnamed_addr constant [7 x i8] c"s_done\00", align 1
@p_str15 = private unnamed_addr constant [6 x i8] c"s_DCT\00", align 1
@p_str14 = private unnamed_addr constant [10 x i8] c"s_working\00", align 1
@p_str13 = private unnamed_addr constant [11 x i8] c"s_buffered\00", align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"s_buffering\00", align 1
@p_str11 = private unnamed_addr constant [4 x i8] c"din\00", align 1
@p_str10 = private unnamed_addr constant [5 x i8] c"dout\00", align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str = private unnamed_addr constant [12 x i8] c"sc_FIFO_DCT\00", align 1

define weak void @"sc_FIFO_DCT::sc_FIFO_DCT"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done) {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mA), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mB), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mC), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %sc_FIFO_DCT_exec_cnt), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffering), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffered), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_DCT), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_done), !map !128
  call void (...)* @_ssdm_op_SpecInterface(i8* %dout, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str6, i32 5, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i8* %dout) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %din, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str6, i32 4, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i8* %din) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @p_str, [12 x i8]* @p_str) nounwind
  %sc_FIFO_DCT_ssdm_s = load i1* @sc_FIFO_DCT_ssdm_thread_M_buffering, align 1
  br i1 %sc_FIFO_DCT_ssdm_s, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"sc_FIFO_DCT::buffering"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done)
  br label %UnifiedUnreachableBlock

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str, i32 2, [10 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([10 x i8]* @p_str7, [6 x i8]* @p_str2, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([10 x i8]* @p_str7, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  %sc_FIFO_DCT_ssdm_1 = load i1* @sc_FIFO_DCT_ssdm_thread_M_DCT, align 1
  br i1 %sc_FIFO_DCT_ssdm_1, label %3, label %4

; <label>:3                                       ; preds = %2
  call void @"sc_FIFO_DCT::DCT"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done)
  br label %UnifiedUnreachableBlock

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str, i32 2, [4 x i8]* @p_str24) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([4 x i8]* @p_str24, [6 x i8]* @p_str2, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([4 x i8]* @p_str24, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  %sc_FIFO_DCT_ssdm_2 = load i1* @sc_FIFO_DCT_ssdm_thread_M_data_out, align 1
  br i1 %sc_FIFO_DCT_ssdm_2, label %5, label %6

; <label>:5                                       ; preds = %4
  call void @"sc_FIFO_DCT::data_out"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done)
  br label %UnifiedUnreachableBlock

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str, i32 2, [9 x i8]* @p_str36) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([9 x i8]* @p_str36, [6 x i8]* @p_str2, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([9 x i8]* @p_str36, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [7 x i8]* @p_str4, i32 0, i32 0, i1* %enable) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dout, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 5, [13 x i8]* @p_str42, [5 x i8]* @p_str10, i32 0, i32 0, i8* %dout) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %din, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 4, [13 x i8]* @p_str42, [4 x i8]* @p_str11, i32 0, i32 0, i8* %din) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [12 x i8]* @p_str12, i32 1, i32 0, i1* %s_buffering) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [11 x i8]* @p_str13, i32 1, i32 0, i1* %s_buffered) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [10 x i8]* @p_str14, i32 1, i32 0, i1* %s_working) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str15, i32 1, i32 0, i1* %s_DCT) nounwind
  call void (...)* @_ssdm_op_SpecChannel([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [7 x i8]* @p_str16, i32 1, i32 0, i1* %s_done) nounwind
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %sc_FIFO_DCT_exec_cnt, i32 0)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_buffering, i1 false)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_buffered, i1 false)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_working, i1 false)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_DCT, i1 false)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_done, i1 false)
  ret void

UnifiedUnreachableBlock:                          ; preds = %5, %3, %1
  unreachable
}

define void @"sc_FIFO_DCT::data_out"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done) {
_ZN7_ap_sc_7sc_core4waitEi.exit:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mA), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mB), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mC), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %sc_FIFO_DCT_exec_cnt), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffering), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffered), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_DCT), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_done), !map !128
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [7 x i8]* @p_str4, i32 0, i32 0, i1* %enable) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dout, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %din, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str, i32 2, [9 x i8]* @p_str36) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str6) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str8, i32 %tmp_3)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_DCT)
  call void (...)* @_ssdm_op_Poll(i1 %tmp)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %2 ]
  %i_cast1 = zext i7 %i to i32
  %exitcond = icmp eq i7 %i, -64
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_1 = add i7 %i, 1
  br i1 %exitcond, label %_ZN7_ap_sc_7sc_core4waitEi.exit2, label %2

; <label>:2                                       ; preds = %1
  %sc_FIFO_DCT_mC_addr = getelementptr [64 x i32]* %sc_FIFO_DCT_mC, i32 0, i32 %i_cast1
  %sc_FIFO_DCT_mC_load = load i32* %sc_FIFO_DCT_mC_addr, align 4
  %tmp_4 = trunc i32 %sc_FIFO_DCT_mC_load to i8
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dout, i8 %tmp_4)
  br label %1

_ZN7_ap_sc_7sc_core4waitEi.exit2:                 ; preds = %1
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_done, i1 true)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_1 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_DCT)
  %tmp_2 = xor i1 %tmp_1, true
  call void (...)* @_ssdm_op_Poll(i1 %tmp_2)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_done, i1 false)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0
}

define void @"sc_FIFO_DCT::buffering"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done) {
_ZN7_ap_sc_7sc_core4waitEi.exit:
  %i = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mA), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mB), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mC), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %sc_FIFO_DCT_exec_cnt), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffering), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffered), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_DCT), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_done), !map !128
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [7 x i8]* @p_str4, i32 0, i32 0, i1* %enable) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dout, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %din, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str, i32 2, [10 x i8]* @p_str7) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str6) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str8, i32 %tmp_7)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i32 0, i32* %i
  br label %0

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit
  %i_load = load i32* %i
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_working)
  %tmp_4 = xor i1 %tmp, true
  call void (...)* @_ssdm_op_Poll(i1 %tmp_4)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_5 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i8P(i8* %din, i32 1)
  call void (...)* @_ssdm_op_Poll(i1 %tmp_5)
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %din)
  %tmp_6 = zext i8 %val_V to i32
  %sc_FIFO_DCT_mA_addr = getelementptr [64 x i32]* %sc_FIFO_DCT_mA, i32 0, i32 %i_load
  store i32 %tmp_6, i32* %sc_FIFO_DCT_mA_addr, align 4
  %i_2 = add nsw i32 %i_load, 1
  %tmp_8 = icmp eq i32 %i_2, 64
  br i1 %tmp_8, label %1, label %_ZN7_ap_sc_7sc_core4waitEi.exit2.pre

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_buffered, i1 true)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_9 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_working)
  call void (...)* @_ssdm_op_Poll(i1 %tmp_9)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_buffered, i1 false)
  store i32 0, i32* %i
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2

_ZN7_ap_sc_7sc_core4waitEi.exit2.pre:             ; preds = %0
  store i32 %i_2, i32* %i
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2

_ZN7_ap_sc_7sc_core4waitEi.exit2:                 ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2.pre, %1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0
}

define void @"sc_FIFO_DCT::DCT"(i1* %clock, i1* %reset, i1* %enable, i8* %dout, i8* %din, [64 x i32]* %sc_FIFO_DCT_mA, [64 x i32]* %sc_FIFO_DCT_mB, [64 x i32]* %sc_FIFO_DCT_mC, i32* %sc_FIFO_DCT_exec_cnt, i1* %s_buffering, i1* %s_buffered, i1* %s_working, i1* %s_DCT, i1* %s_done) {
_ZN7_ap_sc_7sc_core4waitEi.exit:
  %s_0_1 = alloca i32
  %s_7_19 = alloca i32
  %s_7_20 = alloca i32
  %s_7_21 = alloca i32
  %s_7_22 = alloca i32
  %s_7_23 = alloca i32
  %s_7_24 = alloca i32
  %s_7_25 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dout), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %din), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mA), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mB), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %sc_FIFO_DCT_mC), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %sc_FIFO_DCT_exec_cnt), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffering), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_buffered), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_working), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_DCT), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s_done), !map !128
  %a = alloca [64 x i32], align 4
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str2, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [7 x i8]* @p_str4, i32 0, i32 0, i1* %enable) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dout, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %din, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str, i32 2, [4 x i8]* @p_str24) nounwind
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str6) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str8, i32 %tmp_12)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_buffered)
  call void (...)* @_ssdm_op_Poll(i1 %tmp)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_working, i1 true)
  br label %1

; <label>:1                                       ; preds = %8, %0
  %i0 = phi i4 [ 0, %0 ], [ %i0_1, %8 ]
  %s_0_1_load = load i32* %s_0_1
  %s_7_19_load = load i32* %s_7_19
  %s_7_20_load = load i32* %s_7_20
  %s_7_21_load = load i32* %s_7_21
  %s_7_22_load = load i32* %s_7_22
  %s_7_23_load = load i32* %s_7_23
  %s_7_24_load = load i32* %s_7_24
  %s_7_25_load = load i32* %s_7_25
  %i0_cast = zext i4 %i0 to i6
  %exitcond1 = icmp eq i4 %i0, -8
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i0_1 = add i4 %i0, 1
  br i1 %exitcond1, label %_ZN7_ap_sc_7sc_core4waitEi.exit2, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str27) nounwind
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str27)
  br label %3

; <label>:3                                       ; preds = %.preheader36.0, %2
  %s_7_2 = phi i32 [ %s_7_25_load, %2 ], [ %s_7_3, %.preheader36.0 ]
  %s_6_2 = phi i32 [ %s_7_24_load, %2 ], [ %s_6_3, %.preheader36.0 ]
  %s_5_2 = phi i32 [ %s_7_23_load, %2 ], [ %s_7_2_12, %.preheader36.0 ]
  %s_4_2 = phi i32 [ %s_7_22_load, %2 ], [ %s_7_4, %.preheader36.0 ]
  %s_3_2 = phi i32 [ %s_7_21_load, %2 ], [ %s_7_6, %.preheader36.0 ]
  %s_2_2 = phi i32 [ %s_7_20_load, %2 ], [ %s_7_8, %.preheader36.0 ]
  %s_1_2 = phi i32 [ %s_7_19_load, %2 ], [ %s_7_27, %.preheader36.0 ]
  %s_0_2 = phi i32 [ %s_0_1_load, %2 ], [ %s_0, %.preheader36.0 ]
  %i1 = phi i4 [ 0, %2 ], [ %i1_2, %.preheader36.0 ]
  %exitcond2 = icmp eq i4 %i1, -8
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i1_2 = add i4 %i1, 1
  br i1 %exitcond2, label %.preheader35.preheader, label %4

.preheader35.preheader:                           ; preds = %3
  %tmp_20 = trunc i4 %i0 to i3
  %tmp_1 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_20, i3 0)
  br label %.preheader35

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str28) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str28)
  %tmp_21 = trunc i4 %i1 to i3
  %tmp_2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_21, i3 0)
  br label %5

; <label>:5                                       ; preds = %_ifconv, %4
  %s_7_3 = phi i32 [ %s_7_2, %4 ], [ %s_7, %_ifconv ]
  %s_6_3 = phi i32 [ %s_6_2, %4 ], [ %s_7_1, %_ifconv ]
  %s_7_2_12 = phi i32 [ %s_5_2, %4 ], [ %s_7_3_14, %_ifconv ]
  %s_7_4 = phi i32 [ %s_4_2, %4 ], [ %s_7_5, %_ifconv ]
  %s_7_6 = phi i32 [ %s_3_2, %4 ], [ %s_7_7, %_ifconv ]
  %s_7_8 = phi i32 [ %s_2_2, %4 ], [ %s_7_9, %_ifconv ]
  %s_7_27 = phi i32 [ %s_1_2, %4 ], [ %s_7_29, %_ifconv ]
  %s_7_10 = phi i32 [ %s_0_2, %4 ], [ %s_7_30, %_ifconv ]
  %i2 = phi i4 [ 0, %4 ], [ %i2_1, %_ifconv ]
  %i2_cast = zext i4 %i2 to i6
  %exitcond4 = icmp eq i4 %i2, -8
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i2_1 = add i4 %i2, 1
  br i1 %exitcond4, label %.preheader36.0, label %_ifconv

_ifconv:                                          ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str29) nounwind
  %tmp_23 = trunc i4 %i2 to i3
  %tmp_5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_23, i3 0)
  %tmp_6 = add i6 %i0_cast, %tmp_5
  %tmp_6_cast = zext i6 %tmp_6 to i32
  %b_a_addr = getelementptr [64 x i8]* @b_a, i32 0, i32 %tmp_6_cast
  %b_a_load = load i8* %b_a_addr, align 1
  %b_a_load_cast = sext i8 %b_a_load to i32
  %tmp_7 = add i6 %tmp_2, %i2_cast
  %tmp_7_cast = zext i6 %tmp_7 to i32
  %sc_FIFO_DCT_mA_addr = getelementptr [64 x i32]* %sc_FIFO_DCT_mA, i32 0, i32 %tmp_7_cast
  %sc_FIFO_DCT_mA_load = load i32* %sc_FIFO_DCT_mA_addr, align 4
  %s_0_5 = mul nsw i32 %b_a_load_cast, %sc_FIFO_DCT_mA_load
  %sel_tmp = icmp eq i3 %tmp_23, -2
  %sel_tmp2 = icmp eq i3 %tmp_23, -3
  %sel_tmp4 = icmp eq i3 %tmp_23, -4
  %sel_tmp6 = icmp eq i3 %tmp_23, 3
  %sel_tmp8 = icmp eq i3 %tmp_23, 2
  %sel_tmp1 = icmp eq i3 %tmp_23, 1
  %sel_tmp3 = icmp eq i3 %tmp_23, 0
  %or_cond = or i1 %sel_tmp3, %sel_tmp1
  %or_cond1 = or i1 %sel_tmp8, %sel_tmp6
  %or_cond2 = or i1 %sel_tmp4, %sel_tmp2
  %newSel = select i1 %sel_tmp, i32 %s_7_3, i32 %s_0_5
  %or_cond3 = or i1 %or_cond, %or_cond1
  %newSel1 = select i1 %or_cond2, i32 %s_7_3, i32 %newSel
  %s_7 = select i1 %or_cond3, i32 %s_7_3, i32 %newSel1
  %newSel3 = select i1 %sel_tmp, i32 %s_0_5, i32 %s_6_3
  %newSel4 = select i1 %or_cond2, i32 %s_6_3, i32 %newSel3
  %s_7_1 = select i1 %or_cond3, i32 %s_6_3, i32 %newSel4
  %newSel6 = select i1 %sel_tmp4, i32 %s_7_2_12, i32 %s_0_5
  %newSel7 = select i1 %or_cond2, i32 %newSel6, i32 %s_7_2_12
  %s_7_3_14 = select i1 %or_cond3, i32 %s_7_2_12, i32 %newSel7
  %newSel9 = select i1 %sel_tmp4, i32 %s_0_5, i32 %s_7_4
  %s_7_5 = select i1 %or_cond3, i32 %s_7_4, i32 %newSel9
  %newSel2 = select i1 %sel_tmp8, i32 %s_7_6, i32 %s_0_5
  %newSel5 = select i1 %or_cond, i32 %s_7_6, i32 %newSel2
  %s_7_7 = select i1 %or_cond3, i32 %newSel5, i32 %s_7_6
  %newSel8 = select i1 %sel_tmp8, i32 %s_0_5, i32 %s_7_8
  %s_7_9 = select i1 %or_cond, i32 %s_7_8, i32 %newSel8
  %s_7_28 = select i1 %sel_tmp1, i32 %s_0_5, i32 %s_7_27
  %s_7_29 = select i1 %sel_tmp3, i32 %s_7_27, i32 %s_7_28
  %s_7_30 = select i1 %sel_tmp3, i32 %s_0_5, i32 %s_7_10
  br label %5

.preheader36.0:                                   ; preds = %5
  %tmp15 = add i32 %s_7_2_12, %s_6_3
  %tmp16 = add i32 %s_7_4, %s_7_6
  %tmp17 = add i32 %tmp16, %tmp15
  %tmp18 = add i32 %s_7_10, %s_7_8
  %tmp19 = add i32 %s_7_27, %s_7_3
  %tmp20 = add i32 %tmp19, %tmp18
  %s_0 = add nsw i32 %tmp20, %tmp17
  %tmp_3 = add i6 %tmp_2, %i0_cast
  %tmp_3_cast = zext i6 %tmp_3 to i32
  %a_addr_1 = getelementptr inbounds [64 x i32]* %a, i32 0, i32 %tmp_3_cast
  store i32 %s_0, i32* %a_addr_1, align 4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str28, i32 %tmp_18)
  br label %3

.preheader35:                                     ; preds = %.preheader.0, %.preheader35.preheader
  %s_7_5_16 = phi i32 [ %s_7_2, %.preheader35.preheader ], [ %s_7_6_19, %.preheader.0 ]
  %s_6_5 = phi i32 [ %s_6_2, %.preheader35.preheader ], [ %s_6_6, %.preheader.0 ]
  %s_5_5 = phi i32 [ %s_5_2, %.preheader35.preheader ], [ %s_7_32, %.preheader.0 ]
  %s_4_5 = phi i32 [ %s_4_2, %.preheader35.preheader ], [ %s_7_11, %.preheader.0 ]
  %s_3_5 = phi i32 [ %s_3_2, %.preheader35.preheader ], [ %s_7_12, %.preheader.0 ]
  %s_2_5 = phi i32 [ %s_2_2, %.preheader35.preheader ], [ %s_7_13, %.preheader.0 ]
  %s_1_5 = phi i32 [ %s_1_2, %.preheader35.preheader ], [ %s_7_14, %.preheader.0 ]
  %s_0_5_17 = phi i32 [ %s_0_2, %.preheader35.preheader ], [ %s_0_2_21, %.preheader.0 ]
  %i1_1 = phi i4 [ 0, %.preheader35.preheader ], [ %i1_3, %.preheader.0 ]
  %i1_1_cast = zext i4 %i1_1 to i6
  %exitcond3 = icmp eq i4 %i1_1, -8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i1_3 = add i4 %i1_1, 1
  br i1 %exitcond3, label %8, label %6

; <label>:6                                       ; preds = %.preheader35
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str31) nounwind
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str31)
  %tmp_22 = trunc i4 %i1_1 to i3
  %tmp_4 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_22, i3 0)
  br label %7

; <label>:7                                       ; preds = %_ifconv112, %6
  %s_7_6_19 = phi i32 [ %s_7_5_16, %6 ], [ %s_7_16, %_ifconv112 ]
  %s_6_6 = phi i32 [ %s_6_5, %6 ], [ %s_7_17, %_ifconv112 ]
  %s_7_32 = phi i32 [ %s_5_5, %6 ], [ %s_7_33, %_ifconv112 ]
  %s_7_11 = phi i32 [ %s_4_5, %6 ], [ %s_7_34, %_ifconv112 ]
  %s_7_12 = phi i32 [ %s_3_5, %6 ], [ %s_7_35, %_ifconv112 ]
  %s_7_13 = phi i32 [ %s_2_5, %6 ], [ %s_7_36, %_ifconv112 ]
  %s_7_14 = phi i32 [ %s_1_5, %6 ], [ %s_7_38, %_ifconv112 ]
  %s_7_15 = phi i32 [ %s_0_5_17, %6 ], [ %s_7_39, %_ifconv112 ]
  %i2_2 = phi i4 [ 0, %6 ], [ %i2_3, %_ifconv112 ]
  %i2_2_cast = zext i4 %i2_2 to i6
  %exitcond5 = icmp eq i4 %i2_2, -8
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i2_3 = add i4 %i2_2, 1
  br i1 %exitcond5, label %.preheader.0, label %_ifconv112

_ifconv112:                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str32) nounwind
  %tmp_30 = trunc i4 %i2_2 to i3
  %tmp_9 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_30, i3 0)
  %tmp_10 = add i6 %i0_cast, %tmp_9
  %tmp_10_cast = zext i6 %tmp_10 to i32
  %a_addr = getelementptr inbounds [64 x i32]* %a, i32 0, i32 %tmp_10_cast
  %a_load = load i32* %a_addr, align 4
  %tmp_11 = add i6 %tmp_4, %i2_2_cast
  %tmp_11_cast = zext i6 %tmp_11 to i32
  %b_addr = getelementptr [64 x i8]* @b, i32 0, i32 %tmp_11_cast
  %b_load = load i8* %b_addr, align 1
  %b_load_cast = sext i8 %b_load to i32
  %s_0_6 = mul nsw i32 %a_load, %b_load_cast
  %sel_tmp7 = icmp eq i3 %tmp_30, -2
  %sel_tmp9 = icmp eq i3 %tmp_30, -3
  %sel_tmp5 = icmp eq i3 %tmp_30, -4
  %sel_tmp10 = icmp eq i3 %tmp_30, 3
  %sel_tmp11 = icmp eq i3 %tmp_30, 2
  %sel_tmp12 = icmp eq i3 %tmp_30, 1
  %sel_tmp13 = icmp eq i3 %tmp_30, 0
  %or_cond4 = or i1 %sel_tmp13, %sel_tmp12
  %or_cond5 = or i1 %sel_tmp11, %sel_tmp10
  %or_cond6 = or i1 %sel_tmp5, %sel_tmp9
  %newSel10 = select i1 %sel_tmp7, i32 %s_7_6_19, i32 %s_0_6
  %or_cond7 = or i1 %or_cond4, %or_cond5
  %newSel11 = select i1 %or_cond6, i32 %s_7_6_19, i32 %newSel10
  %s_7_16 = select i1 %or_cond7, i32 %s_7_6_19, i32 %newSel11
  %newSel12 = select i1 %sel_tmp7, i32 %s_0_6, i32 %s_6_6
  %newSel13 = select i1 %or_cond6, i32 %s_6_6, i32 %newSel12
  %s_7_17 = select i1 %or_cond7, i32 %s_6_6, i32 %newSel13
  %newSel14 = select i1 %sel_tmp5, i32 %s_7_32, i32 %s_0_6
  %newSel15 = select i1 %or_cond6, i32 %newSel14, i32 %s_7_32
  %s_7_33 = select i1 %or_cond7, i32 %s_7_32, i32 %newSel15
  %newSel16 = select i1 %sel_tmp5, i32 %s_0_6, i32 %s_7_11
  %s_7_34 = select i1 %or_cond7, i32 %s_7_11, i32 %newSel16
  %newSel17 = select i1 %sel_tmp11, i32 %s_7_12, i32 %s_0_6
  %newSel18 = select i1 %or_cond4, i32 %s_7_12, i32 %newSel17
  %s_7_35 = select i1 %or_cond7, i32 %newSel18, i32 %s_7_12
  %newSel19 = select i1 %sel_tmp11, i32 %s_0_6, i32 %s_7_13
  %s_7_36 = select i1 %or_cond4, i32 %s_7_13, i32 %newSel19
  %s_7_37 = select i1 %sel_tmp12, i32 %s_0_6, i32 %s_7_14
  %s_7_38 = select i1 %sel_tmp13, i32 %s_7_14, i32 %s_7_37
  %s_7_39 = select i1 %sel_tmp13, i32 %s_0_6, i32 %s_7_15
  br label %7

.preheader.0:                                     ; preds = %7
  %tmp21 = add i32 %s_7_32, %s_6_6
  %tmp22 = add i32 %s_7_11, %s_7_12
  %tmp23 = add i32 %tmp22, %tmp21
  %tmp24 = add i32 %s_7_15, %s_7_13
  %tmp25 = add i32 %s_7_14, %s_7_6_19
  %tmp26 = add i32 %tmp25, %tmp24
  %s_0_2_21 = add nsw i32 %tmp26, %tmp23
  %tmp_8 = add i6 %i0_cast, %tmp_4
  %tmp_8_cast = zext i6 %tmp_8 to i32
  %sc_FIFO_DCT_mB_addr = getelementptr [64 x i32]* %sc_FIFO_DCT_mB, i32 0, i32 %tmp_8_cast
  store i32 %s_0_2_21, i32* %sc_FIFO_DCT_mB_addr, align 4
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %s_0_2_21, i32 31)
  %p_neg = sub i32 0, %s_0_2_21
  %tmp_24 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %p_neg, i32 19, i32 31)
  %p_lshr_cast = zext i13 %tmp_24 to i14
  %p_neg_t = sub i14 0, %p_lshr_cast
  %tmp_25 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %s_0_2_21, i32 19, i32 31)
  %p_lshr_f_cast = zext i13 %tmp_25 to i14
  %tmp_13 = select i1 %tmp_29, i14 %p_neg_t, i14 %p_lshr_f_cast
  %tmp_13_cast = sext i14 %tmp_13 to i15
  %tmp_15 = add i15 %tmp_13_cast, 127
  %tmp_15_cast = sext i15 %tmp_15 to i32
  %tmp_16 = add i6 %tmp_1, %i1_1_cast
  %tmp_16_cast = zext i6 %tmp_16 to i32
  %sc_FIFO_DCT_mC_addr = getelementptr [64 x i32]* %sc_FIFO_DCT_mC, i32 0, i32 %tmp_16_cast
  store i32 %tmp_15_cast, i32* %sc_FIFO_DCT_mC_addr, align 4
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str31, i32 %tmp_19)
  br label %.preheader35

; <label>:8                                       ; preds = %.preheader35
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str27, i32 %tmp_17)
  store i32 %s_7_5_16, i32* %s_7_25
  store i32 %s_6_5, i32* %s_7_24
  store i32 %s_5_5, i32* %s_7_23
  store i32 %s_4_5, i32* %s_7_22
  store i32 %s_3_5, i32* %s_7_21
  store i32 %s_2_5, i32* %s_7_20
  store i32 %s_1_5, i32* %s_7_19
  store i32 %s_0_5_17, i32* %s_0_1
  br label %1

_ZN7_ap_sc_7sc_core4waitEi.exit2:                 ; preds = %1
  %sc_FIFO_DCT_exec_cnt_1 = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %sc_FIFO_DCT_exec_cnt)
  %tmp_s = add nsw i32 %sc_FIFO_DCT_exec_cnt_1, 1
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %sc_FIFO_DCT_exec_cnt, i32 %tmp_s)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_DCT, i1 true)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_working, i1 false)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_14 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %s_done)
  call void (...)* @_ssdm_op_Poll(i1 %tmp_14)
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %s_DCT, i1 false)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
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

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecChannel(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak void @_ssdm_op_Poll(...) nounwind {
entry:
  ret void
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i13
  ret i13 %empty_24
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i8P(i8*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i8(i8* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_25 = and i32 %0, %empty
  %empty_26 = icmp ne i32 %empty_25, 0
  ret i1 %empty_26
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_27 = zext i3 %1 to i6
  %empty_28 = shl i6 %empty, 3
  %empty_29 = or i6 %empty_28, %empty_27
  ret i6 %empty_29
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i1 @_autotb_FifoCanRead_i8(i8*)

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !0, !7, !7, !13, !0, !15, !18, !24, !0, !26, !29, !0, !0, !31, !34, !0, !0, !0, !0, !36, !0, !0, !38, !40, !40, !45, !45, !47, !0, !0, !0, !0, !0, !0, !0, !0, !48, !48, !0, !0, !0, !0, !48, !48, !0, !0, !0, !0, !0, !0, !50}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!52, !59, !64, !69}

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
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"t"}
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<8> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !25, metadata !6}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !28, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"v2"}
!29 = metadata !{null, metadata !19, metadata !20, metadata !30, metadata !22, metadata !23, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &", metadata !"const _Bool &"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<8> &"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !25, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_uint<8> &"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !33, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"volatile const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !33, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!40 = metadata !{null, metadata !41, metadata !9, metadata !42, metadata !43, metadata !44, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !""}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !44, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !12, metadata !6}
!48 = metadata !{null, metadata !41, metadata !9, metadata !42, metadata !43, metadata !49, metadata !6}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"name_"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !51, metadata !6}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!52 = metadata !{metadata !53, i1* @sc_FIFO_DCT_ssdm_thread_M_data_out}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"sc_FIFO_DCT::__ssdm_thread_M_data_out", metadata !57, metadata !"bool", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, i32 1}
!59 = metadata !{metadata !60, i1* @sc_FIFO_DCT_ssdm_thread_M_buffering}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"sc_FIFO_DCT::__ssdm_thread_M_buffering", metadata !57, metadata !"bool", i32 0, i32 0}
!64 = metadata !{metadata !65, i1* @sc_FIFO_DCT_ssdm_thread_M_DCT}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"sc_FIFO_DCT::__ssdm_thread_M_DCT", metadata !57, metadata !"bool", i32 0, i32 0}
!69 = metadata !{metadata !70, [1 x i32]* @llvm_global_ctors_0}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 31, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"llvm.global_ctors.0", metadata !57, metadata !"", i32 0, i32 31}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"sc_FIFO_DCT.clock.m_if.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 0, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"sc_FIFO_DCT.reset.m_if.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 0, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"sc_FIFO_DCT.enable.m_if.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 7, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"sc_FIFO_DCT.dout.m_if.Val.V", metadata !57, metadata !"uint8", i32 0, i32 7}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 7, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"sc_FIFO_DCT.din.m_if.Val.V", metadata !57, metadata !"uint8", i32 0, i32 7}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"sc_FIFO_DCT.mA", metadata !98, metadata !"int", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 63, i32 1}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 31, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"sc_FIFO_DCT.mB", metadata !98, metadata !"int", i32 0, i32 31}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"sc_FIFO_DCT.mC", metadata !98, metadata !"int", i32 0, i32 31}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 31, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"sc_FIFO_DCT.exec_cnt", metadata !57, metadata !"int", i32 0, i32 31}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 0, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"sc_FIFO_DCT.s_buffering.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 0, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"sc_FIFO_DCT.s_buffered.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 0, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"sc_FIFO_DCT.s_working.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 0, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"sc_FIFO_DCT.s_DCT.Val", metadata !57, metadata !"bool", i32 0, i32 0}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 0, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"sc_FIFO_DCT.s_done.Val", metadata !57, metadata !"bool", i32 0, i32 0}
