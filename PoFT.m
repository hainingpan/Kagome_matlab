%Fourier Transformation of Potential
function res=PoFT(x,y)
global d Nmax coarr data
nn=-Nmax:Nmax;
mm=-Nmax:Nmax;
[n,m]=meshgrid(nn,mm);
tmp1=exp(1i*(2*n*pi*x/(sqrt(3)*d)+((4*m*pi)/(3*d)-(2*n*pi)/(3*d))*y));
tmp2=coarr(nn+2*Nmax+1,mm+2*Nmax+1);
tmp=tmp1.*tmp2;
res=sum(tmp(:));
end
