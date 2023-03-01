%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code DFP.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% n_of_var -> number of design variables
% x = [-1.5 1.5] -> starting value of x
% epsilon1, epsilon2 -> constant used for terminating
%                       the algorithm
% delx -> required for gradient computation
% falpha_prev -> function valye at first / previous iteration
% deriv -> gradient vector
% deltag -> difference in gradient vector (over previous iteration)
% A -> approximation of inverse of the hessian matrix
% search -> search direction
% scale_factor -> penalty parameter
%
clear all
clc
n_of_var = 2;
x = [-1 1];
A = eye(length(x));
epsilon1 = 1e-6;
epsilon2 = 1e-6;
delx = 1e-3;
scale_factor = 1;
falpha_prev = func1(x,scale_factor);
fprintf('Initial function value =  %7.4f\n ',falpha_prev)
fprintf(' No.       x-vector      f(x)      |Constr|  Penalty param. \n')
fprintf('____________________________________________________________\n')
for i = 1:30
    [hh,gg] = constr(x);
    scale_factor = max(1,1/norm([hh gg]));
    if i==1
    deriv_prev = grad_vec(x,delx,n_of_var,scale_factor);
    search = -deriv_prev;
    [alpha,falpha] = golden_funct1(x,search,scale_factor);
    if abs(falpha-falpha_prev)<epsilon1
    break;
    end
    falpha_prev = falpha;
    x = x + alpha*search;
    fprintf('%3d %8.3f %8.3f %8.3f  %8.5f  %10.0f \n',i,x,falpha_prev,norm([hh gg]), scale_factor)
    else
        deltax = (alpha*search);
        if i>2
            deltax = deltax';
        end
        deriv = grad_vec(x,delx,n_of_var,scale_factor);
        deltag = deriv-deriv_prev;
        term1 = (deltax'*deltax)/(deltax*deltag');
        term2 = (A*deltag'*deltag*A)/(deltag*A*deltag');
        A = A + term1 - term2;
        search = -A*deriv';
        [alpha,falpha] = golden_funct1(x,search',scale_factor);
        fprintf('%3d %8.3f %8.3f %8.3f  %8.5f %10.0f   \n',i,x+alpha*search',falpha,norm([hh gg]),scale_factor)
        if abs(falpha-falpha_prev)<epsilon1 || norm(deriv)<epsilon2
         break;
        end
        falpha_prev = falpha;
        deriv_prev = deriv;
        x = x+alpha*search';
    end
   end
fprintf('____________________________________________________________\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

