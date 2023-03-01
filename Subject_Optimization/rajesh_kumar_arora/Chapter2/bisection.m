%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code bisection.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% a-> lower bound of the design variable
% b> upper bound of the design variable
% alpha -> midpoint of a and b
% delx -> ?x for central difference method
% derivative -> derivative using central difference method
% derivative_alpha -> derivative at x = alpha
% abs -> absolute of a number, MATLAB function
% 
clear all
clc
a = 40;
b = 90;
epsilon = 0.01;
delx = 0.01;
fprintf('    a             b     \n' )
fprintf('-------------------------\n' )

for i= 1:100
 fprintf(' %7.3f      %8.3f \n',a,b)
 alpha = (a+b)/2;
 derivative = (func(a+delx) - func(a-delx) )/(2*delx);
 derivative_alpha = (func(alpha+delx)- func(alpha-delx))/(2*delx);
if (derivative*derivative_alpha) < 0
    		b = alpha;
else
    	a = alpha;
end

if abs(a-b) < epsilon
    		break;
end
end

fprintf('-------------------------\n' )
fprintf('x* =  %7.3f       Minimum =   %8.3f\n',a,func(a))
fprintf('Number of function calls =     %3d\n',4*i)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
