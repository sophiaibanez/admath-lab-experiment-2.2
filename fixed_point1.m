function [xf,k]=fixed_point1(xi,epsilon)

k=0;
error=1;

while abs(error)>epsilon && k<5 
    
    
%xf=-log(log(xi)); (imaginary)
xf=exp(exp(-xi));


error = exp(-xf)-log(xf);

k=k+1;
xi=xf;
end
end



