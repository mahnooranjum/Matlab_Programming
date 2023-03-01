%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code eqconstr_val
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% computes value of equality constraint
function h = eqconstr_val(x)
y1 = discipline1(x);
y2 = discipline2(x);
h(1) = y1-x(4);
h(2) = y2-x(5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

