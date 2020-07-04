clear
syms i(t) u(t) r(t)

hold on, grid on, box on

i(t) = t==0;
u(t) = heaviside(t);
r(t) = t*u(t);

x(t) = 0 + 2*r(t) - 2*r(t-1);

val =  linspace(-2,2,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val, y ,'b:', 'LineWidth', 5)
legend("x(t)")