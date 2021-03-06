// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _matrixmul_HH_
#define _matrixmul_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrixmul_mac_muladd_8s_8s_16s_16_1.h"

namespace ap_rtl {

struct matrixmul : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<2> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<24> > a_q0;
    sc_out< sc_lv<2> > a_address1;
    sc_out< sc_logic > a_ce1;
    sc_in< sc_lv<24> > a_q1;
    sc_out< sc_lv<2> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<24> > b_q0;
    sc_out< sc_lv<2> > b_address1;
    sc_out< sc_logic > b_ce1;
    sc_in< sc_lv<24> > b_q1;
    sc_out< sc_lv<4> > res_address0;
    sc_out< sc_logic > res_ce0;
    sc_out< sc_logic > res_we0;
    sc_out< sc_lv<16> > res_d0;
    sc_out< sc_lv<4> > res_address1;
    sc_out< sc_logic > res_ce1;
    sc_out< sc_logic > res_we1;
    sc_out< sc_lv<16> > res_d1;


    // Module declarations
    matrixmul(sc_module_name name);
    SC_HAS_PROCESS(matrixmul);

    ~matrixmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U0;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U1;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U2;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U3;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U4;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U5;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U6;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U7;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U8;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U9;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U10;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U11;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U12;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U13;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U14;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U15;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U16;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U17;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_0;
    sc_signal< bool > ap_sig_bdd_21;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg4_fsm_4;
    sc_signal< bool > ap_sig_bdd_39;
    sc_signal< sc_lv<8> > reg_244;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg1_fsm_1;
    sc_signal< bool > ap_sig_bdd_79;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg2_fsm_2;
    sc_signal< bool > ap_sig_bdd_87;
    sc_signal< sc_lv<8> > reg_248;
    sc_signal< sc_lv<16> > tmp_3_fu_256_p1;
    sc_signal< sc_lv<16> > tmp_3_reg_570;
    sc_signal< sc_lv<16> > tmp_8_fu_264_p1;
    sc_signal< sc_lv<16> > tmp_8_reg_575;
    sc_signal< sc_lv<16> > tmp_5_0_0_2_fu_268_p1;
    sc_signal< sc_lv<16> > tmp_5_0_0_2_reg_581;
    sc_signal< sc_lv<16> > tmp_6_0_0_2_fu_272_p1;
    sc_signal< sc_lv<16> > tmp_6_0_0_2_reg_586;
    sc_signal< sc_lv<16> > grp_fu_542_p3;
    sc_signal< sc_lv<16> > tmp_reg_592;
    sc_signal< sc_lv<16> > tmp_6_0_1_fu_286_p1;
    sc_signal< sc_lv<16> > tmp_6_0_1_reg_597;
    sc_signal< sc_lv<8> > tmp_2_reg_603;
    sc_signal< sc_lv<16> > tmp_6_0_1_2_fu_310_p1;
    sc_signal< sc_lv<16> > tmp_6_0_1_2_reg_608;
    sc_signal< sc_lv<16> > grp_fu_534_p3;
    sc_signal< sc_lv<16> > tmp1_reg_614;
    sc_signal< sc_lv<8> > tmp_19_fu_320_p1;
    sc_signal< sc_lv<8> > tmp_19_reg_624;
    sc_signal< sc_lv<8> > tmp_13_reg_629;
    sc_signal< sc_lv<8> > tmp_14_reg_634;
    sc_signal< sc_lv<16> > tmp_5_0_0_1_fu_344_p1;
    sc_signal< sc_lv<16> > tmp_5_0_0_1_reg_644;
    sc_signal< sc_lv<16> > tmp_6_0_0_1_fu_348_p1;
    sc_signal< sc_lv<16> > tmp_6_0_0_1_reg_649;
    sc_signal< sc_lv<16> > tmp_6_0_1_1_fu_352_p1;
    sc_signal< sc_lv<16> > tmp_6_0_1_1_reg_655;
    sc_signal< sc_lv<16> > tmp_6_0_2_fu_359_p1;
    sc_signal< sc_lv<16> > tmp_6_0_2_reg_661;
    sc_signal< sc_lv<16> > tmp_6_0_2_2_fu_363_p1;
    sc_signal< sc_lv<16> > tmp_6_0_2_2_reg_667;
    sc_signal< sc_lv<16> > grp_fu_506_p3;
    sc_signal< sc_lv<16> > tmp2_reg_673;
    sc_signal< sc_lv<16> > tmp_5_1_fu_372_p1;
    sc_signal< sc_lv<16> > tmp_5_1_reg_678;
    sc_signal< sc_lv<16> > tmp_5_1_0_2_fu_375_p1;
    sc_signal< sc_lv<16> > tmp_5_1_0_2_reg_684;
    sc_signal< sc_lv<16> > grp_fu_426_p3;
    sc_signal< sc_lv<16> > tmp3_reg_690;
    sc_signal< sc_lv<8> > tmp_20_fu_383_p1;
    sc_signal< sc_lv<8> > tmp_20_reg_695;
    sc_signal< sc_lv<8> > grp_fu_224_p4;
    sc_signal< sc_lv<8> > tmp_17_reg_700;
    sc_signal< sc_lv<16> > tmp_6_0_2_1_fu_387_p1;
    sc_signal< sc_lv<16> > tmp_6_0_2_1_reg_705;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg3_fsm_3;
    sc_signal< bool > ap_sig_bdd_161;
    sc_signal< sc_lv<16> > tmp_5_1_0_1_fu_391_p1;
    sc_signal< sc_lv<16> > tmp_5_1_0_1_reg_711;
    sc_signal< sc_lv<16> > grp_fu_520_p3;
    sc_signal< sc_lv<16> > tmp4_reg_717;
    sc_signal< sc_lv<16> > grp_fu_493_p3;
    sc_signal< sc_lv<16> > tmp5_reg_722;
    sc_signal< sc_lv<16> > tmp_5_2_fu_402_p1;
    sc_signal< sc_lv<16> > tmp_5_2_reg_727;
    sc_signal< sc_lv<16> > tmp_5_2_0_2_fu_405_p1;
    sc_signal< sc_lv<16> > tmp_5_2_0_2_reg_732;
    sc_signal< sc_lv<16> > grp_fu_453_p3;
    sc_signal< sc_lv<16> > tmp6_reg_737;
    sc_signal< sc_lv<16> > grp_fu_499_p3;
    sc_signal< sc_lv<16> > tmp7_reg_742;
    sc_signal< sc_lv<16> > tmp_5_2_0_1_fu_418_p1;
    sc_signal< sc_lv<16> > tmp_5_2_0_1_reg_747;
    sc_signal< sc_lv<16> > grp_fu_441_p3;
    sc_signal< sc_lv<16> > tmp8_reg_752;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0_preg;
    sc_signal< sc_lv<16> > grp_fu_433_p3;
    sc_signal< sc_lv<16> > grp_fu_466_p3;
    sc_signal< sc_lv<16> > grp_fu_487_p3;
    sc_signal< sc_lv<16> > grp_fu_513_p3;
    sc_signal< sc_lv<16> > grp_fu_447_p3;
    sc_signal< sc_lv<16> > grp_fu_526_p3;
    sc_signal< sc_lv<16> > grp_fu_480_p3;
    sc_signal< sc_lv<16> > grp_fu_460_p3;
    sc_signal< sc_lv<16> > grp_fu_473_p3;
    sc_signal< sc_lv<8> > tmp_1_fu_252_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_260_p1;
    sc_signal< sc_lv<8> > grp_fu_234_p4;
    sc_signal< sc_lv<8> > tmp_7_0_0_2_fu_276_p0;
    sc_signal< sc_lv<8> > tmp_7_0_0_2_fu_276_p1;
    sc_signal< sc_lv<8> > tmp_15_fu_282_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_300_p4;
    sc_signal< sc_lv<8> > tmp_7_0_1_2_fu_314_p0;
    sc_signal< sc_lv<8> > tmp_7_0_1_2_fu_314_p1;
    sc_signal< sc_lv<8> > tmp_18_fu_355_p1;
    sc_signal< sc_lv<8> > tmp_7_0_2_2_fu_367_p0;
    sc_signal< sc_lv<8> > tmp_7_0_2_2_fu_367_p1;
    sc_signal< sc_lv<8> > tmp_7_1_0_2_fu_378_p0;
    sc_signal< sc_lv<8> > tmp_7_1_0_2_fu_378_p1;
    sc_signal< sc_lv<8> > tmp_7_1_1_2_fu_394_p0;
    sc_signal< sc_lv<8> > tmp_7_1_1_2_fu_394_p1;
    sc_signal< sc_lv<8> > tmp_7_1_2_2_fu_398_p0;
    sc_signal< sc_lv<8> > tmp_7_1_2_2_fu_398_p1;
    sc_signal< sc_lv<8> > tmp_7_2_0_2_fu_408_p0;
    sc_signal< sc_lv<8> > tmp_7_2_0_2_fu_408_p1;
    sc_signal< sc_lv<8> > tmp_7_2_1_2_fu_413_p0;
    sc_signal< sc_lv<8> > tmp_7_2_1_2_fu_413_p1;
    sc_signal< sc_lv<8> > tmp_7_2_2_2_fu_422_p0;
    sc_signal< sc_lv<8> > tmp_7_2_2_2_fu_422_p1;
    sc_signal< sc_lv<8> > grp_fu_426_p0;
    sc_signal< sc_lv<8> > grp_fu_426_p1;
    sc_signal< sc_lv<16> > grp_fu_426_p2;
    sc_signal< sc_lv<8> > grp_fu_433_p0;
    sc_signal< sc_lv<8> > grp_fu_433_p1;
    sc_signal< sc_lv<16> > grp_fu_433_p2;
    sc_signal< sc_lv<8> > grp_fu_441_p0;
    sc_signal< sc_lv<8> > grp_fu_441_p1;
    sc_signal< sc_lv<16> > grp_fu_441_p2;
    sc_signal< sc_lv<8> > grp_fu_447_p0;
    sc_signal< sc_lv<8> > grp_fu_447_p1;
    sc_signal< sc_lv<16> > grp_fu_447_p2;
    sc_signal< sc_lv<8> > grp_fu_453_p0;
    sc_signal< sc_lv<8> > grp_fu_453_p1;
    sc_signal< sc_lv<16> > grp_fu_453_p2;
    sc_signal< sc_lv<8> > grp_fu_460_p0;
    sc_signal< sc_lv<8> > grp_fu_460_p1;
    sc_signal< sc_lv<16> > grp_fu_460_p2;
    sc_signal< sc_lv<8> > grp_fu_466_p0;
    sc_signal< sc_lv<8> > grp_fu_466_p1;
    sc_signal< sc_lv<16> > grp_fu_466_p2;
    sc_signal< sc_lv<8> > grp_fu_473_p0;
    sc_signal< sc_lv<8> > grp_fu_473_p1;
    sc_signal< sc_lv<16> > grp_fu_473_p2;
    sc_signal< sc_lv<8> > grp_fu_480_p0;
    sc_signal< sc_lv<8> > grp_fu_480_p1;
    sc_signal< sc_lv<16> > grp_fu_480_p2;
    sc_signal< sc_lv<8> > grp_fu_487_p0;
    sc_signal< sc_lv<8> > grp_fu_487_p1;
    sc_signal< sc_lv<16> > grp_fu_487_p2;
    sc_signal< sc_lv<8> > grp_fu_493_p0;
    sc_signal< sc_lv<8> > grp_fu_493_p1;
    sc_signal< sc_lv<16> > grp_fu_493_p2;
    sc_signal< sc_lv<8> > grp_fu_499_p0;
    sc_signal< sc_lv<8> > grp_fu_499_p1;
    sc_signal< sc_lv<16> > grp_fu_499_p2;
    sc_signal< sc_lv<8> > grp_fu_506_p0;
    sc_signal< sc_lv<8> > grp_fu_506_p1;
    sc_signal< sc_lv<16> > grp_fu_506_p2;
    sc_signal< sc_lv<8> > grp_fu_513_p0;
    sc_signal< sc_lv<8> > grp_fu_513_p1;
    sc_signal< sc_lv<16> > grp_fu_513_p2;
    sc_signal< sc_lv<8> > grp_fu_520_p0;
    sc_signal< sc_lv<8> > grp_fu_520_p1;
    sc_signal< sc_lv<16> > grp_fu_520_p2;
    sc_signal< sc_lv<8> > grp_fu_526_p0;
    sc_signal< sc_lv<8> > grp_fu_526_p1;
    sc_signal< sc_lv<16> > grp_fu_526_p2;
    sc_signal< sc_lv<8> > grp_fu_534_p0;
    sc_signal< sc_lv<8> > grp_fu_534_p1;
    sc_signal< sc_lv<16> > grp_fu_534_p2;
    sc_signal< sc_lv<8> > grp_fu_542_p0;
    sc_signal< sc_lv<8> > grp_fu_542_p1;
    sc_signal< sc_lv<16> > grp_fu_542_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > ap_sig_pprstidle_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_pp0_stg0_fsm_0;
    static const sc_lv<5> ap_ST_pp0_stg1_fsm_1;
    static const sc_lv<5> ap_ST_pp0_stg2_fsm_2;
    static const sc_lv<5> ap_ST_pp0_stg3_fsm_3;
    static const sc_lv<5> ap_ST_pp0_stg4_fsm_4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_address1();
    void thread_a_ce0();
    void thread_a_ce1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_ppiten_pp0_it0();
    void thread_ap_sig_bdd_161();
    void thread_ap_sig_bdd_21();
    void thread_ap_sig_bdd_39();
    void thread_ap_sig_bdd_79();
    void thread_ap_sig_bdd_87();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_0();
    void thread_ap_sig_cseq_ST_pp0_stg1_fsm_1();
    void thread_ap_sig_cseq_ST_pp0_stg2_fsm_2();
    void thread_ap_sig_cseq_ST_pp0_stg3_fsm_3();
    void thread_ap_sig_cseq_ST_pp0_stg4_fsm_4();
    void thread_ap_sig_pprstidle_pp0();
    void thread_b_address0();
    void thread_b_address1();
    void thread_b_ce0();
    void thread_b_ce1();
    void thread_grp_fu_224_p4();
    void thread_grp_fu_234_p4();
    void thread_grp_fu_426_p0();
    void thread_grp_fu_426_p1();
    void thread_grp_fu_426_p2();
    void thread_grp_fu_433_p0();
    void thread_grp_fu_433_p1();
    void thread_grp_fu_433_p2();
    void thread_grp_fu_441_p0();
    void thread_grp_fu_441_p1();
    void thread_grp_fu_441_p2();
    void thread_grp_fu_447_p0();
    void thread_grp_fu_447_p1();
    void thread_grp_fu_447_p2();
    void thread_grp_fu_453_p0();
    void thread_grp_fu_453_p1();
    void thread_grp_fu_453_p2();
    void thread_grp_fu_460_p0();
    void thread_grp_fu_460_p1();
    void thread_grp_fu_460_p2();
    void thread_grp_fu_466_p0();
    void thread_grp_fu_466_p1();
    void thread_grp_fu_466_p2();
    void thread_grp_fu_473_p0();
    void thread_grp_fu_473_p1();
    void thread_grp_fu_473_p2();
    void thread_grp_fu_480_p0();
    void thread_grp_fu_480_p1();
    void thread_grp_fu_480_p2();
    void thread_grp_fu_487_p0();
    void thread_grp_fu_487_p1();
    void thread_grp_fu_487_p2();
    void thread_grp_fu_493_p0();
    void thread_grp_fu_493_p1();
    void thread_grp_fu_493_p2();
    void thread_grp_fu_499_p0();
    void thread_grp_fu_499_p1();
    void thread_grp_fu_499_p2();
    void thread_grp_fu_506_p0();
    void thread_grp_fu_506_p1();
    void thread_grp_fu_506_p2();
    void thread_grp_fu_513_p0();
    void thread_grp_fu_513_p1();
    void thread_grp_fu_513_p2();
    void thread_grp_fu_520_p0();
    void thread_grp_fu_520_p1();
    void thread_grp_fu_520_p2();
    void thread_grp_fu_526_p0();
    void thread_grp_fu_526_p1();
    void thread_grp_fu_526_p2();
    void thread_grp_fu_534_p0();
    void thread_grp_fu_534_p1();
    void thread_grp_fu_534_p2();
    void thread_grp_fu_542_p0();
    void thread_grp_fu_542_p1();
    void thread_grp_fu_542_p2();
    void thread_res_address0();
    void thread_res_address1();
    void thread_res_ce0();
    void thread_res_ce1();
    void thread_res_d0();
    void thread_res_d1();
    void thread_res_we0();
    void thread_res_we1();
    void thread_tmp_15_fu_282_p1();
    void thread_tmp_18_fu_355_p1();
    void thread_tmp_19_fu_320_p1();
    void thread_tmp_1_fu_252_p1();
    void thread_tmp_20_fu_383_p1();
    void thread_tmp_3_fu_256_p1();
    void thread_tmp_4_fu_260_p1();
    void thread_tmp_5_0_0_1_fu_344_p1();
    void thread_tmp_5_0_0_2_fu_268_p1();
    void thread_tmp_5_1_0_1_fu_391_p1();
    void thread_tmp_5_1_0_2_fu_375_p1();
    void thread_tmp_5_1_fu_372_p1();
    void thread_tmp_5_2_0_1_fu_418_p1();
    void thread_tmp_5_2_0_2_fu_405_p1();
    void thread_tmp_5_2_fu_402_p1();
    void thread_tmp_5_fu_300_p4();
    void thread_tmp_6_0_0_1_fu_348_p1();
    void thread_tmp_6_0_0_2_fu_272_p1();
    void thread_tmp_6_0_1_1_fu_352_p1();
    void thread_tmp_6_0_1_2_fu_310_p1();
    void thread_tmp_6_0_1_fu_286_p1();
    void thread_tmp_6_0_2_1_fu_387_p1();
    void thread_tmp_6_0_2_2_fu_363_p1();
    void thread_tmp_6_0_2_fu_359_p1();
    void thread_tmp_7_0_0_2_fu_276_p0();
    void thread_tmp_7_0_0_2_fu_276_p1();
    void thread_tmp_7_0_1_2_fu_314_p0();
    void thread_tmp_7_0_1_2_fu_314_p1();
    void thread_tmp_7_0_2_2_fu_367_p0();
    void thread_tmp_7_0_2_2_fu_367_p1();
    void thread_tmp_7_1_0_2_fu_378_p0();
    void thread_tmp_7_1_0_2_fu_378_p1();
    void thread_tmp_7_1_1_2_fu_394_p0();
    void thread_tmp_7_1_1_2_fu_394_p1();
    void thread_tmp_7_1_2_2_fu_398_p0();
    void thread_tmp_7_1_2_2_fu_398_p1();
    void thread_tmp_7_2_0_2_fu_408_p0();
    void thread_tmp_7_2_0_2_fu_408_p1();
    void thread_tmp_7_2_1_2_fu_413_p0();
    void thread_tmp_7_2_1_2_fu_413_p1();
    void thread_tmp_7_2_2_2_fu_422_p0();
    void thread_tmp_7_2_2_2_fu_422_p1();
    void thread_tmp_8_fu_264_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
