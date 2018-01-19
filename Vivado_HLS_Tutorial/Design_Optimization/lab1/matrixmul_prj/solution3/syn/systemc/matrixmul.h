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
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<8> > a_q0;
    sc_out< sc_lv<4> > a_address1;
    sc_out< sc_logic > a_ce1;
    sc_in< sc_lv<8> > a_q1;
    sc_out< sc_lv<4> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<8> > b_q0;
    sc_out< sc_lv<4> > b_address1;
    sc_out< sc_logic > b_ce1;
    sc_in< sc_lv<8> > b_q1;
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
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_20;
    sc_signal< sc_lv<4> > indvar_flatten_reg_132;
    sc_signal< sc_lv<2> > i_reg_143;
    sc_signal< sc_lv<2> > j_reg_154;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_165_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_370;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_65;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<4> > indvar_flatten_next_fu_171_p2;
    sc_signal< sc_lv<4> > indvar_flatten_next_reg_374;
    sc_signal< sc_lv<2> > j_mid2_fu_183_p3;
    sc_signal< sc_lv<2> > j_mid2_reg_379;
    sc_signal< sc_lv<2> > i_mid2_fu_197_p3;
    sc_signal< sc_lv<2> > i_mid2_reg_386;
    sc_signal< sc_lv<6> > p_addr_cast1_fu_231_p1;
    sc_signal< sc_lv<6> > p_addr_cast1_reg_391;
    sc_signal< sc_lv<6> > p_addr2_fu_281_p2;
    sc_signal< sc_lv<6> > p_addr2_reg_417;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg1_fsm_2;
    sc_signal< bool > ap_sig_bdd_99;
    sc_signal< sc_lv<16> > grp_fu_362_p3;
    sc_signal< sc_lv<16> > tmp1_reg_432;
    sc_signal< sc_lv<2> > j_1_fu_333_p2;
    sc_signal< sc_lv<2> > j_1_reg_437;
    sc_signal< sc_lv<4> > indvar_flatten_phi_fu_136_p4;
    sc_signal< sc_lv<2> > i_phi_fu_147_p4;
    sc_signal< sc_lv<2> > j_phi_fu_158_p4;
    sc_signal< sc_lv<64> > tmp_2_fu_239_p1;
    sc_signal< sc_lv<64> > tmp_4_fu_244_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_259_p1;
    sc_signal< sc_lv<64> > tmp_10_fu_270_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_303_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_314_p1;
    sc_signal< sc_lv<64> > tmp_1_fu_341_p1;
    sc_signal< sc_lv<16> > grp_fu_354_p3;
    sc_signal< sc_lv<1> > exitcond_fu_177_p2;
    sc_signal< sc_lv<2> > i_s_fu_191_p2;
    sc_signal< sc_lv<4> > tmp_fu_213_p3;
    sc_signal< sc_lv<5> > p_shl_cast_fu_221_p1;
    sc_signal< sc_lv<5> > tmp_trn_cast_fu_205_p1;
    sc_signal< sc_lv<5> > p_addr_fu_225_p2;
    sc_signal< sc_lv<32> > p_addr_cast_fu_235_p1;
    sc_signal< sc_lv<6> > p_addr1_fu_249_p2;
    sc_signal< sc_lv<32> > p_addr1_cast_fu_255_p1;
    sc_signal< sc_lv<4> > tmp_2_trn_cast1_fu_209_p1;
    sc_signal< sc_lv<4> > p_addr9_fu_264_p2;
    sc_signal< sc_lv<6> > tmp_2_trn_cast_fu_278_p1;
    sc_signal< sc_lv<6> > p_addr4_fu_294_p2;
    sc_signal< sc_lv<32> > p_addr4_cast_fu_299_p1;
    sc_signal< sc_lv<3> > tmp_2_trn_cast2_fu_275_p1;
    sc_signal< sc_lv<3> > p_addr3_fu_308_p2;
    sc_signal< sc_lv<8> > tmp_7_2_fu_327_p0;
    sc_signal< sc_lv<8> > tmp_7_2_fu_327_p1;
    sc_signal< sc_lv<32> > p_addr2_cast_fu_338_p1;
    sc_signal< sc_lv<8> > grp_fu_354_p0;
    sc_signal< sc_lv<8> > grp_fu_354_p1;
    sc_signal< sc_lv<16> > grp_fu_354_p2;
    sc_signal< sc_lv<8> > grp_fu_362_p0;
    sc_signal< sc_lv<8> > grp_fu_362_p1;
    sc_signal< sc_lv<16> > grp_fu_362_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_3;
    sc_signal< bool > ap_sig_bdd_278;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<4> ap_ST_pp0_stg1_fsm_2;
    static const sc_lv<4> ap_ST_st5_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<32> ap_const_lv32_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_address1();
    void thread_a_ce0();
    void thread_a_ce1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_20();
    void thread_ap_sig_bdd_278();
    void thread_ap_sig_bdd_65();
    void thread_ap_sig_bdd_99();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_pp0_stg1_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st5_fsm_3();
    void thread_b_address0();
    void thread_b_address1();
    void thread_b_ce0();
    void thread_b_ce1();
    void thread_exitcond_flatten_fu_165_p2();
    void thread_exitcond_fu_177_p2();
    void thread_grp_fu_354_p0();
    void thread_grp_fu_354_p1();
    void thread_grp_fu_354_p2();
    void thread_grp_fu_362_p0();
    void thread_grp_fu_362_p1();
    void thread_grp_fu_362_p2();
    void thread_i_mid2_fu_197_p3();
    void thread_i_phi_fu_147_p4();
    void thread_i_s_fu_191_p2();
    void thread_indvar_flatten_next_fu_171_p2();
    void thread_indvar_flatten_phi_fu_136_p4();
    void thread_j_1_fu_333_p2();
    void thread_j_mid2_fu_183_p3();
    void thread_j_phi_fu_158_p4();
    void thread_p_addr1_cast_fu_255_p1();
    void thread_p_addr1_fu_249_p2();
    void thread_p_addr2_cast_fu_338_p1();
    void thread_p_addr2_fu_281_p2();
    void thread_p_addr3_fu_308_p2();
    void thread_p_addr4_cast_fu_299_p1();
    void thread_p_addr4_fu_294_p2();
    void thread_p_addr9_fu_264_p2();
    void thread_p_addr_cast1_fu_231_p1();
    void thread_p_addr_cast_fu_235_p1();
    void thread_p_addr_fu_225_p2();
    void thread_p_shl_cast_fu_221_p1();
    void thread_res_address0();
    void thread_res_ce0();
    void thread_res_d0();
    void thread_res_we0();
    void thread_tmp_10_fu_270_p1();
    void thread_tmp_1_fu_341_p1();
    void thread_tmp_2_fu_239_p1();
    void thread_tmp_2_trn_cast1_fu_209_p1();
    void thread_tmp_2_trn_cast2_fu_275_p1();
    void thread_tmp_2_trn_cast_fu_278_p1();
    void thread_tmp_4_fu_244_p1();
    void thread_tmp_7_2_fu_327_p0();
    void thread_tmp_7_2_fu_327_p1();
    void thread_tmp_8_fu_303_p1();
    void thread_tmp_9_fu_314_p1();
    void thread_tmp_fu_213_p3();
    void thread_tmp_s_fu_259_p1();
    void thread_tmp_trn_cast_fu_205_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif