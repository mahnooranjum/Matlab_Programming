%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code secant.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% a-> lower bound of the design variable
% b> upper bound of the design variable
% alpha -> midpoint of a and b
% delx -> ?x for central difference method
% derivative -> derivative using central difference method
% derivative_alpha -> derivative at x = alpha
% abs -> absolute of a number, MATLAB function
% flag -> set the flag when minimum is bracketed
%
clear all
clc
a = 40;
b = 90;
epsilon = 0.001;
delx = 0.01;
flag = 0;
fprintf('  Alpha          Deriv.  \n' )
fprintf('-------------------------\n' )

for i= 1:100
 alpha = (a+b)/2;
 derivative = (func(a+delx) - func(a-delx) )/(2*delx);
 derivative_alpha = (func(alpha+delx)-func(alpha-delx) )/(2*delx);
 if (derivative*derivative_alpha) < 0
    b = alpha;
    flag = 1;
 else
    a = alpha;
 end
 if flag == 1
    break;
 end
end

for  j = 1:100
 fprintf(' %7.3f      %8.3f \n',alpha,derivative_alpha)
 derivative_a = (func(a+delx) - func(a-delx) )/(2*delx);
 derivative_b = (func(b+delx) - func(b-delx) )/(2*delx);
 alpha = b - derivative_b*(b-a)/(derivative_b-derivative_a);
 derivative_alpha =(func(alpha+delx) -func(alpha-delx) )/(2*delx);
 if derivative_alpha > 0
    b = alpha;
 else
    a = alpha;
 end
 if abs(derivative_alpha) < epsilon
    break;
 end
end
fprintf('-------------------------\n' )
fprintf('x* =  %7.3f       Minimum =   %8.3f\n',alpha,func(alpha))
fprintf('Number of function calls =     %3d\n',4*i+6*j)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
