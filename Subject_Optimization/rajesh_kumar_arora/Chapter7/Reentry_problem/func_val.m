%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code func_val
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%computes augmented Lagrangian function value
%
function y = func_val(x)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE W1
[ xcp, area, volume ] = dynamics( x );
y = -xcp;
g = ineqconstr_val(x);
h = eqconstr_val(x);
EQCONSTR = h;
ICONSTR = g;
FVALUE = y;
y = y + LAMBDA*EQCONSTR' + RK*EQCONSTR*EQCONSTR' + sum(BETA.* max([ICONSTR; -BETA./(2*RK)])) + sum(RK*(max([ICONSTR; -BETA./(2*RK)])).^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%