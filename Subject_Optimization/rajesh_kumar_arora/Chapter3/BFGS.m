%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code BFGS.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% n_of_var -> number of design variables
% x = [-1.5 1.5] -> starting value of x
% epsilon1, epsilon2 -> constant used for terminating the algo.
% delx -> required for gradient computation
% falpha_prev -> function valye at first / previous iteration
% deriv -> gradient vector
% deltag -> difference in gradient vector (over previous iteration)
% A -> approximation of the hessian matrix
% search -> search direction
%
clear all
clc
n_of_var = 2;
x = [-3 2];
delx = 0.001;
A = eye(length(x));
epsilon1 = 1e-6;
epsilon2 = 1e-6;
delx = 1e-3;

falpha_prev = func_multivar(x);
fprintf('Initial function value =  %7.4f\n ',falpha_prev)
fprintf(' No.       x-vector      f(x)      Deriv \n')
fprintf('__________________________________________\n')

for i = 1:50
    if i==1
    deriv_prev = grad_vec(x,delx,n_of_var);
    search = -deriv_prev;
    [alpha,falpha] = golden_funct1(x,search);
    if abs(falpha-falpha_prev)<0.001
    break;
    end
    falpha_prev = falpha;
    x = x + alpha*search;
    fprintf('%3d %8.3f %8.3f  % 8.3f  %8.3f  \n',i,x,falpha_prev,norm(deriv_prev))
    else
        deltax = (alpha*search);
        if i>2
            deltax = deltax';
            search = search';
        end
        deriv = grad_vec(x,delx,n_of_var);
        deltag = deriv-deriv_prev;
        term1 = (deltag'*deltag)/(deltag*deltax');
        term2 = (deriv_prev'*deriv_prev)/(deriv_prev*search');
        A = A + term1 + term2;
        search = -inv(A)*deriv';
        [alpha,falpha] = golden_funct1(x,search');
fprintf('%3d %8.3f %8.3f  % 8.3f  %8.3f  \n',i,x+alpha*search',falpha,norm(deriv))
        if abs(falpha-falpha_prev)<epsilon1 || norm(deriv)<epsilon2
         break;
        end
        falpha_prev = falpha;
        deriv_prev = deriv;
        x = x+alpha*search';
      end
end

fprintf('__________________________________________\n')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
