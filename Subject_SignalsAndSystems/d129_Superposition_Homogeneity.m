clear
syms i(t) T x(t) y(t) t x1(t) x2(t)

hold on, grid on, box on

x1(t) = t^2;

val =  linspace(-5,5,1000);

k = 10;

x(t) = x1(t);     T = sin(x(t)); y(t) = T; op = subs(y(t),t,val);
x(t) = k*x1(t);   T = sin(x(t)); y(t) = T; opk = subs(y(t),t,val);
hold on, grid on

ky = k*op;
plot(val, ky ,'b:', 'LineWidth', 4)
plot(val, opk ,'r-', 'LineWidth', 2)
legend("k*y(t)", "T[ k * x(t) ]")