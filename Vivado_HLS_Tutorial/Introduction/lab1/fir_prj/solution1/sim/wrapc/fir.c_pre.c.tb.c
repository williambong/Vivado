// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#1 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.c"
#1 "<built-in>"
#1 "<command-line>"
#1 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.c"
#46 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.c"
#1 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.h" 1
#50 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.h"
typedef int coef_t;
typedef int data_t;
typedef int acc_t;

void fir (
  data_t *y,
  coef_t c[11 +1],
  data_t x
  );
#47 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.c" 2


#ifndef HLS_FASTSIM
#include "apatb_fir.h"
#endif
#define fir(...) AESL_ORIG_DUT_fir(__VA_ARGS__)
#48 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.c"
void fir (
  data_t *y,
  coef_t c[11],
  data_t x
  ) {

  static data_t shift_reg[11];
  acc_t acc;
  data_t data;
  int i;

  acc=0;
  Shift_Accum_Loop: for (i=11 -1;i>=0;i--) {
  if (i==0) {
   shift_reg[0]=x;
      data = x;
    } else {
   shift_reg[i]=shift_reg[i-1];
   data = shift_reg[i];
    }
    acc+=data*c[i];;
  }
  *y=acc;
}
#undef fir

#71 "D:/opt/source/Vivado/Vivado_HLS_Tutorial/Introduction/lab1/fir.c"
