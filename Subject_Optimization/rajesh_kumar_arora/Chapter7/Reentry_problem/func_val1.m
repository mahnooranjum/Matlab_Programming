%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code func_val1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%computes function value
%
function y = func_val1(x)
global W1
[ xcp, area, volume ] = dynamics( x );
y = -xcp;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
