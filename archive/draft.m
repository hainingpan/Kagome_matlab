%data=load('co.dat')
%PoFT(sqrt(3)*d/2,0);
x=linspace(-2*d,2*d,100);
y=linspace(-2*d,2*d,100);
[X,Y]=meshgrid(x,y);
f=@(x,y) arrayfun(@PoFT,x,y);
%f=@(x,y) arrayfun(@(xx,yy) um(1,0,0,xx,yy),x,y);
%F=arg(f(X,Y));
F=real(f(X,Y));
figure
for i=1:100
scatter(X(:,i),Y(:,i),'filled','cdata',F(:,i))
hold on
end
colorbar