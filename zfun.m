function [z,cal]=zfun(i,j,z,cal,C,L,d,U)
n=length(cal);
if cal(i,j)~=1
    %diagonal
    if (i==j)
    c=C(i,i+1:n);
    c=sparse((i+1:n)',ones(n-i,1),c',n,1);
%     c=padarray(c,[0,i],'pre');
    citer=1:n;
    citer=citer(logical(c));
    for k=citer
        [z,cal]=zfun(k,i,z,cal,C,L,d,U);
    end
    z(i,j)=1/d(i)-U(i,c)*z(c,i);
    cal(i,j)=1;
%     re=z(i,j);
    else
        %upper tri
        if (i<j)
            c=C(i,i+1:n);
            c=sparse((i+1:n)',ones(n-i,1),c',n,1);
%             c=padarray(c,[0,i],'pre');
            citer=1:n;
            citer=citer(logical(c));
            for k=citer
                [z,cal]=zfun(k,j,z,cal,C,L,d,U);
            end
            z(i,j)=-U(i,c)*z(c,j);
            cal(i,j)=1;
%             re=z(i,j);
        else
            %lower tri
            c=C(j+1:n,j);
            c=sparse((j+1:n)',ones(n-j,1),c',n,1);
%             c=padarray(c,[0,j],'pre');
            citer=1:n;
            citer=citer(logical(c));
            for k=citer
                [z,cal]=zfun(i,k,z,cal,C,L,d,U);
            end
            z(i,j)=-z(i,c)*L(c,j);            
            cal(i,j)=1;
%             re=z(i,j);
        end
    end
end
end
                
        
    