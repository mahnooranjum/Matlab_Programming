%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code hessian.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function sec_deriv = hessian_eqcons(x,delx,kk)
for i = 1:length(x)
    for j = 1:length(x)
    if i == j
        temp = x;
        temp(i) = x(i) + delx;
        term1 = eqconstr_val(temp);
        temp(i) = x(i) - delx;
        term2 = eqconstr_val(temp);
        term3 = eqconstr_val(x);
        sec_deriv(i,j) = (term1(kk)-2*term3(kk)+term2(kk))/(delx^2);
    else
        temp = x;
        temp(i) = x(i) + delx;
        temp(j) = x(j) + delx;
        term1 = eqconstr_val(temp);
        
        temp = x;
        temp(i) = x(i) + delx;
        temp(j) = x(j) - delx;
        term2 = eqconstr_val(temp);
        
        temp = x;
        temp(i) = x(i) - delx;
        temp(j) = x(j) + delx;
        term3 = eqconstr_val(temp);
        
        temp = x;
        temp(i) = x(i) - delx;
        temp(j) = x(j) - delx;
        term4 = eqconstr_val(temp);
        sec_deriv(i,j) = (term1(kk)-term2(kk)-term3(kk)+term4(kk))/(4*delx^2);
    end
    end
end


