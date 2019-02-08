/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * zcfun.h
 *
 * Code generation for function 'zcfun'
 *
 */

#ifndef ZCFUN_H
#define ZCFUN_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "zcfun_types.h"

/* Function Declarations */
extern void zcfun(const emlrtStack *sp, real_T i, real_T j, boolean_T zc
                  [100000000], boolean_T visit[100000000], const boolean_T C
                  [100000000], real_T n);

#endif

/* End of code generation (zcfun.h) */
