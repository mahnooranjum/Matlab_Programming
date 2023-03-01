%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code sqp.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% n_of_var -> number of design variables
% x = [-1.5 1.5] -> starting value of x
% epsilon1, epsilon2 -> constanst used for terminating
%                       the algorithm
% delx -> required for gradient computation
% falpha_prev -> function value at first / previous iteration
% deriv -> gradient vector
% deltag -> difference in gradient vector (over previous iteration)
% A -> approximation of inverse of the hessian matrix
% search -> search direction
% LAMBDA -> Lagrange multipliers
clear all
clc
warning off
n_of_var = 4;
n_of_eqcons = 1;
n_of_iqcons = 15;
scale_factor = 10;
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE
LAMBDA = zeros(1,n_of_eqcons);
BETA = zeros(1,n_of_iqcons);
X = [0.4 6.0 8.0 0.5];
RK = 1;
A = eye(length(X));
epsilon1 = 1e-6;
delx = 1e-3;
checkconstr = zeros(1,n_of_iqcons);
fprintf('        No.                x-vector                     f(x)    |Cons.| \n')
fprintf('____________________________________________________________________________\n')
checkconstr = zeros(1,n_of_iqcons);
for i = 1:100
deriv_f = grad_vec_f(X,delx,n_of_var,scale_factor);
sec_deriv_f = hessian(X,delx);
deriv_eqcon = grad_vec_eqcon(X,delx,n_of_eqcons);
deriv_ineqcon = grad_vec_ineqcon(X,delx,n_of_iqcons);
options = optimset('Display','off');
x= quadprog(sec_deriv_f,deriv_f,deriv_ineqcon,-ineqconstr_val(X),deriv_eqcon,-eqconstr_val(X),[],[],X,options);
fprev = func_val(X);
X =X+x';
yyy = func_val(X);
LAMBDA = LAMBDA + 2*RK*EQCONSTR;
BETA = BETA + 2*RK*(max([ICONSTR; -BETA./(2*RK)]));
fnew = func_val(X);
checkconstr1 = max([ineqconstr_val(X);checkconstr]);
disp([i X FVALUE norm([checkconstr1 eqconstr_val(X)])]);
if abs(fnew-fprev) < epsilon1
    break
end
end
fprintf('__________________________________________________________________________\n')