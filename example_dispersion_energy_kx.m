%example of energy dispersion along kx without coupling
% function re=example_dispersion_energy_kx(parameters)
d=parameters.d;
Nmax=parameters.Nmax;
den=25;
klist=linspace(-1*(2*pi/(3*d)),1*(2*pi/(3*d)),den);
eivmap=zeros((2*Nmax+1)^2,den);
parfor kindex=1:den
    k=klist(kindex);
    eiv=energy(k,0,parameters);
    eivmap(:,kindex)=eiv;
end
re=eivmap;
figure;
plot(klist/(2*pi/(3*d)),1000*eivmap(1:20,:));
xlabel('normalized k_x/(GK)')
ylabel('energy(meV)')
title('k_y=0');
saveas(gcf,'./data/fig/a11p21p4/kxdispersion.png')