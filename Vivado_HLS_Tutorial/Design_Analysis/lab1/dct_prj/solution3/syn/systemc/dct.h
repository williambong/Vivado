// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_dct_2d.h"
#include "dct_dct_2d_col_inbuf.h"
#include "dct_dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_dct_2d_col_inbuf* buf_2d_in_U;
    dct_dct_2d_row_outbuf* buf_2d_out_U;
    dct_dct_2d* grp_dct_dct_2d_fu_198;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_22;
    sc_signal< sc_lv<7> > indvar_flatten_reg_132;
    sc_signal< sc_lv<4> > r_i_reg_143;
    sc_signal< sc_lv<4> > c_i_reg_154;
    sc_signal< sc_lv<7> > indvar_flatten1_reg_165;
    sc_signal< sc_lv<4> > r_i2_reg_176;
    sc_signal< sc_lv<4> > c_i6_reg_187;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_220_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_417;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_61;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_226_p2;
    sc_signal< sc_lv<4> > c_i_mid2_fu_238_p3;
    sc_signal< sc_lv<4> > c_i_mid2_reg_426;
    sc_signal< sc_lv<4> > r_i_mid2_fu_252_p3;
    sc_signal< sc_lv<4> > r_i_mid2_reg_431;
    sc_signal< sc_lv<4> > c_fu_287_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_318_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_447;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp1_stg0_fsm_4;
    sc_signal< bool > ap_sig_bdd_89;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next1_fu_324_p2;
    sc_signal< sc_lv<4> > r_i2_mid2_fu_350_p3;
    sc_signal< sc_lv<4> > r_i2_mid2_reg_456;
    sc_signal< sc_lv<6> > tmp_9_i_fu_401_p2;
    sc_signal< sc_lv<6> > tmp_9_i_reg_466;
    sc_signal< sc_lv<4> > c_1_fu_407_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_3;
    sc_signal< bool > ap_sig_bdd_120;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_ap_done;
    sc_signal< sc_lv<6> > buf_2d_in_address0;
    sc_signal< sc_logic > buf_2d_in_ce0;
    sc_signal< sc_logic > buf_2d_in_we0;
    sc_signal< sc_lv<16> > buf_2d_in_d0;
    sc_signal< sc_lv<16> > buf_2d_in_q0;
    sc_signal< sc_lv<6> > buf_2d_in_address1;
    sc_signal< sc_logic > buf_2d_in_ce1;
    sc_signal< sc_lv<16> > buf_2d_in_q1;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_lv<16> > buf_2d_out_d0;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_ap_start;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_ap_idle;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_dct_2d_fu_198_in_block_address0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_in_block_ce0;
    sc_signal< sc_lv<16> > grp_dct_dct_2d_fu_198_in_block_q0;
    sc_signal< sc_lv<6> > grp_dct_dct_2d_fu_198_in_block_address1;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_in_block_ce1;
    sc_signal< sc_lv<16> > grp_dct_dct_2d_fu_198_in_block_q1;
    sc_signal< sc_lv<6> > grp_dct_dct_2d_fu_198_out_block_address0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_out_block_ce0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_dct_2d_fu_198_out_block_d0;
    sc_signal< sc_lv<4> > r_i_phi_fu_147_p4;
    sc_signal< sc_lv<4> > r_i2_phi_fu_180_p4;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_198_ap_start_ap_start_reg;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_2;
    sc_signal< bool > ap_sig_bdd_188;
    sc_signal< sc_lv<64> > tmp_6_i_fu_282_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_313_p1;
    sc_signal< sc_lv<64> > tmp_5_fu_396_p1;
    sc_signal< sc_lv<64> > tmp_3_i_fu_413_p1;
    sc_signal< sc_lv<1> > exitcond_i_fu_232_p2;
    sc_signal< sc_lv<4> > r_fu_246_p2;
    sc_signal< sc_lv<3> > tmp_fu_260_p1;
    sc_signal< sc_lv<6> > c_i_cast6_fu_272_p1;
    sc_signal< sc_lv<6> > tmp_i_fu_264_p3;
    sc_signal< sc_lv<6> > tmp_5_i_fu_276_p2;
    sc_signal< sc_lv<7> > tmp_1_fu_296_p3;
    sc_signal< sc_lv<8> > p_addr_cast_fu_303_p1;
    sc_signal< sc_lv<8> > tmp_7_i_trn_cast_fu_293_p1;
    sc_signal< sc_lv<8> > p_addr1_fu_307_p2;
    sc_signal< sc_lv<1> > exitcond_i1_fu_330_p2;
    sc_signal< sc_lv<4> > r_s_fu_344_p2;
    sc_signal< sc_lv<3> > tmp_3_fu_358_p1;
    sc_signal< sc_lv<4> > c_i6_mid2_fu_336_p3;
    sc_signal< sc_lv<7> > tmp_4_fu_378_p3;
    sc_signal< sc_lv<8> > p_addr2_cast_fu_386_p1;
    sc_signal< sc_lv<8> > tmp_8_i_trn_cast_fu_374_p1;
    sc_signal< sc_lv<8> > p_addr3_fu_390_p2;
    sc_signal< sc_lv<6> > c_i6_cast2_fu_370_p1;
    sc_signal< sc_lv<6> > tmp_i5_fu_362_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_5;
    sc_signal< bool > ap_sig_bdd_386;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_st1_fsm_0;
    static const sc_lv<6> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<6> ap_ST_st4_fsm_2;
    static const sc_lv<6> ap_ST_st5_fsm_3;
    static const sc_lv<6> ap_ST_pp1_stg0_fsm_4;
    static const sc_lv<6> ap_ST_st8_fsm_5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_120();
    void thread_ap_sig_bdd_188();
    void thread_ap_sig_bdd_22();
    void thread_ap_sig_bdd_386();
    void thread_ap_sig_bdd_61();
    void thread_ap_sig_bdd_89();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_pp1_stg0_fsm_4();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st4_fsm_2();
    void thread_ap_sig_cseq_ST_st5_fsm_3();
    void thread_ap_sig_cseq_ST_st8_fsm_5();
    void thread_buf_2d_in_address0();
    void thread_buf_2d_in_address1();
    void thread_buf_2d_in_ce0();
    void thread_buf_2d_in_ce1();
    void thread_buf_2d_in_d0();
    void thread_buf_2d_in_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_d0();
    void thread_buf_2d_out_we0();
    void thread_c_1_fu_407_p2();
    void thread_c_fu_287_p2();
    void thread_c_i6_cast2_fu_370_p1();
    void thread_c_i6_mid2_fu_336_p3();
    void thread_c_i_cast6_fu_272_p1();
    void thread_c_i_mid2_fu_238_p3();
    void thread_exitcond_flatten1_fu_318_p2();
    void thread_exitcond_flatten_fu_220_p2();
    void thread_exitcond_i1_fu_330_p2();
    void thread_exitcond_i_fu_232_p2();
    void thread_grp_dct_dct_2d_fu_198_ap_start();
    void thread_grp_dct_dct_2d_fu_198_in_block_q0();
    void thread_grp_dct_dct_2d_fu_198_in_block_q1();
    void thread_indvar_flatten_next1_fu_324_p2();
    void thread_indvar_flatten_next_fu_226_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_addr1_fu_307_p2();
    void thread_p_addr2_cast_fu_386_p1();
    void thread_p_addr3_fu_390_p2();
    void thread_p_addr_cast_fu_303_p1();
    void thread_r_fu_246_p2();
    void thread_r_i2_mid2_fu_350_p3();
    void thread_r_i2_phi_fu_180_p4();
    void thread_r_i_mid2_fu_252_p3();
    void thread_r_i_phi_fu_147_p4();
    void thread_r_s_fu_344_p2();
    void thread_tmp_1_fu_296_p3();
    void thread_tmp_2_fu_313_p1();
    void thread_tmp_3_fu_358_p1();
    void thread_tmp_3_i_fu_413_p1();
    void thread_tmp_4_fu_378_p3();
    void thread_tmp_5_fu_396_p1();
    void thread_tmp_5_i_fu_276_p2();
    void thread_tmp_6_i_fu_282_p1();
    void thread_tmp_7_i_trn_cast_fu_293_p1();
    void thread_tmp_8_i_trn_cast_fu_374_p1();
    void thread_tmp_9_i_fu_401_p2();
    void thread_tmp_fu_260_p1();
    void thread_tmp_i5_fu_362_p3();
    void thread_tmp_i_fu_264_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
