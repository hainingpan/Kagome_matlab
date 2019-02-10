energylist=-3e-3:0.1e-3:7e-3;
for en=energylist
plot(klist,1000*eivmap(1:30,:),'black');
xticks([-1,0,1]);
xticklabels({'M','\Gamma','K'});
% xlabel('normalized k_x/(GK)')
ylabel('energy(meV)');
axis([-1,1,-4,8]);
line([-1,1],1000*[en,en],'Color','b','LineStyle','--');
title(strcat('E=',num2str(1000*en),'meV'));
saveas(gcf,strcat('./data/fig/543/mgk',num2str(en),'.png'));
end