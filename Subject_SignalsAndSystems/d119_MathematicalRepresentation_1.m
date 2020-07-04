clear
syms i(t) u(t) r(t)

hold on, grid on, box on

i(t) = t==0;
u(t) = heaviside(t);
r(t) = t*u(t);

x(t) = 0 + (8/2)*r(t+2) - (8/2)*r(t) - (8/4)*r(t) + (8/4)*r(t-4) ;

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val, y ,'b:', 'LineWidth', 5)
legend("x(t)")