%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code golden_funct1.m
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
% func_multivar -> returns the value of a multivariable function
% 
function [alpha1,falpha1] = golden_funct1(x,search)
a = -5;
b = 5;
tau = 0.381967;
epsilon = 1e-5;
alpha1 = a*(1-tau) + b*tau;
alpha2 = a*tau + b*(1-tau);
falpha1 = func_multivar(x+alpha1*search);
falpha2 = func_multivar(x+alpha2*search);

for i= 1:1000
    if falpha1 > falpha2
        a = alpha1;
        alpha1 = alpha2;
        falpha1 = falpha2;
        alpha2 = tau*a + (1-tau)*b;
        falpha2 = func_multivar(x+alpha2*search);
    	else
        b = alpha2;
        alpha2 = alpha1;
        falpha2 = falpha1;
        alpha1 = tau*b + (1-tau)*a;
        falpha1 = func_multivar(x+alpha1*search);
    	end
if abs(func_multivar(x+alpha1*search)- func_multivar(x+alpha2*search))< epsilon
    	break;
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
