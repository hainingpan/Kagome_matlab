function ham=Htb(parameters)
a=parameters.a;
d=parameters.d;
h=parameters.h;
mu=parameters.mu;
NN=parameters.NN;
latticeconst=sqrt(parameters.cellnumber)*(2*d)/NN;

t=1/(2*mu*latticeconst^2);
diag=spdiags([ones(NN,1)  -4*ones(NN,1) ones(NN,1)],[-1,0,1],NN,NN);
eyesm=speye(NN);


xlist=(1:NN)*latticeconst;
ylist=(1:NN)*latticeconst;
[xgrid,ygrid]=meshgrid(xlist,ylist);
re=vm(xgrid,ygrid,parameters);
ham=-t*(kron(diag,eyesm)+kron(eyesm,spdiags([ones(NN,1) ones(NN,1)],[-1,1],NN,NN)))+spdiags(re(:),0,NN^2,NN^2);
end