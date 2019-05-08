h=Htb(parameters);
[vec,val]=eig(full(h));
val=diag(val);
vec2=reshape(vec,[sqrt(length(h)),sqrt(length(h)),length(h)]);
vecf=fft2(vec2);
for i=1:length(h)
vecf(:,:,i)=fftshift(vecf(:,:,i));
end

enlist=-5e-3:0.05e-3:15e-3;
enmapk=zeros(sqrt(length(h)),sqrt(length(h)),length(enlist));
enmapr=zeros(sqrt(length(h)),sqrt(length(h)),length(enlist));

delta=1e-4;
for i=1:length(enlist)
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(h)]);
psif=abs(vecf).^2;
enmapk(:,:,i)=sum(deltaf.*psif,3);
end

for i=1:length(enlist)
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(h)]);
psi=abs(vec2).^2;
enmapr(:,:,i)=sum(deltaf.*psi,3);
end

save(sprintf("NN%dCN%d.mat",parameters.NN,parameters.cellnumber));
% figure;surf(sqrt(3)*(-floor(parameters.NN/2):floor((parameters.NN-1)/2))/(2*sqrt(parameters.cellnumber)),enlist,squeeze(log(enmapk(:,parameters.NN/2,:)))','edgecolor','none');view(2);
% xlim([-4,4]);

