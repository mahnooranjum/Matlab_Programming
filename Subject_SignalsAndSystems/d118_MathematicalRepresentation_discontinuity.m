clear
syms i(t) u(t) r(t)

hold on, grid on, box on

i(t) = t==0;
u(t) = heaviside(t);
r(t) = t*u(t);

x(t) = 0 + 3*u(t+2) + 2*u(t) - 7*u(t-4);

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val, y ,'b:', 'LineWidth', 5)
legend("x(t)")