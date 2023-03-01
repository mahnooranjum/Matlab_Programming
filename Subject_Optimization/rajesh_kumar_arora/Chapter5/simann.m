%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name simann.m
%   Simulated annealing algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% lb -> lower bound of variables
% ub -> upper bound of variables
% x(i) -> design variables
% rand -> random number from 0 to 1
% perturb_x(i) -> perturbation on design variables
%
clear all
clc
format long
epsilon =0.002;
flag = 0;
lb = [-5.12 -5.12];
ub = [5.12 5.12];
for i =1:length(lb)
    x(i) = lb(i) + (ub(i)-lb(i))*rand;
end
[E_old,constr] = func1(x);
bestx =x;
best_obj = E_old;
for j =1:10000
    flag = flag+1;
for i =1:length(x)
    perturb_x(i) = epsilon*x(i)*rand;
    if rand < 0.5
        perturb_x(i) = - perturb_x(i);
    end
end
x = x + perturb_x;
for i =1:length(x)
    if x(i)<lb(i) | x(i)>ub(i)
     x(i) = lb(i) + (ub(i)-lb(i))*rand;
    end
end   
[E_new,constr] = func1(x);
if E_new < E_old
    E_old = E_new;
else
    if exp(-(E_new-E_old)/E_old)> rand
        E_old = E_new;
    end
     x = x - perturb_x;
end
     px(j) = j;
     py(j) = E_new;
if E_new < best_obj
    best_obj = E_new;
    bestx = x;
    flag = 0;
end
[j bestx best_obj]
if flag > 1000
    break;
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%