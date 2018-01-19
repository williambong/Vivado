// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "duc_imf2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic duc_imf2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic duc_imf2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> duc_imf2::ap_ST_st1_fsm_0 = "1";
const sc_lv<7> duc_imf2::ap_ST_st2_fsm_1 = "10";
const sc_lv<7> duc_imf2::ap_ST_st3_fsm_2 = "100";
const sc_lv<7> duc_imf2::ap_ST_st4_fsm_3 = "1000";
const sc_lv<7> duc_imf2::ap_ST_st5_fsm_4 = "10000";
const sc_lv<7> duc_imf2::ap_ST_st6_fsm_5 = "100000";
const sc_lv<7> duc_imf2::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<32> duc_imf2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> duc_imf2::ap_const_lv1_1 = "1";
const sc_lv<4> duc_imf2::ap_const_lv4_0 = "0000";
const sc_lv<1> duc_imf2::ap_const_lv1_0 = "0";
const sc_lv<32> duc_imf2::ap_const_lv32_1 = "1";
const sc_lv<32> duc_imf2::ap_const_lv32_2 = "10";
const sc_lv<32> duc_imf2::ap_const_lv32_3 = "11";
const sc_lv<32> duc_imf2::ap_const_lv32_5 = "101";
const sc_lv<32> duc_imf2::ap_const_lv32_6 = "110";
const sc_lv<4> duc_imf2::ap_const_lv4_1 = "1";
const sc_lv<4> duc_imf2::ap_const_lv4_B = "1011";
const sc_lv<4> duc_imf2::ap_const_lv4_5 = "101";
const sc_lv<38> duc_imf2::ap_const_lv38_0 = "00000000000000000000000000000000000000";
const sc_lv<2> duc_imf2::ap_const_lv2_3 = "11";
const sc_lv<2> duc_imf2::ap_const_lv2_1 = "1";
const sc_lv<32> duc_imf2::ap_const_lv32_11 = "10001";
const sc_lv<32> duc_imf2::ap_const_lv32_22 = "100010";
const sc_lv<32> duc_imf2::ap_const_lv32_4 = "100";

duc_imf2::duc_imf2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    c_1_U = new duc_imf2_c_1("c_1_U");
    c_1_U->clk(ap_clk);
    c_1_U->reset(ap_rst);
    c_1_U->address0(c_1_address0);
    c_1_U->ce0(c_1_ce0);
    c_1_U->q0(c_1_q0);
    shift_reg_p_1_U = new duc_imf2_shift_reg_p_1("shift_reg_p_1_U");
    shift_reg_p_1_U->clk(ap_clk);
    shift_reg_p_1_U->reset(ap_rst);
    shift_reg_p_1_U->address0(shift_reg_p_1_address0);
    shift_reg_p_1_U->ce0(shift_reg_p_1_ce0);
    shift_reg_p_1_U->we0(shift_reg_p_1_we0);
    shift_reg_p_1_U->d0(shift_reg_p_1_d0);
    shift_reg_p_1_U->q0(shift_reg_p_1_q0);
    duc_mac_muladd_18s_18s_38ns_38_4_U0 = new duc_mac_muladd_18s_18s_38ns_38_4<1,4,18,18,38,38>("duc_mac_muladd_18s_18s_38ns_38_4_U0");
    duc_mac_muladd_18s_18s_38ns_38_4_U0->clk(ap_clk);
    duc_mac_muladd_18s_18s_38ns_38_4_U0->reset(ap_rst);
    duc_mac_muladd_18s_18s_38ns_38_4_U0->din0(grp_fu_250_p0);
    duc_mac_muladd_18s_18s_38ns_38_4_U0->din1(grp_fu_250_p1);
    duc_mac_muladd_18s_18s_38ns_38_4_U0->din2(grp_fu_250_p2);
    duc_mac_muladd_18s_18s_38ns_38_4_U0->ce(grp_fu_250_ce);
    duc_mac_muladd_18s_18s_38ns_38_4_U0->dout(grp_fu_250_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_ap_return);
    sensitive << ( sum_reg_335 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_ap_sig_bdd_106);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_115);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_126);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_218);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_25);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_73);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_90);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_25 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_73 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_bdd_90 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_bdd_106 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_bdd_218 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_bdd_115 );

    SC_METHOD(thread_ap_sig_cseq_ST_st7_fsm_6);
    sensitive << ( ap_sig_bdd_126 );

    SC_METHOD(thread_c_1_address0);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( tmp_s_fu_106_p1 );

    SC_METHOD(thread_c_1_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_grp_fu_250_ce);

    SC_METHOD(thread_grp_fu_250_p0);
    sensitive << ( c_1_load_reg_278 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_grp_fu_250_p1);
    sensitive << ( in_2 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_grp_fu_250_p2);
    sensitive << ( s_assign_reg_330 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_inc_3_fu_238_p3);
    sensitive << ( inc_reg_267 );
    sensitive << ( sel_tmp1_reg_294 );

    SC_METHOD(thread_inc_fu_100_p2);
    sensitive << ( i_3 );

    SC_METHOD(thread_s_assign_fu_172_p3);
    sensitive << ( shift_reg_p_1_load_reg_310 );
    sensitive << ( tmp_20_fu_168_p2 );

    SC_METHOD(thread_sel_tmp1_fu_127_p2);
    sensitive << ( i_3_load_reg_257 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_sel_tmp2_fu_132_p2);
    sensitive << ( i_3_load_reg_257 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_sel_tmp3_fu_145_p2);
    sensitive << ( init_3 );

    SC_METHOD(thread_sel_tmp4_fu_151_p2);
    sensitive << ( sel_tmp1_reg_294 );
    sensitive << ( sel_tmp2_reg_300 );

    SC_METHOD(thread_sel_tmp5_fu_155_p2);
    sensitive << ( sel_tmp4_fu_151_p2 );
    sensitive << ( sel_tmp3_fu_145_p2 );

    SC_METHOD(thread_shift_reg_p_1_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_15_fu_122_p1 );
    sensitive << ( tmp_17_fu_185_p1 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_shift_reg_p_1_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_shift_reg_p_1_d0);
    sensitive << ( sum_reg_335 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_shift_reg_p_1_we0);
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_tmp_14_fu_115_p3);
    sensitive << ( ch_2 );
    sensitive << ( inc_reg_267 );

    SC_METHOD(thread_tmp_15_fu_122_p1);
    sensitive << ( tmp_14_fu_115_p3 );

    SC_METHOD(thread_tmp_16_fu_179_p3);
    sensitive << ( i_3_load_reg_257 );
    sensitive << ( ch_2_load_reg_283 );

    SC_METHOD(thread_tmp_17_fu_185_p1);
    sensitive << ( tmp_16_fu_179_p3 );

    SC_METHOD(thread_tmp_20_fu_168_p2);
    sensitive << ( init_3 );
    sensitive << ( sel_tmp5_reg_315 );

    SC_METHOD(thread_tmp_21_fu_194_p2);
    sensitive << ( cnt );
    sensitive << ( sel_tmp1_reg_294 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_tmp_22_fu_206_p2);
    sensitive << ( ch_2_load_reg_283 );

    SC_METHOD(thread_tmp_23_fu_217_p2);
    sensitive << ( cnt );

    SC_METHOD(thread_tmp_fu_88_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( i_3 );

    SC_METHOD(thread_tmp_s_fu_106_p1);
    sensitive << ( i_3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    ap_CS_fsm = "0000001";
    i_3 = "0000";
    in_2 = "000000000000000000";
    init_3 = "1";
    ch_2 = "0";
    cnt = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "duc_imf2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x, "(port)x");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_25, "ap_sig_bdd_25");
    sc_trace(mVcdFile, i_3, "i_3");
    sc_trace(mVcdFile, in_2, "in_2");
    sc_trace(mVcdFile, c_1_address0, "c_1_address0");
    sc_trace(mVcdFile, c_1_ce0, "c_1_ce0");
    sc_trace(mVcdFile, c_1_q0, "c_1_q0");
    sc_trace(mVcdFile, init_3, "init_3");
    sc_trace(mVcdFile, ch_2, "ch_2");
    sc_trace(mVcdFile, shift_reg_p_1_address0, "shift_reg_p_1_address0");
    sc_trace(mVcdFile, shift_reg_p_1_ce0, "shift_reg_p_1_ce0");
    sc_trace(mVcdFile, shift_reg_p_1_we0, "shift_reg_p_1_we0");
    sc_trace(mVcdFile, shift_reg_p_1_d0, "shift_reg_p_1_d0");
    sc_trace(mVcdFile, shift_reg_p_1_q0, "shift_reg_p_1_q0");
    sc_trace(mVcdFile, cnt, "cnt");
    sc_trace(mVcdFile, i_3_load_reg_257, "i_3_load_reg_257");
    sc_trace(mVcdFile, inc_fu_100_p2, "inc_fu_100_p2");
    sc_trace(mVcdFile, inc_reg_267, "inc_reg_267");
    sc_trace(mVcdFile, c_1_load_reg_278, "c_1_load_reg_278");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_73, "ap_sig_bdd_73");
    sc_trace(mVcdFile, ch_2_load_reg_283, "ch_2_load_reg_283");
    sc_trace(mVcdFile, sel_tmp1_fu_127_p2, "sel_tmp1_fu_127_p2");
    sc_trace(mVcdFile, sel_tmp1_reg_294, "sel_tmp1_reg_294");
    sc_trace(mVcdFile, sel_tmp2_fu_132_p2, "sel_tmp2_fu_132_p2");
    sc_trace(mVcdFile, sel_tmp2_reg_300, "sel_tmp2_reg_300");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_90, "ap_sig_bdd_90");
    sc_trace(mVcdFile, shift_reg_p_1_load_reg_310, "shift_reg_p_1_load_reg_310");
    sc_trace(mVcdFile, sel_tmp5_fu_155_p2, "sel_tmp5_fu_155_p2");
    sc_trace(mVcdFile, sel_tmp5_reg_315, "sel_tmp5_reg_315");
    sc_trace(mVcdFile, s_assign_fu_172_p3, "s_assign_fu_172_p3");
    sc_trace(mVcdFile, s_assign_reg_330, "s_assign_reg_330");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_106, "ap_sig_bdd_106");
    sc_trace(mVcdFile, grp_fu_250_p3, "grp_fu_250_p3");
    sc_trace(mVcdFile, sum_reg_335, "sum_reg_335");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_bdd_115, "ap_sig_bdd_115");
    sc_trace(mVcdFile, tmp_s_fu_106_p1, "tmp_s_fu_106_p1");
    sc_trace(mVcdFile, tmp_15_fu_122_p1, "tmp_15_fu_122_p1");
    sc_trace(mVcdFile, tmp_17_fu_185_p1, "tmp_17_fu_185_p1");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st7_fsm_6, "ap_sig_cseq_ST_st7_fsm_6");
    sc_trace(mVcdFile, ap_sig_bdd_126, "ap_sig_bdd_126");
    sc_trace(mVcdFile, inc_3_fu_238_p3, "inc_3_fu_238_p3");
    sc_trace(mVcdFile, tmp_fu_88_p2, "tmp_fu_88_p2");
    sc_trace(mVcdFile, tmp_21_fu_194_p2, "tmp_21_fu_194_p2");
    sc_trace(mVcdFile, tmp_22_fu_206_p2, "tmp_22_fu_206_p2");
    sc_trace(mVcdFile, tmp_23_fu_217_p2, "tmp_23_fu_217_p2");
    sc_trace(mVcdFile, tmp_14_fu_115_p3, "tmp_14_fu_115_p3");
    sc_trace(mVcdFile, sel_tmp4_fu_151_p2, "sel_tmp4_fu_151_p2");
    sc_trace(mVcdFile, sel_tmp3_fu_145_p2, "sel_tmp3_fu_145_p2");
    sc_trace(mVcdFile, tmp_20_fu_168_p2, "tmp_20_fu_168_p2");
    sc_trace(mVcdFile, tmp_16_fu_179_p3, "tmp_16_fu_179_p3");
    sc_trace(mVcdFile, grp_fu_250_p0, "grp_fu_250_p0");
    sc_trace(mVcdFile, grp_fu_250_p1, "grp_fu_250_p1");
    sc_trace(mVcdFile, grp_fu_250_p2, "grp_fu_250_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_bdd_218, "ap_sig_bdd_218");
    sc_trace(mVcdFile, grp_fu_250_ce, "grp_fu_250_ce");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

duc_imf2::~duc_imf2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete c_1_U;
    delete shift_reg_p_1_U;
    delete duc_mac_muladd_18s_18s_38ns_38_4_U0;
}

void duc_imf2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        c_1_load_reg_278 = c_1_q0.read();
        ch_2_load_reg_283 = ch_2.read();
        sel_tmp1_reg_294 = sel_tmp1_fu_127_p2.read();
        sel_tmp2_reg_300 = sel_tmp2_fu_132_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp1_reg_294.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_fu_194_p2.read()))) {
        ch_2 = tmp_22_fu_206_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp1_reg_294.read()))) {
        cnt = tmp_23_fu_217_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        i_3 = inc_3_fu_238_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_3_load_reg_257 = i_3.read();
        inc_reg_267 = inc_fu_100_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_88_p2.read()))) {
        in_2 = x.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp1_reg_294.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_fu_194_p2.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, ch_2_load_reg_283.read()))) {
        init_3 = ap_const_lv1_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        s_assign_reg_330 = s_assign_fu_172_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        sel_tmp5_reg_315 = sel_tmp5_fu_155_p2.read();
        shift_reg_p_1_load_reg_310 = shift_reg_p_1_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        sum_reg_335 = grp_fu_250_p3.read();
    }
}

void duc_imf2::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_return() {
    ap_return = sum_reg_335.read().range(34, 17);
}

void duc_imf2::thread_ap_sig_bdd_106() {
    ap_sig_bdd_106 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void duc_imf2::thread_ap_sig_bdd_115() {
    ap_sig_bdd_115 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void duc_imf2::thread_ap_sig_bdd_126() {
    ap_sig_bdd_126 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void duc_imf2::thread_ap_sig_bdd_218() {
    ap_sig_bdd_218 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void duc_imf2::thread_ap_sig_bdd_25() {
    ap_sig_bdd_25 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void duc_imf2::thread_ap_sig_bdd_73() {
    ap_sig_bdd_73 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void duc_imf2::thread_ap_sig_bdd_90() {
    ap_sig_bdd_90 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void duc_imf2::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_25.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_73.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_90.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_bdd_106.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_bdd_218.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_bdd_115.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void duc_imf2::thread_ap_sig_cseq_ST_st7_fsm_6() {
    if (ap_sig_bdd_126.read()) {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    }
}

void duc_imf2::thread_c_1_address0() {
    c_1_address0 =  (sc_lv<4>) (tmp_s_fu_106_p1.read());
}

void duc_imf2::thread_c_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        c_1_ce0 = ap_const_logic_1;
    } else {
        c_1_ce0 = ap_const_logic_0;
    }
}

void duc_imf2::thread_grp_fu_250_ce() {
    grp_fu_250_ce = ap_const_logic_1;
}

void duc_imf2::thread_grp_fu_250_p0() {
    grp_fu_250_p0 = c_1_load_reg_278.read();
}

void duc_imf2::thread_grp_fu_250_p1() {
    grp_fu_250_p1 = in_2.read();
}

void duc_imf2::thread_grp_fu_250_p2() {
    grp_fu_250_p2 = s_assign_reg_330.read();
}

void duc_imf2::thread_inc_3_fu_238_p3() {
    inc_3_fu_238_p3 = (!sel_tmp1_reg_294.read()[0].is_01())? sc_lv<4>(): ((sel_tmp1_reg_294.read()[0].to_bool())? ap_const_lv4_0: inc_reg_267.read());
}

void duc_imf2::thread_inc_fu_100_p2() {
    inc_fu_100_p2 = (!i_3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void duc_imf2::thread_s_assign_fu_172_p3() {
    s_assign_fu_172_p3 = (!tmp_20_fu_168_p2.read()[0].is_01())? sc_lv<38>(): ((tmp_20_fu_168_p2.read()[0].to_bool())? ap_const_lv38_0: shift_reg_p_1_load_reg_310.read());
}

void duc_imf2::thread_sel_tmp1_fu_127_p2() {
    sel_tmp1_fu_127_p2 = (!i_3_load_reg_257.read().is_01() || !ap_const_lv4_B.is_01())? sc_lv<1>(): sc_lv<1>(i_3_load_reg_257.read() == ap_const_lv4_B);
}

void duc_imf2::thread_sel_tmp2_fu_132_p2() {
    sel_tmp2_fu_132_p2 = (!i_3_load_reg_257.read().is_01() || !ap_const_lv4_5.is_01())? sc_lv<1>(): sc_lv<1>(i_3_load_reg_257.read() == ap_const_lv4_5);
}

void duc_imf2::thread_sel_tmp3_fu_145_p2() {
    sel_tmp3_fu_145_p2 = (init_3.read() ^ ap_const_lv1_1);
}

void duc_imf2::thread_sel_tmp4_fu_151_p2() {
    sel_tmp4_fu_151_p2 = (sel_tmp1_reg_294.read() | sel_tmp2_reg_300.read());
}

void duc_imf2::thread_sel_tmp5_fu_155_p2() {
    sel_tmp5_fu_155_p2 = (sel_tmp4_fu_151_p2.read() & sel_tmp3_fu_145_p2.read());
}

void duc_imf2::thread_shift_reg_p_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        shift_reg_p_1_address0 =  (sc_lv<5>) (tmp_17_fu_185_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        shift_reg_p_1_address0 =  (sc_lv<5>) (tmp_15_fu_122_p1.read());
    } else {
        shift_reg_p_1_address0 = "XXXXX";
    }
}

void duc_imf2::thread_shift_reg_p_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()))) {
        shift_reg_p_1_ce0 = ap_const_logic_1;
    } else {
        shift_reg_p_1_ce0 = ap_const_logic_0;
    }
}

void duc_imf2::thread_shift_reg_p_1_d0() {
    shift_reg_p_1_d0 = sum_reg_335.read();
}

void duc_imf2::thread_shift_reg_p_1_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()))) {
        shift_reg_p_1_we0 = ap_const_logic_1;
    } else {
        shift_reg_p_1_we0 = ap_const_logic_0;
    }
}

void duc_imf2::thread_tmp_14_fu_115_p3() {
    tmp_14_fu_115_p3 = esl_concat<4,1>(inc_reg_267.read(), ch_2.read());
}

void duc_imf2::thread_tmp_15_fu_122_p1() {
    tmp_15_fu_122_p1 = esl_zext<64,5>(tmp_14_fu_115_p3.read());
}

void duc_imf2::thread_tmp_16_fu_179_p3() {
    tmp_16_fu_179_p3 = esl_concat<4,1>(i_3_load_reg_257.read(), ch_2_load_reg_283.read());
}

void duc_imf2::thread_tmp_17_fu_185_p1() {
    tmp_17_fu_185_p1 = esl_zext<64,5>(tmp_16_fu_179_p3.read());
}

void duc_imf2::thread_tmp_20_fu_168_p2() {
    tmp_20_fu_168_p2 = (sel_tmp5_reg_315.read() | init_3.read());
}

void duc_imf2::thread_tmp_21_fu_194_p2() {
    tmp_21_fu_194_p2 = (!cnt.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(cnt.read() == ap_const_lv2_3);
}

void duc_imf2::thread_tmp_22_fu_206_p2() {
    tmp_22_fu_206_p2 = (ch_2_load_reg_283.read() ^ ap_const_lv1_1);
}

void duc_imf2::thread_tmp_23_fu_217_p2() {
    tmp_23_fu_217_p2 = (!cnt.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(cnt.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void duc_imf2::thread_tmp_fu_88_p2() {
    tmp_fu_88_p2 = (!i_3.read().is_01() || !ap_const_lv4_0.is_01())? sc_lv<1>(): sc_lv<1>(i_3.read() == ap_const_lv4_0);
}

void duc_imf2::thread_tmp_s_fu_106_p1() {
    tmp_s_fu_106_p1 = esl_zext<64,4>(i_3.read());
}

void duc_imf2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}

