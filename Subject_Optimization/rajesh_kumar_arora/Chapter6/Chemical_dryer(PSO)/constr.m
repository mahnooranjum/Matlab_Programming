function [h,g] = constr(x)
h(1) = 0;
g(1) = ((3000+x(1))*x(1)^2*x(2))/1.2e13 -1;
g(2) = ( exp(0.184*x(1)^0.3*x(2)) )/4.1 -1;
