// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _duc_imf3_HH_
#define _duc_imf3_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "duc_mac_muladd_18s_18s_38ns_38_4.h"
#include "duc_imf3_c_3_0.h"
#include "duc_imf3_shift_reg_p0.h"
#include "duc_imf3_c_3_1.h"

namespace ap_rtl {

struct duc_imf3 : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<18> > x;
    sc_out< sc_lv<18> > ap_return;


    // Module declarations
    duc_imf3(sc_module_name name);
    SC_HAS_PROCESS(duc_imf3);

    ~duc_imf3();

    sc_trace_file* mVcdFile;

    duc_imf3_c_3_0* c_3_0_U;
    duc_imf3_shift_reg_p0* shift_reg_p0_U;
    duc_imf3_c_3_1* c_3_1_U;
    duc_imf3_shift_reg_p0* shift_reg_p1_U;
    duc_mac_muladd_18s_18s_38ns_38_4<1,4,18,18,38,38>* duc_mac_muladd_18s_18s_38ns_38_4_U4;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_26;
    sc_signal< sc_lv<6> > i_3;
    sc_signal< sc_lv<18> > in_3;
    sc_signal< sc_lv<6> > j;
    sc_signal< sc_lv<3> > c_3_0_address0;
    sc_signal< sc_logic > c_3_0_ce0;
    sc_signal< sc_lv<18> > c_3_0_q0;
    sc_signal< sc_lv<1> > init_3;
    sc_signal< sc_lv<4> > shift_reg_p0_address0;
    sc_signal< sc_logic > shift_reg_p0_ce0;
    sc_signal< sc_logic > shift_reg_p0_we0;
    sc_signal< sc_lv<38> > shift_reg_p0_d0;
    sc_signal< sc_lv<38> > shift_reg_p0_q0;
    sc_signal< sc_lv<3> > c_3_1_address0;
    sc_signal< sc_logic > c_3_1_ce0;
    sc_signal< sc_lv<1> > c_3_1_q0;
    sc_signal< sc_lv<4> > shift_reg_p1_address0;
    sc_signal< sc_logic > shift_reg_p1_ce0;
    sc_signal< sc_logic > shift_reg_p1_we0;
    sc_signal< sc_lv<38> > shift_reg_p1_d0;
    sc_signal< sc_lv<38> > shift_reg_p1_q0;
    sc_signal< sc_lv<6> > i_3_load_reg_345;
    sc_signal< sc_lv<1> > tmp_fu_136_p2;
    sc_signal< sc_lv<1> > tmp_reg_353;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_86;
    sc_signal< sc_lv<6> > inc_fu_152_p2;
    sc_signal< sc_lv<6> > inc_reg_368;
    sc_signal< sc_lv<6> > p_Val2_s_reg_384;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_103;
    sc_signal< sc_lv<1> > ch_4_fu_166_p3;
    sc_signal< sc_lv<1> > ch_4_reg_390;
    sc_signal< sc_lv<18> > c_3_0_load_reg_395;
    sc_signal< sc_lv<1> > c_3_1_load_reg_405;
    sc_signal< sc_lv<1> > tmp_9_fu_187_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_415;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_120;
    sc_signal< sc_lv<38> > shift_reg_p0_load_reg_422;
    sc_signal< sc_lv<38> > shift_reg_p1_load_reg_437;
    sc_signal< sc_lv<35> > mt_fu_211_p2;
    sc_signal< sc_lv<35> > mt_reg_442;
    sc_signal< sc_lv<38> > tmp_3_fu_226_p3;
    sc_signal< sc_lv<38> > tmp_3_reg_447;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_141;
    sc_signal< sc_lv<38> > tmp_4_fu_233_p3;
    sc_signal< sc_lv<38> > tmp_4_reg_452;
    sc_signal< sc_lv<35> > m_1_fu_240_p3;
    sc_signal< sc_lv<35> > m_1_reg_457;
    sc_signal< sc_lv<38> > acc1_fu_249_p2;
    sc_signal< sc_lv<38> > acc1_reg_462;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_bdd_154;
    sc_signal< sc_lv<18> > tmp_15_reg_467;
    sc_signal< sc_lv<38> > grp_fu_337_p3;
    sc_signal< sc_lv<38> > acc0_reg_472;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_bdd_167;
    sc_signal< sc_lv<18> > tmp_14_reg_477;
    sc_signal< sc_lv<18> > d_assign_reg_122;
    sc_signal< sc_lv<64> > tmp_s_fu_157_p1;
    sc_signal< sc_lv<64> > tmp_11_fu_181_p1;
    sc_signal< sc_lv<64> > tmp_13_fu_279_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_bdd_186;
    sc_signal< sc_lv<6> > inc_4_fu_325_p3;
    sc_signal< sc_lv<6> > tmp_1_fu_311_p3;
    sc_signal< sc_lv<1> > or_cond5_fu_295_p2;
    sc_signal< sc_lv<7> > tmp_10_fu_174_p3;
    sc_signal< sc_lv<35> > p_shl_fu_203_p3;
    sc_signal< sc_lv<35> > tmp_i_cast_fu_199_p1;
    sc_signal< sc_lv<1> > or_cond_fu_221_p2;
    sc_signal< sc_lv<38> > tmp_59_i6_fu_246_p1;
    sc_signal< sc_lv<7> > tmp_12_fu_273_p3;
    sc_signal< sc_lv<1> > tmp_7_fu_290_p2;
    sc_signal< sc_lv<6> > tmp_8_fu_306_p2;
    sc_signal< sc_lv<18> > grp_fu_337_p0;
    sc_signal< sc_lv<18> > grp_fu_337_p1;
    sc_signal< sc_lv<38> > grp_fu_337_p2;
    sc_signal< sc_logic > grp_fu_337_ce;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_st1_fsm_0;
    static const sc_lv<8> ap_ST_st2_fsm_1;
    static const sc_lv<8> ap_ST_st3_fsm_2;
    static const sc_lv<8> ap_ST_st4_fsm_3;
    static const sc_lv<8> ap_ST_st5_fsm_4;
    static const sc_lv<8> ap_ST_st6_fsm_5;
    static const sc_lv<8> ap_ST_st7_fsm_6;
    static const sc_lv<8> ap_ST_st8_fsm_7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_5;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<38> ap_const_lv38_0;
    static const sc_lv<35> ap_const_lv35_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<6> ap_const_lv6_F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_acc1_fu_249_p2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_bdd_103();
    void thread_ap_sig_bdd_120();
    void thread_ap_sig_bdd_141();
    void thread_ap_sig_bdd_154();
    void thread_ap_sig_bdd_167();
    void thread_ap_sig_bdd_186();
    void thread_ap_sig_bdd_26();
    void thread_ap_sig_bdd_86();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_c_3_0_address0();
    void thread_c_3_0_ce0();
    void thread_c_3_1_address0();
    void thread_c_3_1_ce0();
    void thread_ch_4_fu_166_p3();
    void thread_grp_fu_337_ce();
    void thread_grp_fu_337_p0();
    void thread_grp_fu_337_p1();
    void thread_grp_fu_337_p2();
    void thread_inc_4_fu_325_p3();
    void thread_inc_fu_152_p2();
    void thread_m_1_fu_240_p3();
    void thread_mt_fu_211_p2();
    void thread_or_cond5_fu_295_p2();
    void thread_or_cond_fu_221_p2();
    void thread_p_shl_fu_203_p3();
    void thread_shift_reg_p0_address0();
    void thread_shift_reg_p0_ce0();
    void thread_shift_reg_p0_d0();
    void thread_shift_reg_p0_we0();
    void thread_shift_reg_p1_address0();
    void thread_shift_reg_p1_ce0();
    void thread_shift_reg_p1_d0();
    void thread_shift_reg_p1_we0();
    void thread_tmp_10_fu_174_p3();
    void thread_tmp_11_fu_181_p1();
    void thread_tmp_12_fu_273_p3();
    void thread_tmp_13_fu_279_p1();
    void thread_tmp_1_fu_311_p3();
    void thread_tmp_3_fu_226_p3();
    void thread_tmp_4_fu_233_p3();
    void thread_tmp_59_i6_fu_246_p1();
    void thread_tmp_7_fu_290_p2();
    void thread_tmp_8_fu_306_p2();
    void thread_tmp_9_fu_187_p2();
    void thread_tmp_fu_136_p2();
    void thread_tmp_i_cast_fu_199_p1();
    void thread_tmp_s_fu_157_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
