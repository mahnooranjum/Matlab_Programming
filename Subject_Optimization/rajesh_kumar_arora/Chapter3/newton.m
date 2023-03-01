%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code newton.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% n_of_var -> number of design variables
% x = [-1.5 1.5] -> starting value of x
% epsilon1, epsilon2 -> constant used for terminating
%                       the algorithm
% delx -> required for gradient computation
% f_prev -> function valye at first / previous iteration
% deriv -> gradient vector
% sec_deriv -> hessian matrix
%
clear all
clc
n_of_var = 2;
x = [-3 2];
epsilon1 = 1e-7;
epsilon2 = 1e-7;
delx = 1e-3;
f_prev = func_multivar(x);
fprintf('Initial function value =  %7.4f\n ',f_prev)
fprintf(' No.       x-vector      f(x)      Deriv \n')
fprintf('__________________________________________\n')

for i = 1:50
    f_prev = func_multivar(x);
    deriv = grad_vec(x,delx,n_of_var);
    sec_deriv = hessian(x,delx,n_of_var);
     x = (x' - inv(sec_deriv)*deriv')';
     f = func_multivar(x);
      if abs(f-f_prev)<epsilon1 || norm(deriv)<epsilon2
        break;
      end
fprintf('%3d %8.3f %8.3f  % 8.3f  %8.3f  \n',i,x,f,norm(deriv))
end

fprintf('%3d %8.3f %8.3f  % 8.3f  %8.3f  \n',i,x,f,norm(deriv))
fprintf('__________________________________________\n')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
