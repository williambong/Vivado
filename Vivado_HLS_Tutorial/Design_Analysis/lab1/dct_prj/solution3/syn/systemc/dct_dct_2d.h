// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _dct_dct_2d_HH_
#define _dct_dct_2d_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_dct_1d.h"
#include "dct_dct_2d_row_outbuf.h"
#include "dct_dct_2d_col_inbuf.h"

namespace ap_rtl {

struct dct_dct_2d : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > in_block_address0;
    sc_out< sc_logic > in_block_ce0;
    sc_in< sc_lv<16> > in_block_q0;
    sc_out< sc_lv<6> > in_block_address1;
    sc_out< sc_logic > in_block_ce1;
    sc_in< sc_lv<16> > in_block_q1;
    sc_out< sc_lv<6> > out_block_address0;
    sc_out< sc_logic > out_block_ce0;
    sc_out< sc_logic > out_block_we0;
    sc_out< sc_lv<16> > out_block_d0;


    // Module declarations
    dct_dct_2d(sc_module_name name);
    SC_HAS_PROCESS(dct_dct_2d);

    ~dct_dct_2d();

    sc_trace_file* mVcdFile;

    dct_dct_2d_row_outbuf* row_outbuf_U;
    dct_dct_2d_row_outbuf* col_outbuf_U;
    dct_dct_2d_col_inbuf* col_inbuf_U;
    dct_dct_1d* grp_dct_dct_1d_fu_223;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_26;
    sc_signal< sc_lv<7> > indvar_flatten_reg_145;
    sc_signal< sc_lv<4> > j_reg_156;
    sc_signal< sc_lv<4> > i_1_reg_167;
    sc_signal< sc_lv<7> > indvar_flatten2_reg_190;
    sc_signal< sc_lv<4> > j_1_reg_201;
    sc_signal< sc_lv<4> > i_3_reg_212;
    sc_signal< sc_lv<1> > exitcond5_fu_252_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_66;
    sc_signal< sc_lv<4> > i_4_fu_258_p2;
    sc_signal< sc_lv<4> > i_4_reg_476;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_264_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_481;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_3;
    sc_signal< bool > ap_sig_bdd_77;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_270_p2;
    sc_signal< sc_lv<4> > i_1_mid2_fu_282_p3;
    sc_signal< sc_lv<4> > i_1_mid2_reg_490;
    sc_signal< sc_lv<4> > j_mid2_fu_296_p3;
    sc_signal< sc_lv<4> > j_mid2_reg_495;
    sc_signal< sc_lv<4> > i_6_fu_331_p2;
    sc_signal< sc_lv<1> > exitcond2_fu_362_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_4;
    sc_signal< bool > ap_sig_bdd_105;
    sc_signal< sc_lv<4> > i_5_fu_368_p2;
    sc_signal< sc_lv<4> > i_5_reg_515;
    sc_signal< sc_lv<1> > exitcond_flatten2_fu_374_p2;
    sc_signal< sc_lv<1> > exitcond_flatten2_reg_520;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp1_stg0_fsm_6;
    sc_signal< bool > ap_sig_bdd_116;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next2_fu_380_p2;
    sc_signal< sc_lv<4> > i_3_mid2_fu_392_p3;
    sc_signal< sc_lv<4> > i_3_mid2_reg_529;
    sc_signal< sc_lv<4> > j_1_mid2_fu_406_p3;
    sc_signal< sc_lv<4> > j_1_mid2_reg_534;
    sc_signal< sc_lv<4> > i_7_fu_441_p2;
    sc_signal< sc_lv<6> > row_outbuf_address0;
    sc_signal< sc_logic > row_outbuf_ce0;
    sc_signal< sc_logic > row_outbuf_we0;
    sc_signal< sc_lv<16> > row_outbuf_d0;
    sc_signal< sc_lv<16> > row_outbuf_q0;
    sc_signal< sc_lv<6> > col_outbuf_address0;
    sc_signal< sc_logic > col_outbuf_ce0;
    sc_signal< sc_logic > col_outbuf_we0;
    sc_signal< sc_lv<16> > col_outbuf_d0;
    sc_signal< sc_lv<16> > col_outbuf_q0;
    sc_signal< sc_lv<6> > col_inbuf_address0;
    sc_signal< sc_logic > col_inbuf_ce0;
    sc_signal< sc_logic > col_inbuf_we0;
    sc_signal< sc_lv<16> > col_inbuf_d0;
    sc_signal< sc_lv<16> > col_inbuf_q0;
    sc_signal< sc_lv<6> > col_inbuf_address1;
    sc_signal< sc_logic > col_inbuf_ce1;
    sc_signal< sc_lv<16> > col_inbuf_q1;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_ap_start;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_ap_done;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_ap_idle;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_dct_1d_fu_223_src_address0;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_src_ce0;
    sc_signal< sc_lv<16> > grp_dct_dct_1d_fu_223_src_q0;
    sc_signal< sc_lv<6> > grp_dct_dct_1d_fu_223_src_address1;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_src_ce1;
    sc_signal< sc_lv<16> > grp_dct_dct_1d_fu_223_src_q1;
    sc_signal< sc_lv<4> > grp_dct_dct_1d_fu_223_tmp_1;
    sc_signal< sc_lv<6> > grp_dct_dct_1d_fu_223_dst_address0;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_dst_ce0;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_dst_we0;
    sc_signal< sc_lv<16> > grp_dct_dct_1d_fu_223_dst_d0;
    sc_signal< sc_lv<4> > grp_dct_dct_1d_fu_223_tmp_11;
    sc_signal< sc_lv<4> > i_reg_133;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_209;
    sc_signal< sc_lv<4> > j_phi_fu_160_p4;
    sc_signal< sc_lv<4> > i_2_reg_178;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_5;
    sc_signal< bool > ap_sig_bdd_228;
    sc_signal< sc_lv<4> > j_1_phi_fu_205_p4;
    sc_signal< sc_logic > grp_dct_dct_1d_fu_223_ap_start_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_6_fu_326_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_357_p1;
    sc_signal< sc_lv<64> > tmp_1_fu_436_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_467_p1;
    sc_signal< sc_lv<1> > exitcond_fu_276_p2;
    sc_signal< sc_lv<4> > j_s_fu_290_p2;
    sc_signal< sc_lv<7> > tmp_fu_308_p3;
    sc_signal< sc_lv<8> > tmp_trn_cast_fu_304_p1;
    sc_signal< sc_lv<8> > p_addr_cast_fu_316_p1;
    sc_signal< sc_lv<8> > p_addr5_fu_320_p2;
    sc_signal< sc_lv<7> > tmp_7_fu_340_p3;
    sc_signal< sc_lv<8> > tmp_2_trn_cast_fu_337_p1;
    sc_signal< sc_lv<8> > p_addr6_cast_fu_347_p1;
    sc_signal< sc_lv<8> > p_addr7_fu_351_p2;
    sc_signal< sc_lv<1> > exitcond1_fu_386_p2;
    sc_signal< sc_lv<4> > j_2_fu_400_p2;
    sc_signal< sc_lv<7> > tmp_s_fu_418_p3;
    sc_signal< sc_lv<8> > tmp_3_trn_cast_fu_414_p1;
    sc_signal< sc_lv<8> > p_addr8_cast_fu_426_p1;
    sc_signal< sc_lv<8> > p_addr9_fu_430_p2;
    sc_signal< sc_lv<7> > tmp_2_fu_450_p3;
    sc_signal< sc_lv<8> > tmp_4_trn_cast_fu_447_p1;
    sc_signal< sc_lv<8> > p_addr3_cast_fu_457_p1;
    sc_signal< sc_lv<8> > p_addr4_fu_461_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_7;
    sc_signal< bool > ap_sig_bdd_452;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_st1_fsm_0;
    static const sc_lv<8> ap_ST_st2_fsm_1;
    static const sc_lv<8> ap_ST_st3_fsm_2;
    static const sc_lv<8> ap_ST_pp0_stg0_fsm_3;
    static const sc_lv<8> ap_ST_st6_fsm_4;
    static const sc_lv<8> ap_ST_st7_fsm_5;
    static const sc_lv<8> ap_ST_pp1_stg0_fsm_6;
    static const sc_lv<8> ap_ST_st10_fsm_7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_7;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_105();
    void thread_ap_sig_bdd_116();
    void thread_ap_sig_bdd_209();
    void thread_ap_sig_bdd_228();
    void thread_ap_sig_bdd_26();
    void thread_ap_sig_bdd_452();
    void thread_ap_sig_bdd_66();
    void thread_ap_sig_bdd_77();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_3();
    void thread_ap_sig_cseq_ST_pp1_stg0_fsm_6();
    void thread_ap_sig_cseq_ST_st10_fsm_7();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st6_fsm_4();
    void thread_ap_sig_cseq_ST_st7_fsm_5();
    void thread_col_inbuf_address0();
    void thread_col_inbuf_address1();
    void thread_col_inbuf_ce0();
    void thread_col_inbuf_ce1();
    void thread_col_inbuf_d0();
    void thread_col_inbuf_we0();
    void thread_col_outbuf_address0();
    void thread_col_outbuf_ce0();
    void thread_col_outbuf_d0();
    void thread_col_outbuf_we0();
    void thread_exitcond1_fu_386_p2();
    void thread_exitcond2_fu_362_p2();
    void thread_exitcond5_fu_252_p2();
    void thread_exitcond_flatten2_fu_374_p2();
    void thread_exitcond_flatten_fu_264_p2();
    void thread_exitcond_fu_276_p2();
    void thread_grp_dct_dct_1d_fu_223_ap_start();
    void thread_grp_dct_dct_1d_fu_223_src_q0();
    void thread_grp_dct_dct_1d_fu_223_src_q1();
    void thread_grp_dct_dct_1d_fu_223_tmp_1();
    void thread_grp_dct_dct_1d_fu_223_tmp_11();
    void thread_i_1_mid2_fu_282_p3();
    void thread_i_3_mid2_fu_392_p3();
    void thread_i_4_fu_258_p2();
    void thread_i_5_fu_368_p2();
    void thread_i_6_fu_331_p2();
    void thread_i_7_fu_441_p2();
    void thread_in_block_address0();
    void thread_in_block_address1();
    void thread_in_block_ce0();
    void thread_in_block_ce1();
    void thread_indvar_flatten_next2_fu_380_p2();
    void thread_indvar_flatten_next_fu_270_p2();
    void thread_j_1_mid2_fu_406_p3();
    void thread_j_1_phi_fu_205_p4();
    void thread_j_2_fu_400_p2();
    void thread_j_mid2_fu_296_p3();
    void thread_j_phi_fu_160_p4();
    void thread_j_s_fu_290_p2();
    void thread_out_block_address0();
    void thread_out_block_ce0();
    void thread_out_block_d0();
    void thread_out_block_we0();
    void thread_p_addr3_cast_fu_457_p1();
    void thread_p_addr4_fu_461_p2();
    void thread_p_addr5_fu_320_p2();
    void thread_p_addr6_cast_fu_347_p1();
    void thread_p_addr7_fu_351_p2();
    void thread_p_addr8_cast_fu_426_p1();
    void thread_p_addr9_fu_430_p2();
    void thread_p_addr_cast_fu_316_p1();
    void thread_row_outbuf_address0();
    void thread_row_outbuf_ce0();
    void thread_row_outbuf_d0();
    void thread_row_outbuf_we0();
    void thread_tmp_1_fu_436_p1();
    void thread_tmp_2_fu_450_p3();
    void thread_tmp_2_trn_cast_fu_337_p1();
    void thread_tmp_3_fu_467_p1();
    void thread_tmp_3_trn_cast_fu_414_p1();
    void thread_tmp_4_trn_cast_fu_447_p1();
    void thread_tmp_6_fu_326_p1();
    void thread_tmp_7_fu_340_p3();
    void thread_tmp_8_fu_357_p1();
    void thread_tmp_fu_308_p3();
    void thread_tmp_s_fu_418_p3();
    void thread_tmp_trn_cast_fu_304_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
