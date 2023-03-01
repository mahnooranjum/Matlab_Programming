%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code grad_vec.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% compute gradient vector using central difference method
% xvec, xvec1 -> vector of design variables
% deriv(i) -> derivative w.r.t. ith variable 
%
function deriv = grad_vec(x,delx,n_of_var)
xvec = x;
xvec1 = x;

for i = 1:length(x)
    xvec = x;
    xvec1 = x;
    xvec(i) = x(i) + delx;
    xvec1(i) = x(i) - delx;
deriv(i) = (func_multivar(xvec) - func_multivar(xvec1) )/(2*delx);
end
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

