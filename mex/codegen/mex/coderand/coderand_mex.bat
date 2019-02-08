@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2018a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2018a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=coderand_mex
set MEX_NAME=coderand_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for coderand > coderand_mex.mki
echo COMPILER=%COMPILER%>> coderand_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> coderand_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> coderand_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> coderand_mex.mki
echo LINKER=%LINKER%>> coderand_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> coderand_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> coderand_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> coderand_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> coderand_mex.mki
echo OMPFLAGS= >> coderand_mex.mki
echo OMPLINKFLAGS= >> coderand_mex.mki
echo EMC_COMPILER=msvc150>> coderand_mex.mki
echo EMC_CONFIG=optim>> coderand_mex.mki
"C:\Program Files\MATLAB\R2018a\bin\win64\gmake" -j 1 -B -f coderand_mex.mk
