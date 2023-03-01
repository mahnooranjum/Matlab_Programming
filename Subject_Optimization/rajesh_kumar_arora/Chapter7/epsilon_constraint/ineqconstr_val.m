%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code ineqconstr_val
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% computes value of inequality constraint
function g = ineqconstr_val(x)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE W1 W2
g(1) = x(1)-1;
g(2) = -x(1);
g(3) = x(2)-2;
g(4) = -x(2)-2;
g(5) = x(1)- W1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%