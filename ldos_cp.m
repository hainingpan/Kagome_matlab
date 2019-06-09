% h=Htbcp(parameters);
% tic;
% fprintf("diagonalizing...\n");
% [vec,val]=eig(full(h));
% toc;
% val=diag(val);
% vec=vec(1:parameters.NN^2,1:parameters.NN^2);
% val=val(1:parameters.NN^2);
% vec2=reshape(vec,[parameters.NN,parameters.NN,parameters.NN^2]);
% vecf=fft2(vec2);
% parfor i=1:parameters.NN^2
% fprintf("i_f=%d\n",i);
% vecf(:,:,i)=fftshift(vecf(:,:,i));
% end
% 
% enlist=-15e-3:0.05e-3:15e-3;
% enmapk=zeros(parameters.NN,parameters.NN,length(enlist));
% enmapr=zeros(parameters.NN,parameters.NN,length(enlist));
% 
% delta=1e-4;
% 
% psif=abs(vecf).^2;
% parfor i=1:length(enlist)
% fprintf("i_k=%d\n",i);
% deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,parameters.NN^2]);
% enmapk(:,:,i)=sum(deltaf.*psif,3);
% end
% 
% psi=abs(vec2).^2;
% parfor i=1:length(enlist)
% fprintf("i_r=%d\n",i);
% deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,parameters.NN^2]);
% enmapr(:,:,i)=sum(deltaf.*psi,3);
% end
% 
% save(sprintf("NN%dCN%dD%.1f.mat",parameters.NN,parameters.cellnumber,1000*parameters.dtn),'-v7.3');
% 
% figure;surf(sqrt(3)*(-floor(parameters.NN/2):floor((parameters.NN-1)/2))/(2*sqrt(parameters.cellnumber)),1000*enlist,squeeze(log(enmapk(:,parameters.NN/2,:)))','edgecolor','none');view(2);
% xlim([-4,4]);
% colorbar;
% klist=(-floor(parameters.NN/2):floor((parameters.NN-1)/2))*2*pi/(2*parameters.d*sqrt(parameters.cellnumber)/5.076);
% savefig(gcf,sprintf("NN%dCN%dD%.1f.fig",parameters.NN,parameters.cellnumber,1000*parameters.dtn));

filelock=sprintf("EkdD%.1f",1000*parameters.dtn);
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
saveas(gcf,sprintf("EkdD%.1f//E%.2f.png",1000*parameters.dtn,1000*enlist(i)));
end

filelocr=sprintf("ErdD%.1f",1000*parameters.dtn);
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
saveas(gcf,sprintf("ErdD%.1f//E%.2f.png",1000*parameters.dtn,1000*enlist(i)));
end
