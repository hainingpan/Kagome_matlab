%plot of modulus of wavefunction(without normalization) in real space
x=linspace(-50,50,100);
[X,Y]=meshgrid(x,x);
re=um(1,0,0,X,Y,parameters);
surf(x,x,abs(re),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
view(2);
colorbar;

