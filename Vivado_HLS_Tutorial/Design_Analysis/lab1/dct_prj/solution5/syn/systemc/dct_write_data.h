// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _dct_write_data_HH_
#define _dct_write_data_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct dct_write_data : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > buf_r_address0;
    sc_out< sc_logic > buf_r_ce0;
    sc_in< sc_lv<16> > buf_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct_write_data(sc_module_name name);
    SC_HAS_PROCESS(dct_write_data);

    ~dct_write_data();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_22;
    sc_signal< sc_lv<7> > indvar_flatten_reg_71;
    sc_signal< sc_lv<4> > r_reg_82;
    sc_signal< sc_lv<4> > c_reg_93;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_104_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_203;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_55;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_110_p2;
    sc_signal< sc_lv<4> > r_mid2_fu_136_p3;
    sc_signal< sc_lv<4> > r_mid2_reg_212;
    sc_signal< sc_lv<6> > tmp_9_fu_187_p2;
    sc_signal< sc_lv<6> > tmp_9_reg_222;
    sc_signal< sc_lv<4> > c_1_fu_193_p2;
    sc_signal< bool > ap_sig_bdd_79;
    sc_signal< sc_lv<4> > r_phi_fu_86_p4;
    sc_signal< sc_lv<64> > tmp_4_fu_182_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_199_p1;
    sc_signal< sc_lv<1> > exitcond4_fu_116_p2;
    sc_signal< sc_lv<4> > r_s_fu_130_p2;
    sc_signal< sc_lv<3> > tmp_fu_144_p1;
    sc_signal< sc_lv<4> > c_mid2_fu_122_p3;
    sc_signal< sc_lv<7> > tmp_1_fu_164_p3;
    sc_signal< sc_lv<8> > p_addr_cast_fu_172_p1;
    sc_signal< sc_lv<8> > tmp_8_trn_cast_fu_160_p1;
    sc_signal< sc_lv<8> > p_addr1_fu_176_p2;
    sc_signal< sc_lv<6> > c_cast6_fu_156_p1;
    sc_signal< sc_lv<6> > tmp_s_fu_148_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_2;
    sc_signal< bool > ap_sig_bdd_164;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<3> ap_ST_st4_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_164();
    void thread_ap_sig_bdd_22();
    void thread_ap_sig_bdd_55();
    void thread_ap_sig_bdd_79();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st4_fsm_2();
    void thread_buf_r_address0();
    void thread_buf_r_ce0();
    void thread_c_1_fu_193_p2();
    void thread_c_cast6_fu_156_p1();
    void thread_c_mid2_fu_122_p3();
    void thread_exitcond4_fu_116_p2();
    void thread_exitcond_flatten_fu_104_p2();
    void thread_indvar_flatten_next_fu_110_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_addr1_fu_176_p2();
    void thread_p_addr_cast_fu_172_p1();
    void thread_r_mid2_fu_136_p3();
    void thread_r_phi_fu_86_p4();
    void thread_r_s_fu_130_p2();
    void thread_tmp_1_fu_164_p3();
    void thread_tmp_3_fu_199_p1();
    void thread_tmp_4_fu_182_p1();
    void thread_tmp_8_trn_cast_fu_160_p1();
    void thread_tmp_9_fu_187_p2();
    void thread_tmp_fu_144_p1();
    void thread_tmp_s_fu_148_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif