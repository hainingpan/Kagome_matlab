/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * mcadd.c
 *
 * Code generation for function 'mcadd'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "mcadd.h"

/* Function Definitions */
void mcadd(const real_T u[16], real_T v, real_T y[16], real_T y2[16])
{
  int32_T i0;
  for (i0 = 0; i0 < 16; i0++) {
    y[i0] = u[i0] + v;
    y2[i0] = u[i0] - v;
  }
}

/* End of code generation (mcadd.c) */
