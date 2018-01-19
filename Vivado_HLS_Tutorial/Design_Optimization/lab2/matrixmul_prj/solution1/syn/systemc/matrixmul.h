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

#include "matrixmul_mux_3to1_sel2_8_1.h"
#include "matrixmul_mac_muladd_8s_8s_16s_16_1.h"

namespace ap_rtl {

struct matrixmul : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<24> > a_dout;
    sc_in< sc_logic > a_empty_n;
    sc_out< sc_logic > a_read;
    sc_in< sc_lv<24> > b_dout;
    sc_in< sc_logic > b_empty_n;
    sc_out< sc_logic > b_read;
    sc_out< sc_lv<16> > res_din;
    sc_in< sc_logic > res_full_n;
    sc_out< sc_logic > res_write;


    // Module declarations
    matrixmul(sc_module_name name);
    SC_HAS_PROCESS(matrixmul);

    ~matrixmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmul_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* matrixmul_mux_3to1_sel2_8_1_U0;
    matrixmul_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* matrixmul_mux_3to1_sel2_8_1_U1;
    matrixmul_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* matrixmul_mux_3to1_sel2_8_1_U2;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U3;
    matrixmul_mac_muladd_8s_8s_16s_16_1<1,1,8,8,16,16>* matrixmul_mac_muladd_8s_8s_16s_16_1_U4;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_19;
    sc_signal< sc_lv<4> > indvar_flatten_reg_133;
    sc_signal< sc_lv<2> > i_reg_144;
    sc_signal< sc_lv<2> > j_reg_155;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_166_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_669;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_51;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_lv<1> > tmp_3_reg_695;
    sc_signal< sc_lv<1> > tmp_reg_691;
    sc_signal< bool > ap_sig_bdd_67;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it2;
    sc_signal< bool > ap_sig_bdd_77;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_flatten_reg_669_pp0_it1;
    sc_signal< sc_lv<4> > indvar_flatten_next_fu_172_p2;
    sc_signal< sc_lv<2> > j_mid2_fu_184_p3;
    sc_signal< sc_lv<2> > j_mid2_reg_678;
    sc_signal< sc_lv<2> > ap_reg_ppstg_j_mid2_reg_678_pp0_it1;
    sc_signal< sc_lv<2> > i_mid2_fu_198_p3;
    sc_signal< sc_lv<2> > i_mid2_reg_686;
    sc_signal< sc_lv<1> > tmp_fu_206_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_212_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_3_reg_695_pp0_it1;
    sc_signal< sc_lv<2> > j_1_fu_218_p2;
    sc_signal< sc_lv<8> > a_row_0_1_fu_224_p1;
    sc_signal< sc_lv<8> > a_row_0_1_reg_713;
    sc_signal< sc_lv<8> > tmp_1_fu_507_p5;
    sc_signal< sc_lv<8> > tmp_1_reg_718;
    sc_signal< sc_lv<16> > grp_fu_580_p3;
    sc_signal< sc_lv<16> > tmp9_reg_723;
    sc_signal< sc_lv<2> > i_phi_fu_148_p4;
    sc_signal< sc_lv<16> > grp_fu_572_p3;
    sc_signal< sc_lv<8> > a_row_0_fu_66;
    sc_signal< sc_lv<8> > a_row_1_1_fu_70;
    sc_signal< sc_lv<8> > a_row_2_1_fu_74;
    sc_signal< sc_lv<8> > b_copy_0_2_3_fu_78;
    sc_signal< sc_lv<8> > b_copy_0_2_7_fu_324_p3;
    sc_signal< sc_lv<8> > b_copy_0_2_6_fu_82;
    sc_signal< sc_lv<8> > b_copy_0_2_5_fu_317_p3;
    sc_signal< sc_lv<8> > b_copy_0_2_1_fu_86;
    sc_signal< sc_lv<8> > b_copy_0_2_2_fu_302_p3;
    sc_signal< sc_lv<8> > b_copy_1_2_3_fu_90;
    sc_signal< sc_lv<8> > b_copy_1_2_7_fu_371_p3;
    sc_signal< sc_lv<8> > b_copy_1_2_6_fu_94;
    sc_signal< sc_lv<8> > b_copy_1_2_5_fu_364_p3;
    sc_signal< sc_lv<8> > b_copy_1_2_1_fu_98;
    sc_signal< sc_lv<8> > b_copy_1_2_2_fu_349_p3;
    sc_signal< sc_lv<8> > b_copy_2_2_3_fu_102;
    sc_signal< sc_lv<8> > b_copy_2_2_7_fu_418_p3;
    sc_signal< sc_lv<8> > b_copy_2_2_6_fu_106;
    sc_signal< sc_lv<8> > b_copy_2_2_5_fu_411_p3;
    sc_signal< sc_lv<8> > b_copy_2_2_1_fu_110;
    sc_signal< sc_lv<8> > b_copy_2_2_2_fu_396_p3;
    sc_signal< sc_lv<1> > exitcond_fu_178_p2;
    sc_signal< sc_lv<2> > i_s_fu_192_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_289_p2;
    sc_signal< sc_lv<8> > b_copy_0_2_9_fu_285_p1;
    sc_signal< sc_lv<8> > b_copy_0_2_fu_294_p3;
    sc_signal< sc_lv<8> > b_copy_0_2_4_fu_309_p3;
    sc_signal< sc_lv<8> > b_copy_1_2_9_fu_331_p4;
    sc_signal< sc_lv<8> > b_copy_1_2_fu_341_p3;
    sc_signal< sc_lv<8> > b_copy_1_2_4_fu_356_p3;
    sc_signal< sc_lv<8> > b_copy_2_2_9_fu_378_p4;
    sc_signal< sc_lv<8> > b_copy_2_2_fu_388_p3;
    sc_signal< sc_lv<8> > b_copy_2_2_4_fu_403_p3;
    sc_signal< sc_lv<8> > tmp_1_fu_507_p1;
    sc_signal< sc_lv<8> > tmp_1_fu_507_p2;
    sc_signal< sc_lv<8> > tmp_1_fu_507_p3;
    sc_signal< sc_lv<2> > tmp_1_fu_507_p4;
    sc_signal< sc_lv<8> > tmp_7_fu_522_p1;
    sc_signal< sc_lv<8> > tmp_7_fu_522_p2;
    sc_signal< sc_lv<8> > tmp_7_fu_522_p3;
    sc_signal< sc_lv<2> > tmp_7_fu_522_p4;
    sc_signal< sc_lv<8> > tmp_7_fu_522_p5;
    sc_signal< sc_lv<8> > tmp_10_1_fu_537_p0;
    sc_signal< sc_lv<8> > tmp_10_1_fu_537_p1;
    sc_signal< sc_lv<8> > tmp_8_fu_547_p1;
    sc_signal< sc_lv<8> > tmp_8_fu_547_p2;
    sc_signal< sc_lv<8> > tmp_8_fu_547_p3;
    sc_signal< sc_lv<2> > tmp_8_fu_547_p4;
    sc_signal< sc_lv<8> > tmp_8_fu_547_p5;
    sc_signal< sc_lv<8> > grp_fu_572_p0;
    sc_signal< sc_lv<8> > grp_fu_572_p1;
    sc_signal< sc_lv<16> > grp_fu_572_p2;
    sc_signal< sc_lv<8> > grp_fu_580_p0;
    sc_signal< sc_lv<8> > grp_fu_580_p1;
    sc_signal< sc_lv<16> > grp_fu_580_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_2;
    sc_signal< bool > ap_sig_bdd_412;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<3> ap_ST_st6_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
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
    void thread_a_read();
    void thread_a_row_0_1_fu_224_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_19();
    void thread_ap_sig_bdd_412();
    void thread_ap_sig_bdd_51();
    void thread_ap_sig_bdd_67();
    void thread_ap_sig_bdd_77();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st6_fsm_2();
    void thread_b_copy_0_2_2_fu_302_p3();
    void thread_b_copy_0_2_4_fu_309_p3();
    void thread_b_copy_0_2_5_fu_317_p3();
    void thread_b_copy_0_2_7_fu_324_p3();
    void thread_b_copy_0_2_9_fu_285_p1();
    void thread_b_copy_0_2_fu_294_p3();
    void thread_b_copy_1_2_2_fu_349_p3();
    void thread_b_copy_1_2_4_fu_356_p3();
    void thread_b_copy_1_2_5_fu_364_p3();
    void thread_b_copy_1_2_7_fu_371_p3();
    void thread_b_copy_1_2_9_fu_331_p4();
    void thread_b_copy_1_2_fu_341_p3();
    void thread_b_copy_2_2_2_fu_396_p3();
    void thread_b_copy_2_2_4_fu_403_p3();
    void thread_b_copy_2_2_5_fu_411_p3();
    void thread_b_copy_2_2_7_fu_418_p3();
    void thread_b_copy_2_2_9_fu_378_p4();
    void thread_b_copy_2_2_fu_388_p3();
    void thread_b_read();
    void thread_exitcond_flatten_fu_166_p2();
    void thread_exitcond_fu_178_p2();
    void thread_grp_fu_572_p0();
    void thread_grp_fu_572_p1();
    void thread_grp_fu_572_p2();
    void thread_grp_fu_580_p0();
    void thread_grp_fu_580_p1();
    void thread_grp_fu_580_p2();
    void thread_i_mid2_fu_198_p3();
    void thread_i_phi_fu_148_p4();
    void thread_i_s_fu_192_p2();
    void thread_indvar_flatten_next_fu_172_p2();
    void thread_j_1_fu_218_p2();
    void thread_j_mid2_fu_184_p3();
    void thread_res_din();
    void thread_res_write();
    void thread_sel_tmp_fu_289_p2();
    void thread_tmp_10_1_fu_537_p0();
    void thread_tmp_10_1_fu_537_p1();
    void thread_tmp_1_fu_507_p1();
    void thread_tmp_1_fu_507_p2();
    void thread_tmp_1_fu_507_p3();
    void thread_tmp_1_fu_507_p4();
    void thread_tmp_3_fu_212_p2();
    void thread_tmp_7_fu_522_p1();
    void thread_tmp_7_fu_522_p2();
    void thread_tmp_7_fu_522_p3();
    void thread_tmp_7_fu_522_p4();
    void thread_tmp_8_fu_547_p1();
    void thread_tmp_8_fu_547_p2();
    void thread_tmp_8_fu_547_p3();
    void thread_tmp_8_fu_547_p4();
    void thread_tmp_fu_206_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
