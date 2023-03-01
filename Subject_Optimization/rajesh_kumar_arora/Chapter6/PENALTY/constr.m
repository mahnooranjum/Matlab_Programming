function [h,g] = constr(x)
h(1) = 0;
g(1) = -x(1)^2 + x(2) -4;
g(2) = -(x(1)-2)^2 + x(2) -3;