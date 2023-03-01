%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code func_val1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%computes function value
%
function y = func_val1(x)
global W1 W2
y = W1*x(1) + W2*(1+x(2)^2-x(1)-0.1*sin(3*pi*x(1)));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
