function re=vm(xx,yy)
global d a h
%xx=gpuArray(xx);
%yy=gpuArray(yy);
x=xx-d*floor(yy/(sqrt(3)*d))-2*d*floor((3*xx-sqrt(3)*yy)/(6*d));
y=yy-sqrt(3)*d*floor(yy/(sqrt(3)*d));
%x=1/2*sqrt(3)*d*((2*yy)/(3*d)-floor((2*yy)/(3*d)))+sqrt(3)*d*(-((-sqrt(3)*xx+yy)/(3*d))-floor(-((-sqrt(3)*xx+yy)/(3*d))));
%y=3*d/2*((2*yy)/(3*d)-floor((2*yy)/(3*d)));
re=(((x-0).^2+(y-0).^2<a^2)|((x-d).^2+(y).^2<a^2)|((x-2*d).^2+(y).^2<a^2)|((x-d/2).^2+(y-sqrt(3)*d/2).^2<a^2)|((x-d).^2+(y-sqrt(3)*d).^2<a^2)|((x-3*d).^2+(y-sqrt(3)*d).^2<a^2)|((x-5/2*d).^2+(y-sqrt(3)*d/2).^2<a^2)|((x-2*d).^2+(y-sqrt(3)*d).^2<a^2))*(-h);
%re=gather(re);
end