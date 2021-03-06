%plot of modulus of wavefunction(without normalization) in real space
x=linspace(-50,50,100);
[X,Y]=meshgrid(x,x);
K=pi/parameters.d*[-1/3,1/sqrt(3)];
Kp=pi/parameters.d*[-1/3,-1/sqrt(3)];
Kpp=pi/parameters.d*[1/3,1/sqrt(3)];

G=[0,0];
G2=[0,2*pi/(sqrt(3)*parameters.d)];
G3=[pi/parameters.d,-pi/(sqrt(3)*parameters.d)];

re=um(1,K(1),K(2),X,Y,parameters);
figure;
surf(x,x,abs(re),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
view(2);
title('K-1');
colorbar;

re2=um(2,K(1),K(2),X,Y,parameters);
figure;
surf(x,x,abs(re2),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
view(2);
title('K-2');
colorbar;

re=um(1,Kp(1),Kp(2),X,Y,parameters);
figure;
surf(x,x,abs(re),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
view(2);
title('K^\prime-1');
colorbar;

re2=um(2,Kp(1),Kp(2),X,Y,parameters);
figure;
surf(x,x,abs(re2),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
view(2);
title('K^\prime-2');
colorbar;

