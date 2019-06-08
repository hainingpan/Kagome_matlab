figure;surf(sqrt(3)*(-floor(parameters.NN/2):floor((parameters.NN-1)/2))/(2*sqrt(parameters.cellnumber)),1000*enlist,squeeze(log(enmapk(:,parameters.NN/2,:)))','edgecolor','none');view(2);
xlim([-4,4]);
colorbar;
klist=(-floor(parameters.NN/2):floor((parameters.NN-1)/2))*2*pi/(2*parameters.d*sqrt(parameters.cellnumber)/5.076);
savefig(gcf,sprintf("NN%dCN%dD%.1f.fig",parameters.NN,parameters.cellnumber,parameters.dtn));
