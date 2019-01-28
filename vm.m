function re=vm(x,y,parameters)
d=parameters.d;
a=parameters.a;
a2=parameters.a2;
a3=parameters.a3;
h=parameters.h;
h2=parameters.h2;
h3=parameters.h3;
xshift=x-d*floor(y/(sqrt(3)*d))-2*d*floor((3*x-sqrt(3)*y)/(6*d));
yshift=y-sqrt(3)*d*floor(y/(sqrt(3)*d));
% site A: (5/4*d,3*sqrt(3)/4*d)
% site B: (3/4*d,sqrt(3)/4*d)
% site C: (7/4*d,sqrt(3)/4*d)
re=(((xshift-5/4*d).^2+(yshift-3*sqrt(3)/4*d).^2)<a^2)*(-h)+...
    (((xshift-3/4*d).^2+(yshift-sqrt(3)/4*d).^2)<a2^2)*(-h2)+...
    (((xshift-7/4*d).^2+(yshift-sqrt(3)/4*d).^2)<a3^2)*(-h3);
end