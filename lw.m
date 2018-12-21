function re=lw(kx,ky,epsilon,parameters)
%linewidth plot at kx,ky and energy epsilon
Nmax=parameters.Nmax;
d=parameters.d;
b1=parameters.b1;
b2=parameters.b2;
gammak=parameters.gammakraw/d;
gamma=parameters.gamma;
xr=(2*pi)/(3*d);
xcr=(2*pi)/(6*d);
yc=(pi)/(sqrt(3)*d);

mband=2*(2*Nmax+1)^2;

tot=0;
[KX,KY]=meshgrid(linspace(-xr,xr,21),linspace(-yc,yc,21));
for kk=1:length(KX(:))
    kx0=KX(kk);
    ky0=KY(kk);
    % for no coupling
    % [evalue,evector]=energy(kx0,ky0,parameters);
    % for coupling
    [evalue,evector]=energycp(kx0,ky0,parameters);
    evalueset=(abs(evector(1:(2*Nmax+1)^2,1:mband)).^2);
    [epsilonmat,evaluemat]=meshgrid(epsilon,evalue(1:mband)); 
    lorentz=1./((epsilonmat-evaluemat).^2+gamma^2);    

    linewidthset=zeros(2*Nmax+1);
    for i=-Nmax:Nmax
        for j=-Nmax:Nmax        
            linewidthset(j+Nmax+1,i+Nmax+1)= exp(-norm([kx,ky]-([kx0,ky0]+[i,j]*[b1;b2]))^2/gammak^2);
        end
    end    
    tot=tot+linewidthset(:)'*evalueset*lorentz;
end
re=tot;
end
