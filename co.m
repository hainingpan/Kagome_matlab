%Fourier Series Coefficient
function re=co(n,m)
global d Nmax b1 b2 areadiamond
x=linspace(0,3*d,1000);
y=linspace(0,sqrt(3)*d,1000);
%x=gpuArray(x);
%y=gpuArray(y);
[X,Y]=meshgrid(x,y);
f=@(x,y) vm(x,y).*exp(-1i*((n*b1(1)+m*b2(1))*x+(n*b1(2)+m*b2(2))*y)).*((0<=x)&(x<=sqrt(3)*d/2*2/sqrt(3))&(0<=y)&(y<=sqrt(3)*x)|(sqrt(3)*d/2*2/sqrt(3)<=x)&(x<=sqrt(3)*d*2/sqrt(3))&(y>=0)&(y<=3*d/2*2/sqrt(3))|(x>=sqrt(3)*d*2/sqrt(3))&(x<=3*sqrt(3)*d/2*2/sqrt(3))&(y<=3*d/2*2/sqrt(3))&(y>=sqrt(3)*x-3*d*2/sqrt(3)));
F=f(X,Y);
if ((abs(n)<=Nmax)&&(abs(m)<=Nmax))
    re=trapz(y,trapz(x,F,2))/areadiamond;
else
    re=0;
end
%re=gather(re);
end
       