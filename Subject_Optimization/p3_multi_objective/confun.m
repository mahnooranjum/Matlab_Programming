function [c, ceq] = confun(x,w1,w2)
c(1) = 2*x(1) + 3*x(2)^2 - 8;
ceq = x(1) + x(2) - (7/2);

end