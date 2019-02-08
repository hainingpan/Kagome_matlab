/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * coderand.c
 *
 * Code generation for function 'coderand'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "coderand.h"
#include "rand.h"

/* Function Definitions */
real_T coderand(const emlrtStack *sp)
{
  (void)sp;

  /*  The directive %#codegen indicates that the function */
  /*  is intended for code generation */
  return b_rand();
}

/* End of code generation (coderand.c) */
