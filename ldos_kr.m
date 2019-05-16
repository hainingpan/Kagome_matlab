h=Htb(parameters);
tic;
fprintf("diagonalizing...\n");
[vec,val]=eig(full(h));
toc;
val=diag(val);
vec2=reshape(vec,[sqrt(length(h)),sqrt(length(h)),length(h)]);
vecf=fft2(vec2);
parfor i=1:length(h)
fprintf("i_f=%d\n",i);
vecf(:,:,i)=fftshift(vecf(:,:,i));
end

enlist=-5e-3:0.05e-3:15e-3;
enmapk=zeros(sqrt(length(h)),sqrt(length(h)),length(enlist));
enmapr=zeros(sqrt(length(h)),sqrt(length(h)),length(enlist));

delta=1e-4;
parfor i=1:length(enlist)
fprintf("i_k=%d\n",i);
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(h)]);
psif=abs(vecf).^2;
enmapk(:,:,i)=sum(deltaf.*psif,3);
end

parfor i=1:length(enlist)
fprintf("i_r=%d\n",i);
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(h)]);
psi=abs(vec2).^2;
enmapr(:,:,i)=sum(deltaf.*psi,3);
end

save(sprintf("NN%dCN%d.mat",parameters.NN,parameters.cellnumber),'-v7.3');
% figure;surf(sqrt(3)*(-floor(parameters.NN/2):floor((parameters.NN-1)/2))/(2*sqrt(parameters.cellnumber)),1000*enlist,squeeze(log(enmapk(:,parameters.NN/2,:)))','edgecolor','none');view(2);
% xlim([-4,4]);
klist=(-floor(parameters.NN/2):floor((parameters.NN-1)/2))*2*pi/(2*parameters.d*sqrt(parameters.cellnumber)/5.076);

for i=1:length(enlist)
surf(klist,klist,log(enmapk(:,:,i)'+50),'edgecolor','none');view(2);
axis square;
axis tight
xlabel('k_x(1/\mum)')
ylabel('k_y(1/\mum)')
colorbar
title(sprintf("E=%.2f(meV)",1000*enlist(i)));
axis([-5,5,-5,5]);
saveas(gcf,sprintf("Ek\\E%.2f.png",1000*enlist(i)));
end

rlist=linspace(0,sqrt(parameters.cellnumber)*2*parameters.d/5.076,parameters.NN);
for i=1:length(enlist)
surf(rlist,rlist,log(enmapr(:,:,i)'+50),'edgecolor','none');view(2);
axis square;
axis tight
xlabel('x(\mum)')
ylabel('y(\mum)')
colorbar
title(sprintf("E=%.2f(meV)",1000*enlist(i)));
saveas(gcf,sprintf("Er\\E%.2f.png",1000*enlist(i)));
end
