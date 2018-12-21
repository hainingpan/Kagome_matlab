% %Thy energy dispersion line
% x=linspace(-12*pi/(3*d),12*pi/(3*d),401);
% f=@(xx) arrayfun(@(x) energy(0,x),xx,'UniformOutput',false);
% yy=cell2mat(f(x));

%% Exp
dx=load('D:\QuS\metadata\BK30HC31\3\gk\x.dat');
dy=load('D:\QuS\metadata\BK30HC31\3\gk\y.dat');
dz=load('D:\QuS\metadata\BK30HC31\3\gk\z.dat');

%% figure;
surf(dx/(2*pi/(3*3)),dy,log(dz+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud')
view(2);
colorbar;
axis([-4,4,1573,1574.6])
hold on 
plot3(linspace(-5,5,1001)/(2*pi/(3*2.88)),en-0.1,2500*ones(1001,1),'black');

%% linewidth
% dirname='BK30KM32\3';
% filname='x(-4,4)e(1573,1595)2018118';
% filename=strcat('D:\QuS\KMmetadata\',dirname,'\',filname,'.dat');
% linewidth=load(filename);
% fig=figure;
% surf(linspace(-4,4,100),linspace(1573,1595,100),log(linewidth+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
% % camlight('headlight');
% colorbar;
% %    axis([-4,4,1570,1595,0,inf]);
% axis square;
%  view(2);