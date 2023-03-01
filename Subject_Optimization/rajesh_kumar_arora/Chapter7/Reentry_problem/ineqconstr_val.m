%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code ineqconstr_val
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% computes value of inequality constraint
function g = ineqconstr_val(x)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE W1
[ xcp, area, volume ] = dynamics( x );
g(1) = x(1)-0.6;
g(2) = -x(1)+0.4;
g(3) = x(2)-27;
g(4) = -x(2)+22;
g(5) = x(3)-(x(2)+10);
g(6) = -x(3)+(x(2)+5);
g(7) = x(4)-0.8;
g(8) = -x(4)+0.4;
g(9) = x(5)-0.8;
g(10) = -x(5)+0.4;
g(11) = -volume+1;
g(12) = area-W1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%