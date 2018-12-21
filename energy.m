function [eiv,vec]=energy(kx,ky)
global tmp d offdiag hbar mu Nmax;
tmp4=[kx,ky]+[pi/(d),2*pi/(sqrt(3)*d)].*tmp-[zeros(size(tmp(:,2))),tmp(:,1)].*[0,pi/(sqrt(3)*d)];
H=hbar^2/(2*mu)*eye((2*Nmax+1)^2).*(tmp4*tmp4')+offdiag;
[vec,ei]=eig(H);
% for i=1:(2*Nmax+1)^2
%     vec(:,i)=((vec(1,i)<0).*(-1)+(vec(1,i)>=0)).*vec(:,i);
% end
eiv=diag(ei);
end
















% function [eiv,vec]=energy(kx,ky)
% global hbar mu Nmax b1 b2 coarr d data
% i1=1;i2=1;
% H=zeros(Nmax*Nmax);
% for n1=-Nmax:Nmax
%     for m1=-Nmax:Nmax
%         for n2=-Nmax:Nmax
%             for m2=-Nmax:Nmax
%                 H(i1,i2)=hbar^2/(2*mu)*((ky+4*m1*pi/(3*d)-2*n1*pi/(3*d)).^2+(kx+2*n1*pi/(sqrt(3)*d)).^2)*((n1==n2)&&(m1==m2))+coarr(n1-n2+2*Nmax+1,m1-m2+2*Nmax+1);
%                 i2=i2+1;
%             end
%         end
%         i1=i1+1;
%         i2=1;
%     end
% end
%     [vec,ei]=eig(H);
%     eiv=diag(ei);
% end