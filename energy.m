function [eiv,vec]=energy(kx,ky,parameters)
%Energy at (kx,ky), no coupling
tmp=parameters.tmp;
d=parameters.d;
b1=parameters.b1;
b2=parameters.b2;
offdiag=parameters.offdiag;
mu=parameters.mu;
Nmax=parameters.Nmax;
% tmp4=[kx,ky]+[pi/(d),2*pi/(sqrt(3)*d)].*tmp-[zeros(size(tmp(:,2))),tmp(:,1)].*[0,pi/(sqrt(3)*d)];
tmp4=[kx,ky]+[b1(1),b1(2)].*[tmp(:,1),tmp(:,1)]+[b2(1),b2(2)].*[tmp(:,2),tmp(:,2)];
% H=1/(2*mu)*eye((2*Nmax+1)^2).*(tmp4*tmp4')+offdiag;
H=1/(2*mu)*diag(dot(tmp4,tmp4,2))+offdiag;
[vec,ei]=eig(H);
eiv=diag(ei);
end