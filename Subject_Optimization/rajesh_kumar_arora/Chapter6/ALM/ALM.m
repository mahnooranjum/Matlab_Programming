%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code ALM.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% n_of_var -> number of design variables
% x = [0 1] -> starting value of x
% epsilon1, epsilon2 -> constant used for terminating
%                       the algorithm
% delx -> required for gradient computation
% falpha_prev -> function valye at first / previous iteration
% deriv -> gradient vector
% deltag -> difference in gradient vector (over previous iteration)
% A -> approximation of inverse of the hessian matrix
% search -> search direction
% LAMBDA, BETA -> Lagrange Multipliers
% RK -> penalty parameter
clear all
clc
n_of_var = 2;
n_of_eqcons = 1;
n_of_iqcons = 2;
scale_factor = 1;
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE
LAMBDA = zeros(1,n_of_eqcons);
BETA = zeros(1,n_of_iqcons);
x = [0 1 1];
RK = x(3);
A = eye(length(x));
epsilon1 = 1e-6;
epsilon2 = 1e-6;
delx = 1e-3;
checkconstr = zeros(1,n_of_iqcons);
falpha_prev = func1(x,scale_factor);
fprintf('Initial function value =  %7.4f\n ',FVALUE)
fprintf(' No.       x-vector       rk      f(x)      |Cons.| \n')
fprintf('_____________________________________________________\n')
for i = 1:30
    if i==1
    deriv_prev = grad_vec(x,delx,n_of_var,scale_factor);
    search = -deriv_prev;
    [alpha,falpha] = golden_funct1(x,search,scale_factor);
    if abs(falpha-falpha_prev)<epsilon1
    break;
    end
    falpha_prev = falpha;
    x = x + alpha*search;
    yyy = func1(x,scale_factor);
    LAMBDA = LAMBDA + 2*RK*EQCONSTR;
    BETA = BETA + 2*RK*(max([ICONSTR; -BETA./(2*RK)]));
    checkconstr1 = max([ICONSTR;checkconstr]);
    fprintf('%3d %8.3f %8.3f  % 8.3f  % 8.3f % 8.3f  \n',i,x,FVALUE, norm([EQCONSTR checkconstr1]))
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
        checkconstr1 = max([ICONSTR;checkconstr]);
        fprintf('%3d %8.3f %8.3f  % 8.3f  % 8.3f % 8.3f \n',i,x,FVALUE, norm([EQCONSTR checkconstr1]))
        if abs(falpha-falpha_prev)<epsilon1 || norm(deriv)<epsilon2
         break;
        end
        falpha_prev = falpha;
        deriv_prev = deriv;
        x = x+alpha*search';
        yyy = func1(x,scale_factor);
        LAMBDA = LAMBDA + 2*RK*EQCONSTR;
        BETA = BETA + 2*RK*(max([ICONSTR; -BETA./(2*RK)]));
        end
   end
fprintf('_____________________________________________________\n\n')
if LAMBDA>=0 & BETA>=0
    fprintf('KKT Conditions are satisfied \n\n')
end
fprintf('Lagrange Multipliers: \n\n')
disp([LAMBDA BETA])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

