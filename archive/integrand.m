function re=integrand(n,kx,ky,rx,ry,x,y)
global cellnumber d
pp1=[3/4*sqrt(3*cellnumber)*d*2/sqrt(3) 3*sqrt(cellnumber)*d/4*2/sqrt(3)];
np1=[-sqrt(3*cellnumber)*d/4*2/sqrt(3) 3*sqrt(cellnumber)*d/4*2/sqrt(3)];
nn1=[-3/4*sqrt(3*cellnumber)*d*2/sqrt(3) -3/4*sqrt(cellnumber)*d*2/sqrt(3)];
pn1=[sqrt(3*cellnumber)*d/4*2/sqrt(3) -3*d/4*sqrt(cellnumber)*2/sqrt(3)];
pp2=pp1+[rx ry];
np2=np1+[rx ry];
nn2=nn1+[rx ry];
pn2=pn1+[rx ry];
re=vm(x,y).*conj(um(n,kx,ky,x,y)).*um(n,kx,ky,x-rx,y-ry).*(((nn1(1)<=x)&(np1(1)>=x)&(y>=nn1(2))&(y<=3/2*d*sqrt(cellnumber)*2/sqrt(3)+sqrt(3)*x)|(np1(1)<=x)&(x<=pn1(1))&(y>=nn1(2))&(y<=np1(2))|(pn1(1)<=x)&(x<=pp1(1))&(y>=sqrt(3)*x-3/2*d*sqrt(cellnumber)*2/sqrt(3))&(y<=pp1(2))).*((nn2(1)<=x)&(np2(1)>=x)&(y>=nn2(2))&(y<=3/2*d*sqrt(cellnumber)*2/sqrt(3)+ry+sqrt(3)*(x-rx))|(np2(1)<=x)&(x<=pn2(1))&(y>=nn2(2))&(y<=np2(2))|(pn2(1)<=x)&(x<=pp2(1))&(y>=sqrt(3)*(x-rx)-3/2*d*sqrt(cellnumber)*2/sqrt(3)+ry)&(y<=pp2(2))));
end