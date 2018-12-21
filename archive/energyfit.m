hold off
fig2=figure;
surf((dx),dy*1000,log(dz+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
% %colorbar
% 
%   axis([-6,6,1572,1592,0,inf])
 axis square;
% %   axis([-3,3,1572,1580,0,inf])
% % set(gca,'xtick',[])
% % 
% axis([-5,5,-4,15,0,inf])
% camlight('headlight');
view(2);

% 
% hold on
% % % x=-3:0.05:3;
% % % yy=load('./trans.dat');
% plot3(x,yy(1:20,:)*1000+1576.3,2500*ones(length(x),1),'black');
% axis square;
% % axis([-1,1,-3,-2,0,inf])
% view(2);
