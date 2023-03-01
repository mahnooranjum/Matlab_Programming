%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code grad_vec.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function deriv = grad_vec_eqcon(x,delx,n_of_eqcons)
xvec = x;
xvec1 = x;
for j = 1:n_of_eqcons
for i = 1:length(x)
    xvec = x;
    xvec1 = x;
    xvec(i) = x(i) + delx;
    xvec1(i) = x(i) - delx;
    h = eqconstr_val(xvec);
    h1 = eqconstr_val(xvec1);
    deriv(j,i) = (h(j) - h1(j) )/(2*delx);
end
end

