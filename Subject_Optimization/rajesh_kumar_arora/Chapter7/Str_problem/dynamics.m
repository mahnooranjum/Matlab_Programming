function [ weight, disp ] = dynamics( X )
P = 10000;
rho = 0.283;
E = 30e6;
h = 100;
weight = 2*rho*h*X(2)*sqrt(1+X(1)^2);
disp = P*h*(1+X(1)^2)^1.5*sqrt(1+X(1)^4) / (2*sqrt(2)*E*X(1)^2*X(2));
end

