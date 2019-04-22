delta=1e-3;
h=Htb(parameters);
[vec,val]=eig(full(h));
val=diag(val);
vec2=reshape(vec,[sqrt(length(h)),sqrt(length(h)),length(h)]);
vecf=fft2(vec2);
vecf=fftshift(vecf);

enlist=-5e-3:0.2e-3:10e-3;
enmap=zeros(sqrt(length(h)),sqrt(length(h)),length(enlist));
for i=1:length(enlist)
deltaf=reshape(delta./((enlist(i)-val).^2+delta^2),[1,1,length(h)]);
psif=abs(vecf).^2;
enmap(:,:,i)=sum(deltaf.*psif,3);
end

