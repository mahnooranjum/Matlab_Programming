%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code hessian.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%compute hessian matrix
% sec_deriv -> second derivative matrix
% func_multivar() -> multivariable function
% temp -> temporary variable
%
function sec_deriv = hessian(x,delx,n_of_var)
for i = 1:length(x)
    for j = 1:length(x)
    if i == j
        temp = x;
        temp(i) = x(i) + delx;
        term1 = func_multivar(temp);
        temp(i) = x(i) - delx;
        term2 = func_multivar(temp);
        term3 = func_multivar(x);
        sec_deriv(i,j) = (term1-2*term3+term2)/(delx^2);
    else
        temp = x;
        temp(i) = x(i) + delx;
        temp(j) = x(j) + delx;
        term1 = func_multivar(temp);
        
        temp = x;
        temp(i) = x(i) + delx;
        temp(j) = x(j) - delx;
        term2 = func_multivar(temp);
        
        temp = x;
        temp(i) = x(i) - delx;
        temp(j) = x(j) + delx;
        term3 = func_multivar(temp);
        
        temp = x;
        temp(i) = x(i) - delx;
        temp(j) = x(j) - delx;
        term4 = func_multivar(temp);
        sec_deriv(i,j) = (term1-term2-term3+term4)/(4*delx^2);
    end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
