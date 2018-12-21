function [eiv,vec]=energy(kx,ky,parameters)
%Energy at (kx,ky), no coupling
tmp=parameters.tmp;
d=parameters.d;
offdiag=parameters.offdiag;
mu=parameters.mu;
Nmax=parameters.Nmax;
tmp4=[kx,ky]+[pi/(d),2*pi/(sqrt(3)*d)].*tmp-[zeros(size(tmp(:,2))),tmp(:,1)].*[0,pi/(sqrt(3)*d)];
H=1/(2*mu)*eye((2*Nmax+1)^2).*(tmp4*tmp4')+offdiag;
[vec,ei]=eig(H);
eiv=diag(ei);
end