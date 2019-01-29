function re=ldos(omega,delta,parameters)
d=parameters.d;
NN=parameters.NN;
latticeconst=2*d/20;
ham=Htb(latticeconst,parameters);
G=inv(full((omega+1i*delta)*speye(NN^2)-ham));
% G=sparseinv()
Gdiag=diag(G);
re=-1/pi*imag(reshape(Gdiag,NN,NN));
end