savecur=zeros(parameters.Nk,parameters.Nk,5);
for index=1:5
    disp(index);
    savecur(:,:,index)=berrycur(index,parameters);
end
save('savecur.mat','savecur');