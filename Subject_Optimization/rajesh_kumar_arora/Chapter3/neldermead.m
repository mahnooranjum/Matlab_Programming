%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code neldermead.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% n_of_var -> number of design variables
% lb, ub -> lower/upper bound of variable
%(optinal for generating initial feasible points randomly)
% ybest -> best value of the objective function in the iteration
% ysecondbest -> second best value of the objective function
% yworst -> worst value of the objective function in the iteration
% xworst -> corresponding value of the variable for yworst
% xc -> centroid of the polygon
% fcentroid -> function value at xc
% deviation -> sum square deviation of function values from centroid
% xr => reflected point
% freflec => function value at reflected point
% xe => expanded point
% fexp => function value at expanded point
% xcont -> contracted point
% fcont => function value at contracted point
%
clear all
clc
n_of_var = 2;
epsilon = 1e-4;
alpha = 1;
gamma = 2;
rho = -0.5;
lb = [-1 -1];
ub = [1 1];
fprintf(' Iteration   Deviation        f(x)   \n')
fprintf('__________________________________________\n')
for JJ =1:50
for i =1:length(lb)
    for j = 1:n_of_var+1
        a(i,j) = lb(i) + (ub(i)-lb(i))*rand;
    end
end
if JJ~=1
    a=x';
end
for i =1:n_of_var+1
    for j = 1:n_of_var
        x(i,j) = a(j,i);
    end
    fval(i) = func_multivar(x(i,:));
end
[yworst,I] = max(fval);
[ybest,II] = min(fval);

% compute centroid
for i =1:length(lb)
    sum(i) = 0;
    for j = 1:n_of_var+1
        if (j ~= I)
        sum(i) = sum(i) + a(i,j);
        else
            xworst(:,i) = a(i,j);
        end
    end
end
xc = sum./n_of_var;
fcentroid = func_multivar(xc);
sum1 = 0;
for i =1:n_of_var+1
    sum1 = sum1 + (fcentroid-fval(i))^2;
end
deviation = sqrt(sum1/(n_of_var+1));

    if deviation < epsilon
        break;
    end

fval(I) = [];
[ysecondworst,Isw] = max(fval);
xr = xc + alpha*(xc-xworst);
freflec = func_multivar(xr);
if freflec < ybest
    %expansion
    xe = xc + gamma*(xc-xworst);
    fexp = func_multivar(xe);
    if fexp < freflec
        x(I,:) = xe;
    else
        x(I,:) = xr;
    end
else
   if freflec < ysecondworst
       x(I,:) = xr;
   else
    xcont = xc + rho*(xc-xworst);
    fcont = func_multivar(xcont);
    if fcont < yworst
        x(I,:) = xcont;
    end
   end
end

fprintf('%3d %15.4f %15.3f    \n',JJ,deviation,ybest)

end
fprintf('__________________________________________\n')
xc
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
