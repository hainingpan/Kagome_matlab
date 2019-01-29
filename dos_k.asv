function re=dos_k(kx,ky,omega,delta,parameters)
NN=parameters.NN;

tmp=parameters.tmp;
d=parameters.d;
offdiag=parameters.offdiag;
mu=parameters.mu;
Nmax=parameters.Nmax;
tmp4=[kx,ky]+[pi/(d),2*pi/(sqrt(3)*d)].*tmp-[zeros(size(tmp(:,2))),tmp(:,1)].*[0,pi/(sqrt(3)*d)];
ham=1/(2*mu)*eye((2*Nmax+1)^2).*(tmp4*tmp4')+offdiag;
% 
enlist=eig(ham);
[omegagrid,engrid]=meshgrid(omega,enlist);
re=-imag(sum(1./((omegagrid+1i*delta)-engrid),1))/pi;
% re=-imag(sum(1./((omega+1i*delta)-enlist)))/pi;

% G=inv((omega+1i*delta)*eye((2*Nmax+1)*(2*Nmax+1))-ham);
% % G=sparseinv()
% re=-imag(trace(G))/pi;
end