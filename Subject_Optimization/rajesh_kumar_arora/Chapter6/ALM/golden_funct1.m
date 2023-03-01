%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code golden_funct1.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [alpha1,falpha1] = golden_funct1(x,search,scale_factor)
a = -5;
b = 5;
tau = 0.381967;
epsilon = 1e-5;
alpha1 = a*(1-tau) + b*tau;
alpha2 = a*tau + b*(1-tau);
falpha1 = func1(x+alpha1*search,scale_factor);
falpha2 = func1(x+alpha2*search,scale_factor);
for i= 1:1000
    if falpha1 > falpha2
        a = alpha1;
        alpha1 = alpha2;
        falpha1 = falpha2;
        alpha2 = tau*a + (1-tau)*b;
        falpha2 = func1(x+alpha2*search,scale_factor);
    else
        b = alpha2;
        alpha2 = alpha1;
        falpha2 = falpha1;
        alpha1 = tau*b + (1-tau)*a;
        falpha1 = func1(x+alpha1*search,scale_factor);
    end
if abs(func1(x+alpha1*search,scale_factor)-func1(x+alpha2*search,scale_factor))< epsilon
    break;
end
end


