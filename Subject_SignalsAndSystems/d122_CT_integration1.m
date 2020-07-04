clear
syms i(t) u(t) r(t) x(t) x_i(t)

hold on, grid on, box on

i(t) = t==0;
u(t) = heaviside(t);
r(t) = t*u(t);

x(t) = 0 + 3*u(t) - 3*u(t-2);
x_i(t) = int(x(t)) ;

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);
y_d = subs(x_i(t),t,val);
hold on, grid on
plot(val, y ,'b:', 'LineWidth', 5)
plot(val, y_d ,'r.-', 'LineWidth', 5)
legend("x(t)", "x_i(t)")