function diaglist=spinv(A)
% A=sprand(10,10,0.1)+1i*sprand(10,10,0.1);
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
cal=zeros(n);
diaglist=zeros(n,1);
z=sparse(n,n);
L=full(L);
U=full(U);
z=full(z);
% tic;
% t=zeros(n,1);
for i=n:-1:1
%     disp(i);
    j=find(P(:,i));
    [z,cal]=zfun(i,j,z,cal,C,L,d,U); 
    diaglist(i)=z(i,j);
%     t(i)=toc;
end

end


