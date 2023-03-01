%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code newtonraphson.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% x -> initial guess of design variable
% delx -> ?x for central difference method
% derivative -> derivative using central difference method
% sec_derivative -> second derivative
% epsilon -> constant used to terminate the program
% xprev -> value of x stored from previous iteration
%
clear all
clc
x = 45;
delx = 0.01;
epsilon = 0.01;
fprintf('     x    f(x)      Deriv. Second deriv.\n' )
fprintf('-----------------------------------------\n' )

for i= 1:100
 derivative = (func(x+delx) - func(x-delx) )/(2*delx);
 sec_derivative=(func(x+delx)+func(x-delx)-2*func(x))/(delx*delx);
fprintf('%8.3f %8.3f %8.3f %8.3f\n',x,func(x),derivative,      sec_derivative)
 xprev = x;
 x = x- derivative/sec_derivative;
 if abs(x-xprev) < epsilon
    break;
 end
end

fprintf('-----------------------------------------\n' )
fprintf('Number of function calls =     %3d\n',5*i)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
