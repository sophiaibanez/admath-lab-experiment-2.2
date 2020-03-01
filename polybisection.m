function [r,k]=polybisection(coef,ab,epsilon)
a=ab(1);
b=ab(2);
fa=polyval(coef,a);
fb=polyval(coef,b);

fc = inf;
k=0;

if fa*fb>0
    error('error interval')
    
else
    while abs(fc)>epsilon 
    
        c = (a+b)/2;
        fc=polyval(coef,c);
        
        r=[a,b];
        k=k+1;

        if fc < 0
            if fa < 0
                a = c;
            else
                b = c;
            end
        elseif fc > 0
            if fa > 0
                a = c;
            else
                b = c;
            end 
        end

    end
end

end