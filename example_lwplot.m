%example of linewidth plot along ky.
d=parameters.d;
den=200;
eden=200;
%range of energy
enlist=linspace(-0.02,0.015,eden);
%energy of momentum
klist=linspace(-4*(pi)/(sqrt(3)*d),4*(pi)/(sqrt(3)*d),den);
intensitymap=zeros(den,eden);    
 parfor ii=1:den
     ky=klist(ii);  
%      kx=klist(ii);
     intensitymap(ii,:)=lw(0,ky,enlist,parameters);
 end
surf(klist/((pi)/(sqrt(3)*d)),1000*enlist,log(intensitymap)','FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
xlabel('normalized k_y')
ylabel('energy(meV)')
view(2);
colorbar