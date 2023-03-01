%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code ineqconstr_val
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% computes value of inequality constraint
function g = ineqconstr_val(x)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE W1
[ weight, disp ] = dynamics( x );
P = 10000;
g(1) = P*(1+x(1))*sqrt(1+x(1)^2) / (2*sqrt(2)*x(1)*x(2)) - 20000;
g(2) = P*(-1+x(1))*sqrt(1+x(1)^2) / (2*sqrt(2)*x(1)*x(2)) - 20000;
g(3) = -x(2)+1;
g(4) = -x(1)+0.1;
g(5) = disp-W1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%