bc=cell(10);
d=parameters.d;
Nk=parameters.Nk;
xr=(2*pi)/(3*d);
yc=(pi)/(sqrt(3)*d);
kxlist=linspace(-xr,xr,Nk);
kylist=linspace(-yc,yc,Nk);
for index=9:9
    bc{index}=load(strcat('545/savecurN',num2str(index),'.mat'),'savecur');
    bc{index}=bc{index}.savecur;
end
for index=9:9
    figure;surf(kxlist,kylist,bc{index}','edgecolor','none');view(2);colorbar;
    hold on;
    line([xr,xr/2,-xr/2,-xr,-xr/2,xr/2,xr],[0,yc,yc,0,-yc,-yc,0],1e7*ones(7,1),'Color','k');
    title(strcat('Kagome n=',num2str(index),' Berry curvature'));
    axis tight;
    saveas(gcf,strcat('.\fig\545\KagomeN',num2str(index),'.png'));
    
    figure;surf(kxlist,kylist,tanh(bc{index})','edgecolor','none');view(2);colorbar;
    title(strcat('Kagome n=',num2str(index),' tanh of Berry curvature'));
    hold on;
    line([xr,xr/2,-xr/2,-xr,-xr/2,xr/2,xr],[0,yc,yc,0,-yc,-yc,0],1e7*ones(7,1),'Color','k');
    axis tight;
    saveas(gcf,strcat('.\fig\545\KagometanhN',num2str(index),'.png'));
end 