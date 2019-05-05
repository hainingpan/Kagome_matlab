delta=1e-1;
L=100;
a=.1;
v0=1;
h=Htb(L,a,v0);
[vec,val]=eig(full(h));
val=diag(val);
vecf=fft(vec);

for i=1:length(vecf)
vecf(:,i)=fftshift(vecf(:,i));
end

enlist=-1:0.01:30;
enmap=zeros(length(h),length(enlist));


for i=1:length(enlist)
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,length(h)]);
psif=abs(vecf).^2;
enmap(:,i)=sum(deltaf.*psif,2);
end
n=L/a;
klist=2*pi/L*(-floor(n/2):floor((n-1)/2));

enmap2=zeros(11,length(klist));
for i=1:length(klist)
    k=klist(i);
    enmap2(:,i)=eig(Hb(k,v0));
end
figure;surf(klist,enlist,log(enmap')-10,'edgecolor','none');view(2);
hold on;
plot3(klist,enmap2',2500*ones(length(klist),1))
ylim([-1,30]);
% e2=1/2*(klist).^2;
% hold on;
% plot(klist,e2);
