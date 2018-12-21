global a d h mu hbar e c Nmax cellnumber b1 b2 areadiamond coarr areafbz tmp offdiag;
a=1*5.076;
d=14.212799999999998;
h =0.004866642699752135;
mu =23.58137200467744;
hbar=1;
e=1;
c=1;
Nmax=5;
cellnumber=100;
b1=2*pi/d*sqrt(3)/2*[1/sqrt(3) -1/3];
b2=2*pi/d*sqrt(3)/2*[0 2/3];
areafbz=8*pi^2/(3*sqrt(3)*d^2)*3/4;
areadiamond=3*sqrt(3)/2*d^2*4/3;
% Fourier Transformation
coarr=zeros(4*Nmax+1);
for n=-2*Nmax:2*Nmax
    for m=-2*Nmax:2*Nmax
        coarr(n+2*Nmax+1,m+2*Nmax+1)=coa(n,m);
    end
end
[X,Y]=meshgrid(-Nmax:Nmax,-Nmax:Nmax);
tmp=zeros(2*Nmax+1,2*Nmax+1);
tmp(:,:,1)=X;
tmp(:,:,2)=Y;
tmp=reshape(tmp,[(2*Nmax+1)^2,2]);
tmp2=zeros((2*Nmax+1)^2,(2*Nmax+1)^2,2);
for j=1:(2*Nmax+1)^2
    tmp2(j,:,:)=tmp;
end
N=tmp2(:,:,1)-transpose(tmp2(:,:,1))+2*Nmax+1;
M=tmp2(:,:,2)-transpose(tmp2(:,:,2))+2*Nmax+1;
tmp3=(M-1)*(4*Nmax+1)+N;
offdiag=coarr(tmp3);
