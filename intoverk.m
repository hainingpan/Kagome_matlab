function re=intoverk(n,rx,ry)
global d areafbz
xr=(4*pi/(3*sqrt(3)*d))*sqrt(3)/2;
xcr=(2*pi/(3*sqrt(3)*d))*sqrt(3)/2;
yc=(2*pi)/(3*d)*sqrt(3)/2;
k=yc/(xcr-xr);
b=(xr*yc)/(-xcr + xr);
x=linspace(-xr,xr,40);%fbz
y=linspace(-yc,yc,40);
%x=gpuArray(x);
%y=gpuArray(y);
[X,Y]=meshgrid(x,y);
f=@(kxx,kyy) arrayfun(@(kx,ky) exp(1i*(kx*(sqrt(3)*d/2*2/sqrt(3)-rx)+ky*(d/2*2/sqrt(3)-ry))).*intoverr(n,kx,ky,rx,ry).*(~((abs(kx)<=xr)&(abs(kx)>=xcr)&(abs(ky)>k*abs(kx)+b))),kxx,kyy);
F2=f(X,Y);
re=trapz(y,trapz(x,F2,2));
re=re/areafbz;
%re=gather(re);
end