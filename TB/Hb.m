function h=Hb(k,v0)
N=5;
nrange=-N:N;
% m=1;
a=1;
% v0=0;
vlist=v0*ones(2*N+1,1);
diagonal=1/2*(k+nrange*2*pi/a).^2;
h=spdiags([vlist,diagonal',vlist],[-1,0,1],2*N+1,2*N+1);
return