energylist=-3e-3:0.1e-3:7e-3;
delta=1e-5;
latticeconst=sqrt(parameters.cellnumber)*(2)/parameters.NN;
for i=1:length(energylist)
    disp(i);
    omega=energylist(i);
    ldosstoremat=ldos(omega,delta,parameters);
    save(strcat('./data/555/ldos_e',num2str(omega),'.dat'),'ldosstoremat','-ascii');
    figure;
    surf((1:parameters.NN)*sqrt(parameters.cellnumber)*(2)/parameters.NN,(1:parameters.NN)*sqrt(parameters.cellnumber)*(2)/parameters.NN,ldosstoremat,'edgecolor','none');view(2);colorbar
    title(strcat('E=',num2str(omega),'(meV)'));
    axis tight;
    saveas(gcf,strcat('./data/fig/555/ldos_e',num2str(omega),'.png'));
end
