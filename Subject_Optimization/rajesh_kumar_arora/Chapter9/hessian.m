%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code hessian.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function sec_deriv = hessian(x,delx)
for i = 1:length(x)
    for j = 1:length(x)
    if i == j
        temp = x;
        temp(i) = x(i) + delx;
        term1 = func_val(temp);
        temp(i) = x(i) - delx;
        term2 = func_val(temp);
        term3 = func_val(x);
        sec_deriv(i,j) = (term1-2*term3+term2)/(delx^2);
    else
        temp = x;
        temp(i) = x(i) + delx;
        temp(j) = x(j) + delx;
        term1 = func_val(temp);
        
        temp = x;
        temp(i) = x(i) + delx;
        temp(j) = x(j) - delx;
        term2 = func_val(temp);
        
        temp = x;
        temp(i) = x(i) - delx;
        temp(j) = x(j) + delx;
        term3 = func_val(temp);
        
        temp = x;
        temp(i) = x(i) - delx;
        temp(j) = x(j) - delx;
        term4 = func_val(temp);
        sec_deriv(i,j) = (term1-term2-term3+term4)/(4*delx^2);
    end
    end
end


