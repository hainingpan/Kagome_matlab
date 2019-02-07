function re=ldos(omega,delta,parameters)
% d=parameters.d;
NN=parameters.NN;
ham=Htb(parameters);
K=(omega+1i*delta)*speye(NN^2)-ham;
% G=inv(full((omega+1i*delta)*speye(NN^2)-ham));
G=spinvl(K);
% Gdiag=diag(G);
re=-1/pi*imag(reshape(G,NN,NN));
end