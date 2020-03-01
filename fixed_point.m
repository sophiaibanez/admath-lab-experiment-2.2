function [x1,k]=fixed_point(coef,x0,epsilon)
k=0;
error=1;
while error>epsilon
x1 = coef(length(coef))/polyval(coef(1:length(coef)-1)-1,x0);
error = x1-x0;
k=k+1;
x0=x1;
end