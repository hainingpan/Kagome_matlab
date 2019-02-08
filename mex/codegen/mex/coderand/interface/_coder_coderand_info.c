/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_coderand_info.c
 *
 * Code generation for function '_coder_coderand_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "coderand.h"
#include "_coder_coderand_info.h"

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
  xInputs = emlrtCreateLogicalMatrix(1, 0);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("coderand"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(0.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "D:\\QuS\\Kagome_matlab\\mex\\coderand.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737464.66403935186));
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
  const char * data[25] = {
    "789ced5d4d6c234915ee596687192198d95d40bb2c82d96134026614c77112db231071fcff93388e9dd8e39d99a4ddddb6dbe93f77b7ff72801cf780d00a2e1c"
    "1047b4e2c272624f282b38705c891f01270e9c38ed05244ee076bb1cbbd315f78cdbe574a74a8a3ad5cfa9afde9757ef75bdea2a13d7925bd70882f802a197bf",
    "fe4dbf7e7e58bf33bcbe424c16a3fcdaf07adf5007e555e2fac4df01f9cf86574a1454a6abea158e1598ed165f61e47e45207966d40c2df2ac400a6aa1273184"
    "cc2822d766e881a4ca724c81e5998c385649b0fd0a1f1b138d2a9a48fb3d5c67a8a37c8b27e4ba72d65d6ebc428cf1f3de98fefffbc199fed74df81997037d1f",
    "40f8d13ea712bd91fcdde8b3c8634fae95f7a4c99ac833073ca97264c5c3335d0f25d28c4c0af4127fd6afc3315cd09e566e98f46b5c7e0d7205e5167173bc97"
    "1bd3f0cc7830c3bb6ea88f10fa128d074d3fad3e2b9eb1c0780705e07df89278a0fdd4143c207f379929459f851f7b7664b12693fc5dcd2615cf56a890096d7a",
    "765796bd01d2a38a225711bb1e86e73c1cdb3702dd16348eaa2dc1036c61bcff8790fed9670f1b91afddfa4b08adfda1b6f7c5e17521ed59b5bf2f41f080fd01"
    "394da78f8e59ef7a27d71168b6d9f1caeb6bab63fdd8998233ad1f04a48eaa7d3c8ecdfb3f69778f3650db5d9f82035639d0543ee8c77d991514962216e7efff",
    "f09278a07d7a0a1e906b76b233aba14832db2655c6634aa26e41e8ece7e4d7c5b7fe8ce3c09cf0661d8f5f86e001bb04723a1d2e0692413e2f758a4c76372316"
    "579b9d4d1c07ae541c38796adbf3fd4d439d187deee6802fcd75697aa29a4f5075529b4c8ef8fc6846bc22144fb70720b7dddf0f8d03fb7777e0a1f2eff52da9",
    "c76c87a2fbf9cdcd3415ccd3abde663ce11effee96f10cb307abf6f719881eb786d73727ee3edad0af4bc3ebf2c8ff4b101cab7cde86f403f009e48082034595"
    "57587ae6e7ff978d07a733e23d87e2e9fa02f95cec67481eda7ce049feed1fff11c78539e1218b0bbece3ebdb547ad7af3dc66798f09757bdb6a18c785cb1617",
    "0e21fdb4f7f93f32f2ff2790f6acf2f615081ee00dc8472e8ca76adef5c0b2bfefcbfa14545b9c2e5f543cf864463c168aa7eb0fe4f38907e7c804d34994f6f4"
    "c3db125e1f707a7c88855311cedbc893c536a5e685422c9f0b055d9417c2e3fc62fdacd9e53ddbd60f5e83e0013e81fc1c05c3fb4e9d3f1c1aeac4d8e7343c20",
    "9faf1d2df108d78f7ffaa988f34a4e8f0f479db4daf4ef6c17bd7434cd97632d6f392fb968fe80e3c3c5fa59b3cb25d7c5871b86fa593f6e0cfad16205d5b782"
    "e3038e0f97130fc7077bdac7f925f32b2893f9a5e8e2f24b4a5df651a250c3f9253bd61b8c64e2fc92cbf050c58746239b891fad65d652dead5cb7b5cb50bb61",
    "2ee69ef880c7f9c5fa5dfafc12a060781fe79766b1233c7f700b1eaaf8c0e5d7392e48fb9a3e2955ed5552b1e0713beaa2f9038e0f17eb77e9f34b738a0f572b"
    "bf84e383dbf0707cb0a77d9c5f32bf8232995f8ad9965f7a1b82077803f2b314b9ea0d067d7e529e4c303935bfd480e2e9fa03f99cd61bce91b980fd3038bf34",
    "473c54f1a118f6a69b0525c126cab9eea692cc34a28d60dc3df1018ff38bf5439d5f7a1d8207f804f2f314e8f79dba1fae04c5d3f506723bf6479ee70ee5bce1"
    "f417b7be8fe70d4e8f0bd1157f95f39704b5136ea618ef763777bcbe87d71d705c98535ee9b2c48517cd2be1b8607e0505c7053478382ed8d3feace7dc9090f6",
    "018f403eaff1fc4e8d11b47b2d835e87907edb6a8f8715dbcec780edd3bed3970ccec790f4030867c53316d8ff0d1480f7c14be281f6e353f0807c163b61b8fe"
    "2f9e3e5368cfc3f8e74feee3bc90d3fd3ccda9a9584c91827195dd5ca1429158452946dce3e7f1f89d2c93f6b66c9b1fff2c04ef4e5f02ce39d27cb953f33a05",
    "289e6e07403ed33c503784f159a06e14044a3fb4f12b7cce91f3fdba506e04d272ea281ecff86491391603e2ce9a8bfc3a1ecfe6575026edefbe6debc16f41f0"
    "006f403e389b7b8915544616486ea9ca89a4bad5bf37dc6ee0d838b00bc5d3f507f2177e1ed07e1e0e58f33c04b479ce68439ff73bfd258e03ce8f03ed806fd5",
    "cfa4d2d96a24a896fde46e26ccf22e3aef0ee771ccf5429dc79976ce292fd36c9ba51954f97b5a6c5538e68ccf0f67c44371eead28291ec0d392a4b787309ff3"
    "a3decf5d9dcf59e8f9ada8ce93ef3e2997a3b5102b3757db7c74adf024946b90847bfc3d1ec7e6fd9fb4bb4fbf872aaf335413d9baacdd7e3d09c5d3ed01c867",
    "b507600ec3c778947efd5fef3f75b55f5f281eaae7785fb12d467345ef0e1725156a5795b39134e3a2f3e79c3e8e2548ffacdadd2b863a28e0bcea3b1377ef6d"
    "e8d707b6e575be0ec107fc01b921afc32a9b2d965393c2768b6764965a581cb8b4efe798e6758cb4a17c3fe7e437fffe3bceeb383d1e64dbcd70a89a68070ab9",
    "d51e15e58595589973515ec7e9f1e010d23f7bedeedbb6f9ffbb103cc017901bfcbf42911cd395c2222f912adbf7c88bf2ffa733e23d81e2e9fa03b93dfeff1c"
    "6d0bb09f8de7bf7f03cf0b9c1e07eab424974bc751aae68f64fc3d5f8b0ce502785e70c5e2c07790bf9f6f88037dedf5fb4ecd03a5a178bade406e8fffefd335",
    "b41484fefeabffa5b1bf77babfaff9cbcc4eaedea69bc946b82015a3db525188bac7dfcfba9e5b33d489b1cf693c02f9dcd67359e5a04d722cadefd8426b8f77"
    "abc8dee76415a6d92239ecefa7befe35640ab9bf3ff908e7799cefeff37bcd96ba9ddcdfdfdbcde7d6e56628b1c690f8f9fe0a8d63addc1df975d83a8355be60",
    "ff1fc01790eb5fa93ed0f8801265c7e6759e41f1747d81dce6f77cc7a91b580cc2e77cffef38fc9cef74bf1fa44364c4cf063bb9c23ed5f026ca9d4abce9a2e7"
    "fc53c8dfe3713d5926edf09bb6e579de34d489b1cf69fc01b921cf2390728d15a8fad1a2f6e39ebe241e68ffe9143c207fa1e705a54eca0cedd1b33cc35c8f31",
    "e533620ef5fe8f93371eeffe09c78339e1a18a07bd6e27192463d5dada32958d8af946ace5efe0787069c735daefafbfb7a15f1f0caf8f6ccb03bd0ae9c79dbe"
    "44e3b5ca89a2b6c1caa9792014eb430ca7650b074c2d627de8e3bd07380fe474ff1f68fab3852617593bdaac1772f1bcda8c4428179dc783c7b179ff6179a013",
    "487bf87d4f6b78f87dcf79e1e9e5aae0e1f73ded691ffb7ff3fecfeb1c07abe7fa9bbcef49ca4be0a97f71e7b2cdeafff7a6e001b93dfeffa1cedb98ed20f4ff"
    "f81c8739e2a1f2ff95fafa4e49e0543a2ff2d19690f055a29b29179ddf8ffdbf79ff61feff7d487b56f9fa16040ff005e406ff4f4a12d7cb0f9c59ac25502a2b",
    "0a496187232966f879bbd6a96f4fe91f905787bd38a89302cd9dbd6f35eb7b649529f8406e4f7c80d3ba80737f2a9f6be0f563a7c70b91cc342a24190fd3be40"
    "4329ad305b65a9e7a2f3dff0f836d7cb9a3ddab73e30eddc1f56512452561c7beecf36144fb713209fe5b94263487bb2005c693681f07da19bdf7d8efdbdd3fd",
    "7da7985462dcd17e6ca52ae7b976239b128e732efafe47ecefcdf5b2668f4baecb1b2d6add00e78de685a797ab8287f346f6b4ff09e4efadf2c819eac4d8e734"
    "1e817caeef91be53610552ee81bbe3fa1d42fa6fab5d9eeee1f980453c3c1fb01b4f2f57050fcf07ec691ffbfd8bf5b36697c591df7f0fd29e553ebf01c1037c",
    "02b9713da12db2744896c95e8c235595115841dfa18df717589a679ad087fcfb254efe53c1f1c2e9f1e23895f085f7a4129fab64e950a99ad8eaf25917bd5fe4"
    "8e7801aa7a5a605cbf4348ff6db5cb7fd0c8f615b08a400a04de5760655f7a9fa9459c2b8dcf9798231eaaef0b68865a597eb5575a5dde95575a612f136cf3db",
    "847bfc3e1ec7e6fd9fd77ba5785f010c0fef2b980d4f2f57050fef2bb0a77d7c9e9cb95e96ec71a3b6e8f326588166ba3b5c4b716a3cc841f174bd81dca67800"
    "e85ac473c4feeb2a3e67c2e9f120914f944a795fb6a8c6c9ec512399deaaad755cb45e8cbf2fd25c2f4bf6784ad9160fbe08c1033c02b9211e30b22c5aca7b5d",
    "d6ef0f9ecbfcc0ca392503e690ce0f7e9b7e82d7059c1e0fba42ae73bc25f19bf16624a604c2a9665b5c76c13e82ff033c6fdbe0",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 55792U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_coderand_info.c) */
