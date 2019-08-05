XX=linspace(-50,50,100);
YY=XX;
[X,Y]=meshgrid(XX,YY);
UU=um(1,Koo(1),Koo(2),X,Y,parameters);
imagesc(abs(UU));