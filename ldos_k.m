% h=Htb(parameters);
% [vec,val]=eig(full(h));
% val=diag(val);
% vec2=reshape(vec,[sqrt(length(h)),sqrt(length(h)),length(h)]);
% vecf=fft2(vec2);
% for i=1:length(h)
% vecf(:,:,i)=fftshift(vecf(:,:,i));
% end
% 
enlist=-5e-3:0.05e-3:5e-3;
enmap=zeros(sqrt(length(h)),sqrt(length(h)),length(enlist));

delta=1e-5;
for i=1:length(enlist)
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(h)]);
psif=abs(vecf).^2;
enmap(:,:,i)=sum(deltaf.*psif,3);
end
figure;surf(sqrt(3)*((1:parameters.NN)-(parameters.NN+1)/2)/(2*sqrt(parameters.cellnumber)),enlist,squeeze(enmap(:,parameters.NN/2,:))','edgecolor','none');view(2);
xlim([-4,4]);


