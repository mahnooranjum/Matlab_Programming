%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code rosenbrock.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% plots the Rosenbrock’s function
%
clear all
clc
[x1,x2] = meshgrid(-2:.03:2,-2:.03:2);
z = 100*(x2-x1.^2).^2+(1-x1).^2
surf(x1,x2,z)
shading interp
view (170,20)
xlabel('x1')
ylabel('x2')
zlabel('f(x1,x2)')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
