function y = test(n) %#codegen
if n==1 || n==0
    y=1;
else
    y=test(n-1)+test(n-2);
end
