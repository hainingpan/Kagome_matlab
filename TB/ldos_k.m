delta=1e-3;
h=Htb();
[vec,val]=eig(full(h));
val=diag(val);
vec2=reshape(vec,[length(h),length(h)]);
vecf=fft(vec2);

for i=1:length(vecf)
vecf(:,i)=fftshift(vecf(:,i));
end

enlist=-1:0.1:10;
enmap=zeros(length(h),length(enlist));


for i=1:length(enlist)
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,length(h)]);
psif=abs(vecf).^2;
enmap(:,i)=sum(deltaf.*psif,2);
end

