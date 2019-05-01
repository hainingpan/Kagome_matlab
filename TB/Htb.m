function h=Htb(L,a,v0)
% a=0.1;
% L=100;
% v0=0;
n=floor(L/a);
vlist=2*v0*cos(linspace(0,L,n));
t=1/(2*a^2);
h=spdiags([-t*ones(n,1),2*t+vlist',-t*ones(n,1)],-1:1,n,n);
end