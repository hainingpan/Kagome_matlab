/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * test.c
 *
 * Code generation for function 'test'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "test.h"
#include "test_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 5,     /* lineNo */
  "test",                              /* fcnName */
  "D:\\QuS\\Kagome_matlab\\mex\\test.m"/* pathName */
};

/* Function Definitions */
real_T test(const emlrtStack *sp, real_T n)
{
  real_T y;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  if (*emlrtBreakCheckR2012bFlagVar != 0) {
    emlrtBreakCheckR2012b(sp);
  }

  if ((n == 1.0) || (n == 0.0)) {
    y = 1.0;
  } else {
    st.site = &emlrtRSI;
    y = test(&st, n - 1.0) + test(&st, n - 2.0);
  }

  return y;
}

/* End of code generation (test.c) */
