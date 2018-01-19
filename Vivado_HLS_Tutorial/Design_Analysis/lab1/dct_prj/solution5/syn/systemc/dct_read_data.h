// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _dct_read_data_HH_
#define _dct_read_data_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct dct_read_data : public sc_module {
    // Port declarations 42
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<3> > buf_0_address0;
    sc_out< sc_logic > buf_0_ce0;
    sc_out< sc_logic > buf_0_we0;
    sc_out< sc_lv<16> > buf_0_d0;
    sc_out< sc_lv<3> > buf_1_address0;
    sc_out< sc_logic > buf_1_ce0;
    sc_out< sc_logic > buf_1_we0;
    sc_out< sc_lv<16> > buf_1_d0;
    sc_out< sc_lv<3> > buf_2_address0;
    sc_out< sc_logic > buf_2_ce0;
    sc_out< sc_logic > buf_2_we0;
    sc_out< sc_lv<16> > buf_2_d0;
    sc_out< sc_lv<3> > buf_3_address0;
    sc_out< sc_logic > buf_3_ce0;
    sc_out< sc_logic > buf_3_we0;
    sc_out< sc_lv<16> > buf_3_d0;
    sc_out< sc_lv<3> > buf_4_address0;
    sc_out< sc_logic > buf_4_ce0;
    sc_out< sc_logic > buf_4_we0;
    sc_out< sc_lv<16> > buf_4_d0;
    sc_out< sc_lv<3> > buf_5_address0;
    sc_out< sc_logic > buf_5_ce0;
    sc_out< sc_logic > buf_5_we0;
    sc_out< sc_lv<16> > buf_5_d0;
    sc_out< sc_lv<3> > buf_6_address0;
    sc_out< sc_logic > buf_6_ce0;
    sc_out< sc_logic > buf_6_we0;
    sc_out< sc_lv<16> > buf_6_d0;
    sc_out< sc_lv<3> > buf_7_address0;
    sc_out< sc_logic > buf_7_ce0;
    sc_out< sc_logic > buf_7_we0;
    sc_out< sc_lv<16> > buf_7_d0;


    // Module declarations
    dct_read_data(sc_module_name name);
    SC_HAS_PROCESS(dct_read_data);

    ~dct_read_data();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_22;
    sc_signal< sc_lv<7> > indvar_flatten_reg_186;
    sc_signal< sc_lv<4> > r_reg_197;
    sc_signal< sc_lv<4> > c_reg_208;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_219_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_307;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_104;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_225_p2;
    sc_signal< sc_lv<4> > r_mid2_fu_251_p3;
    sc_signal< sc_lv<4> > r_mid2_reg_316;
    sc_signal< sc_lv<3> > tmp_7_fu_286_p1;
    sc_signal< sc_lv<3> > tmp_7_reg_327;
    sc_signal< sc_lv<4> > c_1_fu_290_p2;
    sc_signal< bool > ap_sig_bdd_128;
    sc_signal< sc_lv<4> > r_phi_fu_201_p4;
    sc_signal< sc_lv<64> > tmp_6_fu_281_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_296_p1;
    sc_signal< sc_lv<1> > exitcond_fu_231_p2;
    sc_signal< sc_lv<4> > r_s_fu_245_p2;
    sc_signal< sc_lv<3> > tmp_4_fu_259_p1;
    sc_signal< sc_lv<4> > c_mid2_fu_237_p3;
    sc_signal< sc_lv<6> > c_cast_fu_271_p1;
    sc_signal< sc_lv<6> > tmp_fu_263_p3;
    sc_signal< sc_lv<6> > tmp_5_fu_275_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_2;
    sc_signal< bool > ap_sig_bdd_250;
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
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_104();
    void thread_ap_sig_bdd_128();
    void thread_ap_sig_bdd_22();
    void thread_ap_sig_bdd_250();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st4_fsm_2();
    void thread_buf_0_address0();
    void thread_buf_0_ce0();
    void thread_buf_0_d0();
    void thread_buf_0_we0();
    void thread_buf_1_address0();
    void thread_buf_1_ce0();
    void thread_buf_1_d0();
    void thread_buf_1_we0();
    void thread_buf_2_address0();
    void thread_buf_2_ce0();
    void thread_buf_2_d0();
    void thread_buf_2_we0();
    void thread_buf_3_address0();
    void thread_buf_3_ce0();
    void thread_buf_3_d0();
    void thread_buf_3_we0();
    void thread_buf_4_address0();
    void thread_buf_4_ce0();
    void thread_buf_4_d0();
    void thread_buf_4_we0();
    void thread_buf_5_address0();
    void thread_buf_5_ce0();
    void thread_buf_5_d0();
    void thread_buf_5_we0();
    void thread_buf_6_address0();
    void thread_buf_6_ce0();
    void thread_buf_6_d0();
    void thread_buf_6_we0();
    void thread_buf_7_address0();
    void thread_buf_7_ce0();
    void thread_buf_7_d0();
    void thread_buf_7_we0();
    void thread_c_1_fu_290_p2();
    void thread_c_cast_fu_271_p1();
    void thread_c_mid2_fu_237_p3();
    void thread_exitcond_flatten_fu_219_p2();
    void thread_exitcond_fu_231_p2();
    void thread_indvar_flatten_next_fu_225_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_r_mid2_fu_251_p3();
    void thread_r_phi_fu_201_p4();
    void thread_r_s_fu_245_p2();
    void thread_tmp_4_fu_259_p1();
    void thread_tmp_5_fu_275_p2();
    void thread_tmp_6_fu_281_p1();
    void thread_tmp_7_fu_286_p1();
    void thread_tmp_fu_263_p3();
    void thread_tmp_s_fu_296_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
