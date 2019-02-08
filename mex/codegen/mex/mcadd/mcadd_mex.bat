@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2018a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2018a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=mcadd_mex
set MEX_NAME=mcadd_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for mcadd > mcadd_mex.mki
echo COMPILER=%COMPILER%>> mcadd_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> mcadd_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> mcadd_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> mcadd_mex.mki
echo LINKER=%LINKER%>> mcadd_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> mcadd_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> mcadd_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> mcadd_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> mcadd_mex.mki
echo OMPFLAGS= >> mcadd_mex.mki
echo OMPLINKFLAGS= >> mcadd_mex.mki
echo EMC_COMPILER=msvc150>> mcadd_mex.mki
echo EMC_CONFIG=optim>> mcadd_mex.mki
"C:\Program Files\MATLAB\R2018a\bin\win64\gmake" -j 1 -B -f mcadd_mex.mk
