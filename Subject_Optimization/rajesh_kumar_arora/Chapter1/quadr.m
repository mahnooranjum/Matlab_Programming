%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code quadr.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% x-> independent variable and symbolic variable (later)
% y -> exp(-x)
% syms -> symbolic object (MATLAB function)
% taylor -> MATLAB function
% subs -> symbolic substitution (MATLAB function)
% xlabel, ylabel, legend, plot, hold on -> MATLAB functions
%
x = -2:0.01:2;
y = exp(-x);
plot(x,y)
hold on

% Linear approximation
syms x
f = taylor(exp(-x));
x = -2:0.01:2;
z = subs(f);
plot(x,z,'r--')

% Quadratic approximation
syms x
f = taylor(exp(-x));
x = -2:0.01:2;
z = subs(f);
plot(x,z,'g--')
legend('exp(-x)','linear','quadratic')
xlabel('x')
ylabel('f(x)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
