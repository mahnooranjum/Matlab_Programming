%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name func1.m
%   Enter the function to be optimized
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function [y,constr]=func1(x)
 y = 20 + x(1)*x(1)-10*cos(2*pi*x(1)) + x(2)*x(2)-10*cos(2*pi*x(2));
%y = -x(1)*sin(sqrt(abs(x(1))))-x(2)*sin(sqrt(abs(x(2))));
constr(1) = 10;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
