/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_zcfun_api.c
 *
 * Code generation for function '_coder_zcfun_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "zcfun.h"
#include "_coder_zcfun_api.h"
#include "zcfun_data.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static boolean_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *zc,
  const char_T *identifier))[100000000];
static boolean_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[100000000];
static real_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId);
static real_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *i, const
  char_T *identifier);
static void emlrt_marshallOut(const boolean_T u[100000000], const mxArray *y);
static boolean_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[100000000];

/* Function Definitions */
static real_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = e_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static boolean_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *zc,
  const char_T *identifier))[100000000]
{
  boolean_T (*y)[100000000];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(sp, emlrtAlias(zc), &thisId);
  emlrtDestroyArray(&zc);
  return y;
}
  static boolean_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[100000000]
{
  boolean_T (*y)[100000000];
  y = f_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId)
{
  real_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 0U, &dims);
  ret = *(real_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *i, const
  char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(i), &thisId);
  emlrtDestroyArray(&i);
  return y;
}

static void emlrt_marshallOut(const boolean_T u[100000000], const mxArray *y)
{
  static const int32_T iv0[2] = { 10000, 10000 };

  emlrtMxSetData((mxArray *)y, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)y, iv0, 2);
}

static boolean_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[100000000]
{
  boolean_T (*ret)[100000000];
  static const int32_T dims[2] = { 10000, 10000 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "logical", false, 2U, dims);
  ret = (boolean_T (*)[100000000])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  void zcfun_api(const mxArray * const prhs[6], int32_T nlhs, const mxArray
                 *plhs[2])
{
  const mxArray *prhs_copy_idx_2;
  const mxArray *prhs_copy_idx_3;
  real_T i;
  real_T j;
  boolean_T (*zc)[100000000];
  boolean_T (*visit)[100000000];
  boolean_T (*C)[100000000];
  real_T n;
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  prhs_copy_idx_2 = emlrtProtectR2012b(prhs[2], 2, true, -1);
  prhs_copy_idx_3 = emlrtProtectR2012b(prhs[3], 3, true, -1);

  /* Marshall function inputs */
  i = emlrt_marshallIn(&st, emlrtAliasP(prhs[0]), "i");
  j = emlrt_marshallIn(&st, emlrtAliasP(prhs[1]), "j");
  zc = c_emlrt_marshallIn(&st, emlrtAlias(prhs_copy_idx_2), "zc");
  visit = c_emlrt_marshallIn(&st, emlrtAlias(prhs_copy_idx_3), "visit");
  C = c_emlrt_marshallIn(&st, emlrtAlias(prhs[4]), "C");
  n = emlrt_marshallIn(&st, emlrtAliasP(prhs[5]), "n");

  /* Invoke the target function */
  zcfun(&st, i, j, *zc, *visit, *C, n);

  /* Marshall function outputs */
  emlrt_marshallOut(*zc, prhs_copy_idx_2);
  plhs[0] = prhs_copy_idx_2;
  if (nlhs > 1) {
    emlrt_marshallOut(*visit, prhs_copy_idx_3);
    plhs[1] = prhs_copy_idx_3;
  }
}

/* End of code generation (_coder_zcfun_api.c) */
