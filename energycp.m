function [eiv,vec]=energycp(kx,ky,parameters)
%Energy at (kx,ky), with coupling
tmp=parameters.tmp;
d=parameters.d;
offdiag=parameters.offdiag;
Nmax=parameters.Nmax;
eph=parameters.eph;
eexc=parameters.eexc;
mx=parameters.mx;
dtn=parameters.dtn;
g=parameters.g;
mph=18.396; %mass of 100% cavity photon 
tmp4=[kx,ky]+[pi/(d),2*pi/(sqrt(3)*d)].*tmp-[zeros(size(tmp(:,2))),tmp(:,1)].*[0,pi/(sqrt(3)*d)];
H11=(eph+dtn+1/(2*mph).*(tmp4*tmp4')).*eye((2*Nmax+1)^2)+offdiag;
H12=g.*eye((2*Nmax+1)^2);
H22=(eexc+1/(2*mx).*(tmp4*tmp4')).*eye((2*Nmax+1)^2);
H=[H11,H12;H12,H22];
[vec,ei]=eig(H);
eiv=diag(ei);
end
