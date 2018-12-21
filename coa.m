function re=coa(m,n,parameters)
%coeffecient of Fourier series a_{m,n}
d=parameters.d;
a=parameters.a;
h=parameters.h;
re=zeros(length(m),length(n));
l1=((n==0)&(m==0));
l2=~l1;
re(l1)=-(sqrt(3)*a.^2*h*pi/(2*d^2));
re(l2)=-h/(2*sqrt(3)*d^2)*2*pi*a./sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2).*besselj(1,sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2)*a).*(1+exp(-1i*((m(l2)).*pi))+exp(-1i*((n(l2)).*pi)));
end