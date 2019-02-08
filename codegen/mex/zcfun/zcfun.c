/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * zcfun.c
 *
 * Code generation for function 'zcfun'
 *
 */

/* Include files */
#include "mwmathutil.h"
#include "rt_nonfinite.h"
#include "zcfun.h"
#include "zcfun_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 7,     /* lineNo */
  "zcfun",                             /* fcnName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pathName */
};

static emlrtRSInfo b_emlrtRSI = { 14,  /* lineNo */
  "zcfun",                             /* fcnName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pathName */
};

static emlrtBCInfo emlrtBCI = { 1,     /* iFirst */
  10000,                               /* iLast */
  4,                                   /* lineNo */
  24,                                  /* colNo */
  "zc",                                /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtDCInfo emlrtDCI = { 4,     /* lineNo */
  28,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtBCInfo b_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  4,                                   /* lineNo */
  28,                                  /* colNo */
  "zc",                                /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtBCInfo c_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  4,                                   /* lineNo */
  37,                                  /* colNo */
  "C",                                 /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtDCInfo b_emlrtDCI = { 4,   /* lineNo */
  41,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtECInfo emlrtECI = { -1,    /* nDims */
  4,                                   /* lineNo */
  21,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pName */
};

static emlrtBCInfo d_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  4,                                   /* lineNo */
  12,                                  /* colNo */
  "zc",                                /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtDCInfo c_emlrtDCI = { 4,   /* lineNo */
  16,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtECInfo b_emlrtECI = { -1,  /* nDims */
  4,                                   /* lineNo */
  9,                                   /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pName */
};

static emlrtRTEInfo emlrtRTEI = { 5,   /* lineNo */
  15,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pName */
};

static emlrtDCInfo d_emlrtDCI = { 11,  /* lineNo */
  30,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtBCInfo e_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  11,                                  /* lineNo */
  30,                                  /* colNo */
  "zc",                                /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtDCInfo e_emlrtDCI = { 11,  /* lineNo */
  39,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtECInfo c_emlrtECI = { 2,   /* nDims */
  11,                                  /* lineNo */
  21,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pName */
};

static emlrtDCInfo f_emlrtDCI = { 11,  /* lineNo */
  18,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtECInfo d_emlrtECI = { -1,  /* nDims */
  11,                                  /* lineNo */
  9,                                   /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pName */
};

static emlrtRTEInfo b_emlrtRTEI = { 12,/* lineNo */
  15,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m"    /* pName */
};

static emlrtBCInfo f_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  2,                                   /* lineNo */
  12,                                  /* colNo */
  "visit",                             /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtDCInfo g_emlrtDCI = { 2,   /* lineNo */
  12,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtBCInfo g_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  2,                                   /* lineNo */
  14,                                  /* colNo */
  "visit",                             /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtDCInfo h_emlrtDCI = { 2,   /* lineNo */
  14,                                  /* colNo */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  1                                    /* checkKind */
};

static emlrtBCInfo h_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  13,                                  /* lineNo */
  22,                                  /* colNo */
  "zc",                                /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

static emlrtBCInfo i_emlrtBCI = { 1,   /* iFirst */
  10000,                               /* iLast */
  6,                                   /* lineNo */
  20,                                  /* colNo */
  "zc",                                /* aName */
  "zcfun",                             /* fName */
  "D:\\QuS\\Kagome_matlab\\zcfun.m",   /* pName */
  0                                    /* checkKind */
};

/* Function Definitions */
void zcfun(const emlrtStack *sp, real_T i, real_T j, boolean_T zc[100000000],
           boolean_T visit[100000000], const boolean_T C[100000000], real_T n)
{
  int32_T i0;
  int32_T i1;
  int32_T k;
  int32_T i2;
  int32_T tmp_size[2];
  int32_T loop_ub;
  int32_T i3;
  boolean_T tmp_data[10000];
  int32_T zc_size[2];
  int32_T b_zc[2];
  int32_T iv1[2];
  int32_T b_tmp_size[1];
  int16_T b_tmp_data[10000];
  int32_T c_tmp_size[2];
  int32_T iv2[1];
  boolean_T c_tmp_data[10000];
  real_T b_k;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  if (*emlrtBreakCheckR2012bFlagVar != 0) {
    emlrtBreakCheckR2012b(sp);
  }

  if (i != (int32_T)muDoubleScalarFloor(i)) {
    emlrtIntegerCheckR2012b(i, &g_emlrtDCI, sp);
  }

  i0 = (int32_T)i;
  if (!((i0 >= 1) && (i0 <= 10000))) {
    emlrtDynamicBoundsCheckR2012b(i0, 1, 10000, &f_emlrtBCI, sp);
  }

  if (j != (int32_T)muDoubleScalarFloor(j)) {
    emlrtIntegerCheckR2012b(j, &h_emlrtDCI, sp);
  }

  i1 = (int32_T)j;
  if (!((i1 >= 1) && (i1 <= 10000))) {
    emlrtDynamicBoundsCheckR2012b(i1, 1, 10000, &g_emlrtBCI, sp);
  }

  if (!visit[(i0 + 10000 * (i1 - 1)) - 1]) {
    /* have calculated */
    if (i <= j) {
      if (i + 1.0 > n) {
        i0 = 1;
        i1 = 1;
        k = 0;
        i2 = 0;
      } else {
        i0 = (int32_T)i + 1;
        if (!((i0 >= 1) && (i0 <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(i0, 1, 10000, &emlrtBCI, sp);
        }

        if (n != (int32_T)muDoubleScalarFloor(n)) {
          emlrtIntegerCheckR2012b(n, &emlrtDCI, sp);
        }

        i1 = (int32_T)n;
        if (!((i1 >= 1) && (i1 <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(i1, 1, 10000, &b_emlrtBCI, sp);
        }

        i1++;
        k = (int32_T)i + 1;
        if (!((k >= 1) && (k <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(k, 1, 10000, &c_emlrtBCI, sp);
        }

        k--;
        if (n != (int32_T)muDoubleScalarFloor(n)) {
          emlrtIntegerCheckR2012b(n, &b_emlrtDCI, sp);
        }

        i2 = (int32_T)n;
      }

      loop_ub = i2 - k;
      for (i3 = 0; i3 < loop_ub; i3++) {
        tmp_data[i3] = C[((int32_T)i + 10000 * (k + i3)) - 1];
      }

      i3 = i1 - i0;
      k = i2 - k;
      if (i3 != k) {
        emlrtSizeEqCheck1DR2012b(i3, k, &emlrtECI, sp);
      }

      if (i + 1.0 > n) {
        k = 1;
        i2 = 0;
      } else {
        k = (int32_T)i + 1;
        if (!((k >= 1) && (k <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(k, 1, 10000, &d_emlrtBCI, sp);
        }

        if (n != (int32_T)muDoubleScalarFloor(n)) {
          emlrtIntegerCheckR2012b(n, &c_emlrtDCI, sp);
        }

        i2 = (int32_T)n;
      }

      loop_ub = (int16_T)i2 - (int16_T)k;
      for (i3 = 0; i3 <= loop_ub; i3++) {
        b_tmp_data[i3] = (int16_T)((int16_T)((int16_T)k + (int16_T)i3) - 1);
      }

      b_tmp_size[0] = i1 - i0;
      loop_ub = i1 - i0;
      for (i1 = 0; i1 < loop_ub; i1++) {
        c_tmp_data[i1] = (zc[((i0 + i1) + 10000 * ((int32_T)j - 1)) - 1] ||
                          tmp_data[i1]);
      }

      iv2[0] = ((int16_T)i2 - (int16_T)k) + 1;
      emlrtSubAssignSizeCheckR2012b(&iv2[0], 1, &b_tmp_size[0], 1, &b_emlrtECI,
        sp);
      loop_ub = b_tmp_size[0];
      for (i0 = 0; i0 < loop_ub; i0++) {
        zc[b_tmp_data[i0] + 10000 * ((int32_T)j - 1)] = c_tmp_data[i0];
      }

      i0 = (int32_T)(n + (1.0 - (i + 1.0)));
      emlrtForLoopVectorCheckR2012b(i + 1.0, 1.0, n, mxDOUBLE_CLASS, i0,
        &emlrtRTEI, sp);
      k = 0;
      while (k <= i0 - 1) {
        b_k = (i + 1.0) + (real_T)k;
        i1 = (int32_T)b_k;
        if (!((i1 >= 1) && (i1 <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(i1, 1, 10000, &i_emlrtBCI, sp);
        }

        if (zc[(i1 + 10000 * ((int32_T)j - 1)) - 1]) {
          st.site = &emlrtRSI;
          zcfun(&st, b_k, j, zc, visit, C, n);
        }

        k++;
        if (*emlrtBreakCheckR2012bFlagVar != 0) {
          emlrtBreakCheckR2012b(sp);
        }
      }
    } else {
      if (j + 1.0 > n) {
        i0 = 0;
        i1 = 0;
        k = 1;
        i2 = 0;
      } else {
        i0 = (int32_T)j;
        if (n != (int32_T)muDoubleScalarFloor(n)) {
          emlrtIntegerCheckR2012b(n, &d_emlrtDCI, sp);
        }

        i1 = (int32_T)n;
        if (!((i1 >= 1) && (i1 <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(i1, 1, 10000, &e_emlrtBCI, sp);
        }

        k = (int32_T)j + 1;
        if (n != (int32_T)muDoubleScalarFloor(n)) {
          emlrtIntegerCheckR2012b(n, &e_emlrtDCI, sp);
        }

        i2 = (int32_T)n;
      }

      tmp_size[0] = 1;
      tmp_size[1] = (i2 - k) + 1;
      loop_ub = (i2 - k) + 1;
      for (i2 = 0; i2 < loop_ub; i2++) {
        tmp_data[i2] = C[((k + i2) + 10000 * ((int32_T)j - 1)) - 1];
      }

      zc_size[0] = 1;
      zc_size[1] = i1 - i0;
      for (k = 0; k < 2; k++) {
        b_zc[k] = zc_size[k];
        iv1[k] = tmp_size[k];
      }

      if ((b_zc[0] != iv1[0]) || (b_zc[1] != iv1[1])) {
        emlrtSizeEqCheckNDR2012b(&b_zc[0], &iv1[0], &c_emlrtECI, sp);
      }

      if (j + 1.0 > n) {
        k = 1;
        i2 = 0;
      } else {
        k = (int32_T)j + 1;
        if (n != (int32_T)muDoubleScalarFloor(n)) {
          emlrtIntegerCheckR2012b(n, &f_emlrtDCI, sp);
        }

        i2 = (int32_T)n;
      }

      loop_ub = (int16_T)i2 - (int16_T)k;
      for (i3 = 0; i3 <= loop_ub; i3++) {
        b_tmp_data[i3] = (int16_T)((int16_T)((int16_T)k + (int16_T)i3) - 1);
      }

      c_tmp_size[0] = 1;
      c_tmp_size[1] = i1 - i0;
      loop_ub = i1 - i0;
      for (i1 = 0; i1 < loop_ub; i1++) {
        c_tmp_data[i1] = (zc[((int32_T)i + 10000 * (i0 + i1)) - 1] ||
                          tmp_data[i1]);
      }

      iv1[0] = 1;
      iv1[1] = ((int16_T)i2 - (int16_T)k) + 1;
      emlrtSubAssignSizeCheckR2012b(&iv1[0], 2, &c_tmp_size[0], 2, &d_emlrtECI,
        sp);
      loop_ub = c_tmp_size[1];
      for (i0 = 0; i0 < loop_ub; i0++) {
        zc[((int32_T)i + 10000 * b_tmp_data[i0]) - 1] = c_tmp_data[i0];
      }

      i0 = (int32_T)(n + (1.0 - (j + 1.0)));
      emlrtForLoopVectorCheckR2012b(j + 1.0, 1.0, n, mxDOUBLE_CLASS, i0,
        &b_emlrtRTEI, sp);
      k = 0;
      while (k <= i0 - 1) {
        b_k = (j + 1.0) + (real_T)k;
        i1 = (int32_T)b_k;
        if (!((i1 >= 1) && (i1 <= 10000))) {
          emlrtDynamicBoundsCheckR2012b(i1, 1, 10000, &h_emlrtBCI, sp);
        }

        if (zc[((int32_T)i + 10000 * (i1 - 1)) - 1]) {
          st.site = &b_emlrtRSI;
          zcfun(&st, i, b_k, zc, visit, C, n);
        }

        k++;
        if (*emlrtBreakCheckR2012bFlagVar != 0) {
          emlrtBreakCheckR2012b(sp);
        }
      }
    }
  }

  visit[((int32_T)i + 10000 * ((int32_T)j - 1)) - 1] = true;
}

/* End of code generation (zcfun.c) */
