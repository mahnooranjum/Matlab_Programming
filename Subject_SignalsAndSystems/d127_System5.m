clear
syms i(t) T x(t) y(t)

hold on, grid on, box on

x(t) = (t)*heaviside(t);

T = diff(x(t));

y(t) = T;

val =  linspace(-5,5,1000);
ip = subs(x(t),t,val);
op = subs(y(t),t,val);

hold on, grid on
plot(val, ip ,'b:', 'LineWidth', 4)
plot(val, op ,'r-', 'LineWidth', 2)
legend("x(t)", "y(t)")