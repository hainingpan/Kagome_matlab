%Definition of parameters: (natural units in particle physics) Ref: https://en.wikipedia.org/wiki/Natural_units#%22Natural_units%22_(particle_physics_and_cosmology)
%a: radius of trap
%d: neighbor-to-neighbor distance
%h: height of potential
%mu: effective mass of cavity photon
%g: exciton-polariton coupling strength
%mx: effective mass of exciton
%eph: offset energy of cavity photon(see function:energycp)
%eexc: offset energy of exciton
%dtn: detuning delta
%Nmax: order of Fourier coeefficient
%cellnumber: size of sample
%NN: discretization of real space
%Nk: discretization of momentum space
%b1: reciprocal unit vector 1
%b2: reciprocal unit vector 2
%areadiamond: area of one unit cell in real space
%gammakraw: linewidth on k axis
%gamma: linewidth on energy axis


parameters=struct('a',5.076,'a2',5.076,'a3',5.076,'d',15,'h',5e-3,'h2',4e-3,'h3',3e-3,'mu',24,'g',5.75e-3,'mx',400*3.6*5.11,'eph',0,'eexc',0,'dtn',-17.9/1000,'Nmax',5,'cellnumber',400,'NN',100,'Nk',100,'gammakraw',2.74E-01*0.5,'gamma',1.87E-05);

parameters.b1=2*pi/parameters.d*sqrt(3)/2*[1/sqrt(3) -1/3];
parameters.b2=2*pi/parameters.d*sqrt(3)/2*[0 2/3];
parameters.areadiamond=3*sqrt(3)/2*parameters.d^2*4/3;
parameters.xr=(2*pi)/(3*parameters.d);
parameters.xcr=(2*pi)/(6*parameters.d);
parameters.yc=(pi)/(sqrt(3)*parameters.d);
% Fourier Transformation
parameters.coarr=zeros(4*parameters.Nmax+1);
for n=-2*parameters.Nmax:2*parameters.Nmax
    for m=-2*parameters.Nmax:2*parameters.Nmax
        parameters.coarr(n+2*parameters.Nmax+1,m+2*parameters.Nmax+1)=coa_asym(n,m,parameters);
    end
end
[X,Y]=meshgrid(-parameters.Nmax:parameters.Nmax,-parameters.Nmax:parameters.Nmax);
parameters.tmp=zeros(2*parameters.Nmax+1,2*parameters.Nmax+1);
parameters.tmp(:,:,1)=X;
parameters.tmp(:,:,2)=Y;
parameters.tmp=reshape(parameters.tmp,[(2*parameters.Nmax+1)^2,2]);
tmp2=zeros((2*parameters.Nmax+1)^2,(2*parameters.Nmax+1)^2,2);
for j=1:(2*parameters.Nmax+1)^2
    tmp2(j,:,:)=parameters.tmp;
end
N=tmp2(:,:,1)-transpose(tmp2(:,:,1))+2*parameters.Nmax+1;
M=tmp2(:,:,2)-transpose(tmp2(:,:,2))+2*parameters.Nmax+1;
tmp3=(M-1)*(4*parameters.Nmax+1)+N;
parameters.offdiag=parameters.coarr(tmp3);