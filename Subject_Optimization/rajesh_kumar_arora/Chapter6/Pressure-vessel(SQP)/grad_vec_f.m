%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code grad_vec_f.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function deriv = grad_vec_f(x,delx,n_of_var,scale_factor)
xvec = x;
xvec1 = x;
for i = 1:length(x)
    xvec = x;
    xvec1 = x;
    xvec(i) = x(i) + delx;
    xvec1(i) = x(i) - delx;
    deriv(i) = (func_val1(xvec) - func_val1(xvec1) )/(2*delx);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
