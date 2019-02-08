/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_zcfun_info.c
 *
 * Code generation for function '_coder_zcfun_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "zcfun.h"
#include "_coder_zcfun_info.h"

/* Function Definitions */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * fldNames[6] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs", "FullPath", "TimeStamp" };

  mxArray *xInputs;
  const char * b_fldNames[4] = { "Version", "ResolvedFunctions", "EntryPoints",
    "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 1, 6, fldNames);
  xInputs = emlrtCreateLogicalMatrix(1, 6);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("zcfun"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(6.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (2.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "D:\\QuS\\Kagome_matlab\\zcfun.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737464.61202546291));
  xResult = emlrtCreateStructMatrix(1, 1, 4, b_fldNames);
  emlrtSetField(xResult, 0, "Version", emlrtMxCreateString(
    "9.4.0.813654 (R2018a)"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  const char * data[4] = {
    "789c6360f4f465646060e0638080196c109a17ca1780d24c0ca8005d9e11070d03ac0c2c28fa60f273a074727e5e496a45098493939997ea579a9b945a04e4e4"
    "25e6a6c28d49c9cfcdcc4bcc2b09a92c4865284a2dcecf294b4d01cba465e6a48664e6a6fae423713c32819c5c37242938072405623b67a426670797e6321465",
    "14239c9b83cc61400a9f0624ffffaf47f89f054bf820cbc3fc2b8f237c04d0e4a35d635dacf4034b83f5bd13d3f37353e373134b721293f4ab92d34af3f472e1"
    "ee2940b20fd91c362cee419687d9cf84c687014e34f51020e300a1751c60f627e0301f5b7860b39f1587fd025019b07f1910e14fa97d6c687c847d109994fcd2",
    "a49c54ecf14d8e7dd48eef041cf6111bdfb8f2272703079475e07a99f87547fad9070123c5be0a1ce6119b9ec470d82780266fe45f959ced6a186a91e19b5c10"
    "5c515e5aee9898ee8e704700017b08b98301079fd6e60300a8515e07", "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 1712U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_zcfun_info.c) */
