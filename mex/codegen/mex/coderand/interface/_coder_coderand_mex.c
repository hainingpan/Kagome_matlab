/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_coderand_mex.c
 *
 * Code generation for function '_coder_coderand_mex'
 *
 */

/* Include files */
#include "coderand.h"
#include "_coder_coderand_mex.h"
#include "coderand_terminate.h"
#include "_coder_coderand_api.h"
#include "coderand_initialize.h"
#include "coderand_data.h"

/* Function Declarations */
static void coderand_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs);

/* Function Definitions */
static void coderand_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs)
{
  const mxArray *outputs[1];
  int32_T b_nlhs;
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 0) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 0, 4, 8,
                        "coderand");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 8,
                        "coderand");
  }

  /* Call the function. */
  coderand_api(nlhs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);

  /* Module termination. */
  coderand_terminate();
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  (void)prhs;
  mexAtExit(coderand_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  coderand_initialize();

  /* Dispatch the entry-point. */
  coderand_mexFunction(nlhs, plhs, nrhs);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_coderand_mex.c) */
