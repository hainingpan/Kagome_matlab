function G=spinv(A)
% A=sprand(10,10,0.1)+1i*sprand(10,10,0.1);
n=length(A);
[L,U]=lu(A);
d=diag(U);
if (any (d == 0))
        error ('not full rank') ;
end
D=spdiags(d,0,n,n);
U=D\U;
Di=spdiags(1./d,0,n,n);
I=speye(n);
G=I;
for i=1:100
    G=Di/L+(I-U)*G;
    tmp=abs(G*A-I).^2;
    disp(sum(sum(tmp)));
end
end


