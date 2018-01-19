/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void hamming_window(signed int *llvm_cbe_outdata, signed short *llvm_cbe_indata);
static void aesl_internal_hamming_rom_init(void);


/* Global Variable Definitions and Initialization */
static signed short aesl_internal_hamming_window_OC_window_coeff[256];


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void hamming_window(signed int *llvm_cbe_outdata, signed short *llvm_cbe_indata) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  signed short *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned short llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  signed short *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  unsigned short llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  signed int *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @hamming_window\n");
if (AESL_DEBUG_TRACE)
printf("\n  tail call fastcc void @aesl_internal_hamming_rom_init(), !dbg !4 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_5_count);
   /*tail*/ aesl_internal_hamming_rom_init();
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__11;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__11:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%11, %%1  for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = zext i32 %%storemerge1 to i64, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_13_count);
  llvm_cbe_tmp__1 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge1&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [256 x i16]* @aesl_internal_hamming_window.window_coeff, i64 0, i64 %%2, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__2 = (signed short *)(&aesl_internal_hamming_window_OC_window_coeff[(((signed long long )llvm_cbe_tmp__1))
#ifdef AESL_BC_SIM
 % 256
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__1) < 256)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_hamming_window.window_coeff' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i16* %%3, align 2, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__3 = (unsigned short )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i16 %%4 to i32, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__4 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i16* %%indata, i64 %%2, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__5 = (signed short *)(&llvm_cbe_indata[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i16* %%6, align 2, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__6 = (unsigned short )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = sext i16 %%7 to i32, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__7 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = mul nsw i32 %%8, %%5, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__8 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__4&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__8&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds i32* %%outdata, i64 %%2, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__9 = (signed int *)(&llvm_cbe_outdata[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%9, i32* %%10, align 4, !dbg !3 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_22_count);
  *llvm_cbe_tmp__9 = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%storemerge1, 1, !dbg !4 for 0x%I64xth hint within @hamming_window  --> \n", ++aesl_llvm_cbe_23_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
  if (((llvm_cbe_tmp__10&4294967295U) == (256u&4294967295U))) {
    goto llvm_cbe_tmp__12;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__10;   /* for PHI node */
    goto llvm_cbe_tmp__11;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__12:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @hamming_window}\n");
  return;
}

static const ConstantDoubleTy FPConstant0 = 0x401921FB54442D18ULL;    /* 6.283185e+00 */
static const ConstantDoubleTy FPConstant1 = 0x406FE00000000000ULL;    /* 2.550000e+02 */
static const ConstantDoubleTy FPConstant2 = 0x3FDD70A3E0000000ULL;    /* 4.600000e-01 */
static const ConstantDoubleTy FPConstant3 = 0x3FE147AE20000000ULL;    /* 5.400000e-01 */
static const ConstantFloatTy FPConstant4 = 0x46800000U;    /* 1.638400e+04 */

static void aesl_internal_hamming_rom_init(void) {
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  double llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  double llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  double llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  double llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  double llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  double llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  float llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned short llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned long long llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  signed short *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @aesl_internal_hamming_rom_init\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__25;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__25:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%13, %%1  for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__24);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sitofp i32 %%storemerge1 to double, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__13 = (double )((double )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__13, *(long long*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fmul double %%2, 0x401921FB54442D18, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__14 = (double )llvm_cbe_tmp__13 * (*(double*)&FPConstant0);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__14, *(long long*)(&llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fdiv double %%3, 2.550000e+02, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__15 = (double )llvm_cbe_tmp__14 / (*(double*)&FPConstant1);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__15, *(long long*)(&llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call double @cos(double %%4) nounwind readnone, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__16 = (double ) /*tail*/ cos(llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__15, *(long long*)(&llvm_cbe_tmp__15));
printf("\nReturn  = %lf",llvm_cbe_tmp__16);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fmul double %%5, 0x3FDD70A3E0000000, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__17 = (double )llvm_cbe_tmp__16 * (*(double*)&FPConstant2);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__17, *(long long*)(&llvm_cbe_tmp__17));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fsub double 0x3FE147AE20000000, %%6, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__18 = (double )(*(double*)&FPConstant3) - llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__18, *(long long*)(&llvm_cbe_tmp__18));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fptrunc double %%7 to float, !dbg !3 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__19 = (float )((float )llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__19, *(int*)(&llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fmul float %%8, 1.638400e+04, !dbg !4 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__20 = (float )((float )(llvm_cbe_tmp__19 * (*(float*)&FPConstant4)));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fptosi float %%9 to i16, !dbg !4 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__21 = (unsigned short )((signed short )llvm_cbe_tmp__20&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = sext i32 %%storemerge1 to i64, !dbg !4 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__22 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [256 x i16]* @aesl_internal_hamming_window.window_coeff, i64 0, i64 %%11, !dbg !4 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__23 = (signed short *)(&aesl_internal_hamming_window_OC_window_coeff[(((signed long long )llvm_cbe_tmp__22))
#ifdef AESL_BC_SIM
 % 256
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__22));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__22) < 256 && "Write access out of array 'aesl_internal_hamming_window.window_coeff' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%10, i16* %%12, align 2, !dbg !4 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_51_count);
  *llvm_cbe_tmp__23 = llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%storemerge1, 1, !dbg !4 for 0x%I64xth hint within @aesl_internal_hamming_rom_init  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
  if (((llvm_cbe_tmp__24&4294967295U) == (256u&4294967295U))) {
    goto llvm_cbe_tmp__26;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe_tmp__25;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__26:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @aesl_internal_hamming_rom_init}\n");
  return;
}

