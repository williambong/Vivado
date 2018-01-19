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
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<2> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<24> > a_q0;
    sc_out< sc_lv<2> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<24> > b_q0;
    sc_out< sc_lv<4> > res_address0;
    sc_out< sc_logic > res_ce0;
    sc_out< sc_logic > res_we0;
    sc_out< sc_lv<16> > res_d0;


    // Module declarations
    matrixmul(sc_module_name name);
    SC_HAS_PROCESS(matrixmul);

    ~matrixmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U0;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U1;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_19;
    sc_signal< sc_lv<4> > indvar_flatten_reg_96;
    sc_signal< sc_lv<2> > i_reg_107;
    sc_signal< sc_lv<2> > j_reg_118;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_129_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_319;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_58;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_flatten_reg_319_pp0_it1;
    sc_signal< sc_lv<4> > indvar_flatten_next_fu_135_p2;
    sc_signal< sc_lv<2> > j_mid2_fu_147_p3;
    sc_signal< sc_lv<2> > j_mid2_reg_328;
    sc_signal< sc_lv<2> > ap_reg_ppstg_j_mid2_reg_328_pp0_it1;
    sc_signal< sc_lv<2> > i_mid2_fu_161_p3;
    sc_signal< sc_lv<2> > i_mid2_reg_333;
    sc_signal< sc_lv<2> > ap_reg_ppstg_i_mid2_reg_333_pp0_it1;
    sc_signal< sc_lv<2> > j_1_fu_179_p2;
    sc_signal< sc_lv<8> > tmp_9_reg_355;
    sc_signal< sc_lv<8> > tmp_8_reg_360;
    sc_signal< sc_lv<16> > grp_fu_311_p3;
    sc_signal< sc_lv<16> > tmp1_reg_365;
    sc_signal< sc_lv<2> > i_phi_fu_111_p4;
    sc_signal< sc_lv<64> > tmp_fu_169_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_174_p1;
    sc_signal< sc_lv<64> > tmp_5_fu_292_p1;
    sc_signal< sc_lv<16> > grp_fu_303_p3;
    sc_signal< sc_lv<1> > exitcond_fu_141_p2;
    sc_signal< sc_lv<2> > i_s_fu_155_p2;
    sc_signal< sc_lv<8> > tmp_6_fu_185_p1;
    sc_signal< sc_lv<8> > tmp_12_fu_193_p1;
    sc_signal< sc_lv<8> > tmp_7_fu_201_p0;
    sc_signal< sc_lv<8> > tmp_7_fu_201_p1;
    sc_signal< sc_lv<8> > tmp_10_fu_227_p4;
    sc_signal< sc_lv<8> > tmp_11_fu_241_p4;
    sc_signal< sc_lv<4> > tmp_1_fu_261_p3;
    sc_signal< sc_lv<5> > p_shl_cast_fu_268_p1;
    sc_signal< sc_lv<5> > tmp_trn_cast_fu_255_p1;
    sc_signal< sc_lv<5> > p_addr_fu_272_p2;
    sc_signal< sc_lv<6> > tmp_2_trn_cast_fu_258_p1;
    sc_signal< sc_lv<6> > p_addr_cast_fu_278_p1;
    sc_signal< sc_lv<6> > p_addr1_fu_282_p2;
    sc_signal< sc_lv<32> > p_addr1_cast_fu_288_p1;
    sc_signal< sc_lv<8> > grp_fu_303_p0;
    sc_signal< sc_lv<8> > grp_fu_303_p1;
    sc_signal< sc_lv<16> > grp_fu_303_p2;
    sc_signal< sc_lv<8> > grp_fu_311_p0;
    sc_signal< sc_lv<8> > grp_fu_311_p1;
    sc_signal< sc_lv<16> > grp_fu_311_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_2;
    sc_signal< bool > ap_sig_bdd_244;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<3> ap_ST_st5_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_true;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_19();
    void thread_ap_sig_bdd_244();
    void thread_ap_sig_bdd_58();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st5_fsm_2();
    void thread_b_address0();
    void thread_b_ce0();
    void thread_exitcond_flatten_fu_129_p2();
    void thread_exitcond_fu_141_p2();
    void thread_grp_fu_303_p0();
    void thread_grp_fu_303_p1();
    void thread_grp_fu_303_p2();
    void thread_grp_fu_311_p0();
    void thread_grp_fu_311_p1();
    void thread_grp_fu_311_p2();
    void thread_i_mid2_fu_161_p3();
    void thread_i_phi_fu_111_p4();
    void thread_i_s_fu_155_p2();
    void thread_indvar_flatten_next_fu_135_p2();
    void thread_j_1_fu_179_p2();
    void thread_j_mid2_fu_147_p3();
    void thread_p_addr1_cast_fu_288_p1();
    void thread_p_addr1_fu_282_p2();
    void thread_p_addr_cast_fu_278_p1();
    void thread_p_addr_fu_272_p2();
    void thread_p_shl_cast_fu_268_p1();
    void thread_res_address0();
    void thread_res_ce0();
    void thread_res_d0();
    void thread_res_we0();
    void thread_tmp_10_fu_227_p4();
    void thread_tmp_11_fu_241_p4();
    void thread_tmp_12_fu_193_p1();
    void thread_tmp_1_fu_261_p3();
    void thread_tmp_2_fu_174_p1();
    void thread_tmp_2_trn_cast_fu_258_p1();
    void thread_tmp_5_fu_292_p1();
    void thread_tmp_6_fu_185_p1();
    void thread_tmp_7_fu_201_p0();
    void thread_tmp_7_fu_201_p1();
    void thread_tmp_fu_169_p1();
    void thread_tmp_trn_cast_fu_255_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
