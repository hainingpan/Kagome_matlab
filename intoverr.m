function re=intoverr(n,kx,ky,rx,ry)
global cellnumber d
pp=[3/4*sqrt(3*cellnumber)*d*2/sqrt(3) 3*sqrt(cellnumber)*d/4*2/sqrt(3)];
np=[-sqrt(3*cellnumber)*d/4*2/sqrt(3) 3*sqrt(cellnumber)*d/4*2/sqrt(3)];
nn=[-3/4*sqrt(3*cellnumber)*d*2/sqrt(3) -3/4*sqrt(cellnumber)*d*2/sqrt(3)];
pn=[sqrt(3*cellnumber)*d/4*2/sqrt(3) -3*d/4*sqrt(cellnumber)*2/sqrt(3)];
x=linspace(nn(1),pp(1),100);
y=linspace(nn(2),pp(2),100);
% x=gpuArray(x);
% y=gpuArray(y);
[X,Y]=meshgrid(x,y);
F=integrand(n,kx,ky,rx,ry,X,Y);
re=trapz(y,trapz(x,F,2));
% re=gather(re);
end
