/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * coderand_data.c
 *
 * Code generation for function 'coderand_data'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "coderand.h"
#include "coderand_data.h"

/* Variable Definitions */
emlrtCTX emlrtRootTLSGlobal = NULL;
emlrtContext emlrtContextGlobal = { true,/* bFirstTime */
  false,                               /* bInitialized */
  131466U,                             /* fVersionInfo */
  NULL,                                /* fErrorFunction */
  "coderand",                          /* fFunctionName */
  NULL,                                /* fRTCallStack */
  false,                               /* bDebugMode */
  { 2045744189U, 2170104910U, 2743257031U, 4284093946U },/* fSigWrd */
  NULL                                 /* fSigMem */
};

emlrtRSInfo emlrtRSI = { 4,            /* lineNo */
  "coderand",                          /* fcnName */
  "D:\\QuS\\Kagome_matlab\\mex\\coderand.m"/* pathName */
};

/* End of code generation (coderand_data.c) */
