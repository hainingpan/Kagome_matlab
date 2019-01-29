function re=ldos(omega,delta,parameters)
% d=parameters.d;
NN=parameters.NN;
ham=Htb(parameters);
G=inv(full((omega+1i*delta)*speye(NN^2)-ham));
% G=sparseinv()
Gdiag=diag(G);
re=-1/pi*imag(reshape(Gdiag,NN,NN));
end