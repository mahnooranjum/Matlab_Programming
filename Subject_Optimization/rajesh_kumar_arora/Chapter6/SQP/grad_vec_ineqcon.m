%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code grad_vec_ineqcon.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function deriv = grad_vec_ineqcon(x,delx,n_of_iqcons)
xvec = x;
xvec1 = x;
for j = 1:n_of_iqcons
for i = 1:length(x)
    xvec = x;
    xvec1 = x;
    xvec(i) = x(i) + delx;
    xvec1(i) = x(i) - delx;
    g = ineqconstr_val(xvec);
    g1 = ineqconstr_val(xvec1);
    deriv(j,i) = (g(j) - g1(j) )/(2*delx);
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%