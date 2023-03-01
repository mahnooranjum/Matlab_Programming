%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code steep_des.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% n_of_var -> number of design variables
% x = [-1.5 1.5] -> starting value of x
% epsilon1,epsilon2 ->constants used for terminating the algorithm
% delx -> required for gradient computation
% falpha_prev -> function valye at first / previous iteration
% deriv -> gradient vector
% search -> search direction (set to negative of gradient)
%
clear all
clc
n_of_var = 2;
x = [-3 2];
epsilon1 = 1e-6;
epsilon2 = 1e-6;
delx = 1e-3;

falpha_prev = func_multivar(x);
fprintf('Initial function value =  %7.4f\n ',falpha_prev)
fprintf(' No.       x-vector      f(x)      Deriv \n')
fprintf('__________________________________________\n')

for i = 1:3000
deriv = grad_vec(x,delx,n_of_var);
search = -deriv;
[alpha,falpha] = golden_funct1(x,search);
if abs(falpha-falpha_prev)<epsilon1 || norm(deriv)<epsilon2
    break;
end
falpha_prev = falpha;
x = x + alpha*search;
fprintf('%3d %8.3f %8.3f  % 8.3f  %8.3f  \n',i,x,falpha,norm(deriv))
end

fprintf('__________________________________________\n')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
