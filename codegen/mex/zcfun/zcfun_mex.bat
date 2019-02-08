@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2018a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2018a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=zcfun_mex
set MEX_NAME=zcfun_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for zcfun > zcfun_mex.mki
echo COMPILER=%COMPILER%>> zcfun_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> zcfun_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> zcfun_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> zcfun_mex.mki
echo LINKER=%LINKER%>> zcfun_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> zcfun_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> zcfun_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> zcfun_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> zcfun_mex.mki
echo OMPFLAGS= >> zcfun_mex.mki
echo OMPLINKFLAGS= >> zcfun_mex.mki
echo EMC_COMPILER=msvc150>> zcfun_mex.mki
echo EMC_CONFIG=optim>> zcfun_mex.mki
"C:\Program Files\MATLAB\R2018a\bin\win64\gmake" -j 1 -B -f zcfun_mex.mk
