function re=coa_asym_a(m,n,parameters)
%coeffecient of Fourier series a_{m,n} for nonuniform a
d=parameters.d;
a=parameters.a;
a2=parameters.a2;
a3=parameters.a3;
h=parameters.h;
re=zeros(length(m),length(n));
l1=((n==0)&(m==0));
l2=~l1;
re(l1)=-pi/(2*sqrt(3)*d^2)*(a^2+a2^2+a3^2)*(h);
v1=-h/(2*sqrt(3)*d^2)*2*pi*a./sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2).*besselj(1,sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2)*a).*(1);
v2=-h/(2*sqrt(3)*d^2)*2*pi*a2./sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2).*besselj(1,sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2)*a2).*(exp(-1i*((m(l2)).*pi)));
v3=-h/(2*sqrt(3)*d^2)*2*pi*a3./sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2).*besselj(1,sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2)*a3).*(exp(-1i*((n(l2)).*pi)));
re(l2)=v1+v2+v3;
% re(l2)=-h/(2*sqrt(3)*d^2)*2*pi*a./sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2).*besselj(1,sqrt(pi^2*(m(l2)/d).^2+(-m(l2)*pi/(sqrt(3)*d)+(2*n(l2)*pi)/(sqrt(3)*d)).^2)*a).*(1)+exp(-1i*((m(l2)).*pi))+exp(-1i*((n(l2)).*pi)));
end