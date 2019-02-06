function diaglist=spinvl(A)
n=length(A);
[L,U,P]=lu(A);
d=diag(U);
if (any (d == 0))
        error ('not full rank') ;
end
D=spdiags(d,0,n,n);
U=D\U;
% Di=spdiags(1./d,0,n,n);
% I=speye(n);
CL=spones(L);
CD=spones(D);
CU=spones(U);
C=spones(CL+CU+CD);
C=logical(C);
% cal=zeros(n);
diaglist=zeros(n,1);
z=sparse(n,n);
% tic;
% t=zeros(n,1);
for i=n:-1:1
    z(i+1:n,i)=-z(i+1:n,i+1:n)*L(i+1:n,i);
    z(i,i+1:n)=-U(i,i+1:n)*z(i+1:n,i+1:n);
    z(i,i)=1/d(i)-U(i,i+1:n)*z(i+1:n,i);
end
ztmp=z';
diaglist=ztmp(logical(P));
end
    