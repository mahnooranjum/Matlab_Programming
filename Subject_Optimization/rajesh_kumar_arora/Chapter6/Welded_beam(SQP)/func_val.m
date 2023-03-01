function y = func_val(x)
global LAMBDA RK BETA EQCONSTR ICONSTR FVALUE 
y = 1.10471*x(1)*x(1)*x(2) + 0.04811*x(3)*x(4)*(14+x(2));
g = ineqconstr_val(x);
h = eqconstr_val(x);
EQCONSTR = h;
ICONSTR = g;
FVALUE = y;
y = y + LAMBDA*EQCONSTR' + RK*EQCONSTR*EQCONSTR' + sum(BETA.* max([ICONSTR; -BETA./(2*RK)])) + sum(RK*(max([ICONSTR; -BETA./(2*RK)])).^2);
