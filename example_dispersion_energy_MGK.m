d=parameters.d;
Nmax=parameters.Nmax;
den=25;
kxlist=linspace(0,1*(2*pi/(3*d)),den);
eivmap1=zeros((2*Nmax+1)^2,den);w
parfor kindex=1:den
    k=kxlist(kindex);
    eiv=energy(k,0,parameters);
    eivmap1(:,kindex)=eiv;
end
kylist=linspace(-(pi)/(sqrt(3)*d),0,den);
eivmap2=zeros((2*Nmax+1)^2,den);
parfor kindex=1:den
    k=kylist(kindex);
    eiv=energy(0,k,parameters);
    eivmap2(:,kindex)=eiv;
end
figure;
eivmap=[eivmap2,eivmap1];
klist=[kylist/((pi)/(sqrt(3)*d)),kxlist/(2*pi/(3*d))];
plot(klist,1000*eivmap(1:20,:),'black');
xticks([-1,0,1]);
xticklabels({'M','\Gamma','K'});
% xlabel('normalized k_x/(GK)')
ylabel('energy(meV)')
