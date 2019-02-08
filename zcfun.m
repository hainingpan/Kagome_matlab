function [zc,visit]=zcfun(i,j,zc,visit,C,n)
if ~(visit(i,j)) %have calculated
    if (i<=j)
        zc(i+1:n,j)=zc(i+1:n,j)|C(i,i+1:n)';
        for k=i+1:n
            if (zc(k,j))
            [zc,visit]=zcfun(k,j,zc,visit,C,n);
            end
        end
    else
        zc(i,j+1:n)=zc(i,j+1:n)|C(j+1:n,j)';
        for k=j+1:n
            if (zc(i,k))
            [zc,visit]=zcfun(i,k,zc,visit,C,n);
            end
        end
    end        
end
visit(i,j)=1;
end