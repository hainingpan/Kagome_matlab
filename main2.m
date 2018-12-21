%Energy disper-3,3,sion
% x=linspace(-4*pi/(3*sqrt(3)*d),4*pi/(3*sqrt(3)*d),200);
% f=@(xx) arrayfun(@(x) energy(0,x),xx,'UniformOutput',false);
% y=cell2mat(f(x));
% figure
% plot(x,y(1,:),x,y(2,:),x,y(3,:),x,y(4,:),x,y(5,:),x,y(6,:))
% t=intoverk(3,sqrt(3)*d,d)
% t1=intoverk(3,sqrt(3)*d*3/2,d/2)  
% for jj=1:1
%     jj
%     t(jj,1)=intoverk(jj,d,0);
%     t(jj,2)=intoverk(jj,0,sqrt(3)*d);
% end
% xlswrite('tmp.xls',t)


en=load('D:\QuS\KMmetadata\BK30KM32\3\dispersion(-4,4)GM.dat');
