function ham=Htbcp(parameters)
a=parameters.a;
d=parameters.d;
h=parameters.h;
mu=parameters.mu;
mph=parameters.mph;
mx=parameters.mx;
NN=parameters.NN;
g=parameters.g;
eph=parameters.eph;
eexc=parameters.eexc;
dtn=parameters.dtn;
latticeconst=sqrt(parameters.cellnumber)*(2*d)/NN;

t=1/(2*mph*latticeconst^2);
diag=spdiags([ones(NN,1)  -4*ones(NN,1) ones(NN,1)],[-1,0,1],NN,NN);
eyesm=speye(NN);

tx=1/(2*mx*latticeconst^2);

xlist=(1:NN)*latticeconst;
ylist=(1:NN)*latticeconst;
[xgrid,ygrid]=meshgrid(xlist,ylist);
re=vm(xgrid,ygrid,parameters);
hamph=-t*(kron(diag,eyesm)+kron(eyesm,spdiags([ones(NN,1) ones(NN,1)],[-1,1],NN,NN)))+spdiags(re(:)+eph+dtn,0,NN^2,NN^2);
hamx=-tx*(kron(diag,eyesm)+kron(eyesm,spdiags([ones(NN,1) ones(NN,1)],[-1,1],NN,NN)))+(eexc)*speye(NN^2,NN^2);
hcp=g*speye(NN^2,NN^2);
ham=[hamph,hcp;hcp,hamx];
end