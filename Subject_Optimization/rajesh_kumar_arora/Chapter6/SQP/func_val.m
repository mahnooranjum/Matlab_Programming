%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code func_val
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%computes augmented Lagrangian function value
%
function y = func_val(x)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE 
y = (x(1)-1)^2 + (x(2)-2)^2;
g = ineqconstr_val(x);
h = eqconstr_val(x);
EQCONSTR = h;
ICONSTR = g;
FVALUE = y;
y = y + LAMBDA*EQCONSTR' + RK*EQCONSTR*EQCONSTR' + sum(BETA.* max([ICONSTR; -BETA./(2*RK)])) + sum(RK*(max([ICONSTR; -BETA./(2*RK)])).^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%