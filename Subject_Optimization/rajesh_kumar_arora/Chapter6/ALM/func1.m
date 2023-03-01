function y = func1(x,scale_factor)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE 
y = (x(1)-1)^2 + (x(2)-5)^2;
h(1) = 0.0;
g(1) = -x(1)^2 + x(2) -4;
g(2) = -(x(1)-2)^2 + x(2) -3;

EQCONSTR = h;
ICONSTR = g;
FVALUE = y;
y = y + LAMBDA.*EQCONSTR + RK.*EQCONSTR^2 + sum(BETA.* max([ICONSTR; -BETA./(2*RK)])) + sum(RK*(max([ICONSTR; -BETA./(2*RK)])).^2);

