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
% diaglist=zeros(n,1);
z=sparse(n,n);
% z=zeros(n);
%sparse matrix sorted by the column index
% [il,jl,kl]=find(L);
% [il,jl,kl]=find(A);
% [iu,ju,ku]=find(U');

% prev=0;
% lstart=zeros(n,1);
% lend=zeros(n,1);
% lpointer=1;
% for i=1:length(jl)
%     lval=jl(i);
%     if lval~=prev
%        lstart(lpointer:lpointer+lval-prev-2)=0;
%        lpointer=lpointer+lval-prev-1;
%        lstart(lpointer)=i; 
%        prev=lval;
%        lpointer=lpointer+1;
%     end    
% end

%may further optimize
% prevendindex=1;
% for i=1:n
%     if lstart(i)==0
%         lend(i)=0;
%     else
%         if lstart(i)==1
%             prevendindex=i;
%         else
%             lend(prevendindex)=lstart(i)-1;
%             prevendindex=i;
%         end
%     end
% end
% lend(prevendindex)= length(jl);         

% prev=0;
% ustart=zeros(n,1);
% uend=zeros(n,1);
% upointer=1;
% for i=1:length(ju)
%     uval=ju(i);
%     if uval~=prev
%        ustart(upointer:upointer+uval-prev-2)=0;
%        upointer=upointer+uval-prev-1;
%        ustart(upointer)=i; 
%        prev=uval;
%        upointer=upointer+1;
%     end    
% end
% prevendindex=1;
% for i=1:n
%     if ustart(i)==0
%         uend(i)=0;
%     else
%         if ustart(i)==1
%             prevendindex=i;
%         else
%             uend(prevendindex)=ustart(i)-1;
%             prevendindex=i;
%         end
%     end
% end
% uend(prevendindex)= length(ju);         

for i=n:-1:1    
%     Lcolumnindex=lstart(i):lend(i);
%     Lsp=sparse(il(Lcolumnindex),ones(length(Lcolumnindex),1),kl(Lcolumnindex),n,1);
%     Lsptmp=Lsp(i+1:n);
%     Lsptmp=L(i+1:n,i);
    z(i+1:n,i)=-z(i+1:n,i+1:n)*L(i+1:n,i);
%     Urowindex=ustart(i):uend(i);
%     Usp=sparse(ones(length(Urowindex),1),iu(Urowindex),ku(Urowindex),1,n); 
%     Usptmp=Usp(i+1:n);
%     Usptmp=U(i,i+1:n);
    z(i,i+1:n)=-U(i,i+1:n)*z(i+1:n,i+1:n);
    z(i,i)=1/d(i)-U(i,i+1:n)*z(i+1:n,i);
end
ztmp=z';
diaglist=ztmp(logical(P));
end
    