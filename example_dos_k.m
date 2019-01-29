%example of dos plot along ky.
d=parameters.d;
den=600;
eden=600;
%range of energy
enlist=linspace(-0.005,0.020,eden);
%energy of momentum
klist=linspace(-4*(pi)/(sqrt(3)*d),4*(pi)/(sqrt(3)*d),den);
intensitymap=zeros(den,eden);    
 parfor ii=1:den
     ky=klist(ii);  
     intensitymap(ii,:)=dos_k(0,ky,enlist,1e-5,parameters);
 end
figure
surf(klist/((pi)/(sqrt(3)*d)),1000*enlist,log(intensitymap)','FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
xlabel('normalized k_y')
ylabel('energy(meV)')
view(2);
colorbar