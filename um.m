function re=um(n,kx,ky,x,y)
global areadiamond  cellnumber Nmax b1 b2;
[tmp1,aa]=cachedcall(@energy,{kx,ky});
sum=0;counter=0;
for j=-Nmax:Nmax
	for k=-Nmax:Nmax
	counter=counter+1;
	sum=sum+aa(counter,n)*exp(1i*((j*b1(1)+k*b2(1))*x+(j*b1(2)+k*b2(2))*y));
	end
end
re=sum/(sqrt(cellnumber*areadiamond));
% jj=-Nmax:Nmax;
%  kk=-Nmax:Nmax;
%  [j,k]=meshgrid(jj,kk);
%  tmp=vec2mat(aa(:,n),2*Nmax+1).*exp(1i*((j*b1(1)+k*b2(1))*x+(j*b1(2)+k*b2(2))*y));
%  re=sum(tmp(:))/(sqrt(cellnumber*areadiamond));
end