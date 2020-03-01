function [xf,k]=secant(coeff,xi,xp,epsilon)
error = 1;
k=0;
while error>epsilon

xf=xi-(polyval(coeff,xi)/((polyval(coeff,xi)-polyval(coeff,xp))/(xi-xp)));
error=polyval(coeff,xf);
xp=xi;
xi=xf;
k=k+1;
end
end