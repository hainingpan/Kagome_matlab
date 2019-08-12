function re=um(n,kx,ky,x,y,parameters)
%Bloch wavefunction(without exp(-ikr)part ) in real space at (kx,ky) unnormalized.
%kx,ky should be scalars. 
%x,y can be grids
areadiamond=parameters.areadiamond;
cellnumber=parameters.cellnumber;
Nmax=parameters.Nmax;
b1=parameters.b1;
b2=parameters.b2;
d=parameters.d;
[narray,~]=size(x);
[~,aa]=energy(kx,ky,parameters);
total=0;counter=0;
% 
% 
%cpu
pages=(2*Nmax+1)*(2*Nmax+1);
aa_g=aa(:,n);
sum_g=zeros(narray,narray,pages);
aa3_g=zeros(1,1,pages);
aa3_g(:)=aa_g;
jsum_g=b1(1)*x+b1(2)*y;
ksum_g=b2(1)*x+b2(2)*y;
jindexset=repmat(-Nmax:Nmax,2*Nmax+1,1);
jindex=jindexset(:);
iindexset=transpose(jindexset);
kindex=iindexset(:);
jindex_g=zeros(1,1,pages);
jindex_g(:)=jindex;
kindex_g=zeros(1,1,pages);
kindex_g(:)=kindex;
exp_g=exp(1i*(jindex_g.*jsum_g+kindex_g.*ksum_g));
sum_g=exp_g.*aa3_g;
total=sum(sum_g,3);

% % gpu
% pages=(2*Nmax+1)*(2*Nmax+1);
% aa_g=gpuArray(aa(:,n));
% sum_g=zeros(narray,narray,pages,'gpuArray');
% XX_g=gpuArray(x);
% YY_g=gpuArray(y);
% aa3_g=zeros(1,1,pages,'gpuArray');
% aa3_g(:)=aa_g;
% jsum_g=b1(1)*XX_g+b1(2)*YY_g;
% ksum_g=b2(1)*XX_g+b2(2)*YY_g;
% jindexset=repmat(-Nmax:Nmax,2*Nmax+1,1);
% jindex=jindexset(:);
% iindexset=transpose(jindexset);
% kindex=iindexset(:);
% jindex_g=zeros(1,1,pages,'gpuArray');
% jindex_g(:)=jindex;
% kindex_g=zeros(1,1,pages,'gpuArray');
% kindex_g(:)=kindex;
% exp_g=exp(1i*(jindex_g.*jsum_g+kindex_g.*ksum_g));
% sum_g=exp_g.*aa3_g;
% total=gather(sum(sum_g,3));
% 
re=total;
% normalized wavefunction
% re=total/(sqrt(cellnumber*areadiamond)).*(abs(y-sqrt(3)*x)<3*sqrt(cellnumber)*d/2&abs(y)<3/4*sqrt(cellnumber)*d);
end