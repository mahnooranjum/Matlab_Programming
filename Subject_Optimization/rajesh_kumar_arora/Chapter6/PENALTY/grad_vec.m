%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code grad_vec.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function deriv = grad_vec(x,delx,n_of_var,scale_factor)
xvec = x;
xvec1 = x;
for i = 1:length(x)
    xvec = x;
    xvec1 = x;
    xvec(i) = x(i) + delx;
    xvec1(i) = x(i) - delx;
    deriv(i) = (func1(xvec,scale_factor) - func1(xvec1,scale_factor) )/(2*delx);
end

