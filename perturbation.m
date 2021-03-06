function perturbation(g,val,vec,vecf,parameters)
% g=0.01;
pert=sum(abs(vec).^4,1);
fprintf("perturbation term, max:%f, min:%f, mean:%f\n Energy max:%f, min%f ",1000*g*max(pert),1000*g*min(pert),1000*g*mean(pert),1000*max(val),min(val));

val=val+g*pert';

vec2=reshape(vec,[sqrt(length(vec)),sqrt(length(vec)),length(vec)]);
% vecf=fft2(vec2);
% parfor i=1:length(vec)
% fprintf("i_f=%d\n",i);
% vecf(:,:,i)=fftshift(vecf(:,:,i));
% end

enlist=-5e-3:0.05e-3:30e-3;
enmapk=zeros(sqrt(length(vec)),sqrt(length(vec)),length(enlist));
enmapr=zeros(sqrt(length(vec)),sqrt(length(vec)),length(enlist));

delta=1e-4;
psif=abs(vecf).^2;
parfor i=1:length(enlist)
fprintf("i_k=%d\n",i);
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(vec)]);
enmapk(:,:,i)=sum(deltaf.*psif,3);
end

psi=abs(vec2).^2;
parfor i=1:length(enlist)
fprintf("i_r=%d\n",i);
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(vec)]);
enmapr(:,:,i)=sum(deltaf.*psi,3);
end

save(sprintf("NN%dCN%dg%.3f.mat",parameters.NN,parameters.cellnumber,g),'-v7.3');
klist=(-floor(parameters.NN/2):floor((parameters.NN-1)/2))*2*pi/(2*parameters.d*sqrt(parameters.cellnumber)/5.076);
figure;surf(sqrt(3)*(-floor(parameters.NN/2):floor((parameters.NN-1)/2))/(2*sqrt(parameters.cellnumber)),1000*enlist,squeeze(log(enmapk(:,parameters.NN/2,:)))','edgecolor','none');view(2);
colorbar;
xlim([-4,4]);
savefig(gcf,sprintf("NN%dCN%dg%.3f.fig",parameters.NN,parameters.cellnumber,g));
filelock=sprintf("Ekg%.4f",g);
if ~exist(filelock,'dir')
    mkdir(filelock);
end
for i=1:length(enlist)
surf(klist,klist,log(enmapk(:,:,i)'+50),'edgecolor','none');view(2);
axis square;
axis tight
xlabel('k_x(1/\mum)')
ylabel('k_y(1/\mum)')
colorbar
caxis([log(min(enmapk(:))+50),log(max(enmapk(:))+50)])
title(sprintf("E=%.2f(meV)",1000*enlist(i)));
axis([-5,5,-5,5]);
saveas(gcf,sprintf("Ekg%.4f//E%.2f.png",g,1000*enlist(i)));
end
filelocr=sprintf("Erg%.4f",g);
if ~exist(filelocr,'dir')
    mkdir(filelocr);
end

rlist=linspace(0,sqrt(parameters.cellnumber)*2*parameters.d/5.076,parameters.NN);
for i=1:length(enlist)
surf(rlist,rlist,log(enmapr(:,:,i)'+50),'edgecolor','none');view(2);
axis square;
axis tight
xlabel('x(\mum)')
ylabel('y(\mum)')
colorbar
caxis([log(min(enmapr(:))+50),log(max(enmapr(:))+50)]);
title(sprintf("E=%.2f(meV)",1000*enlist(i)));
saveas(gcf,sprintf("Erg%.4f//E%.2f.png",g,1000*enlist(i)));
end
end
