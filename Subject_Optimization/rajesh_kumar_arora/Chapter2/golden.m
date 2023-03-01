%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code golden.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% a-> lower bound of the design variable
% b> upper bound of the design variable
% alpha -> midpoint of a and b
% falpha1 -> function value at x = alpha1
% falpha2 -> function value at x = alpha2
% epsilon -> constant used to terminate the algorithm
% abs -> absolute of a number, MATLAB function
% tau -> 2-golden number
% 
clear all
clc
a = 40;
b = 90;
epsilon = 0.00001;
tau = 0.381967;
alpha1 = a*(1-tau) + b*tau;
alpha2 = a*tau + b*(1-tau);
falpha1 = func(alpha1);
falpha2 = func(alpha2);

fprintf('    a             b     \n' )
fprintf('-------------------------\n' )

for i= 1:100
    fprintf(' %7.3f      %8.3f \n',a,b)
    if falpha1 > falpha2
        a = alpha1;
        alpha1 = alpha2;
        falpha1 = falpha2;
        alpha2 = tau*a + (1-tau)*b;
        falpha2 = func(alpha2);
    else
        b = alpha2;
        alpha2 = alpha1;
        falpha2 = falpha1;
        alpha1 = tau*b + (1-tau)*a;
        falpha1 = func(alpha1);
    end

if abs(func(alpha1)-func(alpha2))< epsilon
    break;
end
end

fprintf('-------------------------\n' )
fprintf('x* =  %7.3f       Minimum =   %8.3f\n',alpha1,func(alpha1))
fprintf('Number of function calls =     %3d\n',2+i)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
