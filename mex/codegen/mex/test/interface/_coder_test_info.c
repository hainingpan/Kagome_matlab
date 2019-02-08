/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_test_info.c
 *
 * Code generation for function '_coder_test_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "test.h"
#include "_coder_test_info.h"

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
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("test"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "D:\\QuS\\Kagome_matlab\\mex\\test.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737464.67627314816));
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
    "14239c9b83cc61400a9f0e24ffffaf47f89f054bf820cbc3fcab84237c04a0ea61f2d1aeb12e56fa81a5c1fade89e9f9b9a9f1b98925398949fab9a915fa25a9"
    "c5257ab9a8ee4a40b217661e08b0617117b23ca178e364e040e2893810b20f5b3860b38f058dcf0057c7020e07901f417c6ad9c786c647d8c706b62f25bf3429",
    "27157b3c9363dfd08de706e71af1eb8ef44d57f44ec703675f050ef3884d576238ec83a52b987c41a0a18b9fa78151b663717e6a4e55aea1614172a42bc21d01"
    "04ec21e40e061c7c5a9b0f000f1a6572", "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 1712U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_test_info.c) */
