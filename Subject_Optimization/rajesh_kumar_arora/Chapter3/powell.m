%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code powell.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% n_of_var -> number of design variables
% x = [-1.5 1.5] -> starting value of x
% epsilon -> constant used for terminating the algorithm
% term -> linearly independent search directions
% falpha_prev -> function value at first / previous iteration
% search -> search direction
%
clear all
clc
n_of_var = 2;
x = [-3 2];
epsilon = 1e-6;
falpha_prev = func_multivar(x);
fprintf('Initial function value =  %7.4f\n ',falpha_prev)
fprintf(' No.       x-vector      f(x)   \n')
fprintf('__________________________________________\n')
 
for i = 1: n_of_var
    for j = 1:n_of_var+1
        if (i==j)
            term(i,j)=1;
        else
            term(i,j) = 0;
        end
    end
end

for i = 1: n_of_var
    search{i} = (term(:,i))';
    [alpha,falpha] = golden_funct1(x,search{i});
    x = x + alpha*search{i};
end

search{i+1} = (term(:,i+1))';

for k = 1:200
    xini =x;
    i = 1;
    while i<n_of_var+1
        [alpha,falpha] = golden_funct1(x,search{i});
         x = x + alpha*search{i};
         i = i+1;
    end
        if abs(falpha-falpha_prev) < epsilon
            break;
        end
    search{i} = (x-xini);
    [alpha,falpha] = golden_funct1(x,search{i});
    x = x + alpha*search{i};
    temp =search;
    for i = 1: n_of_var
    search{i} = temp{i+1};
    end
    falpha_prev = falpha;
    fprintf('%3d %8.3f %8.3f  % 8.3f  \n',k,x,falpha)
end
fprintf('__________________________________________\n')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
