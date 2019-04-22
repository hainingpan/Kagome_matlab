% energylist=-3e-3:0.1e-3:7e-3;
% energycube=zeros(200,200,length(energylist));
for enind=1:length(energylist)
    en=energylist(enind);
%     energycube(:,:,enind)=load(strcat('data/555/ldos_e',num2str(en),'.dat'));
end
    
