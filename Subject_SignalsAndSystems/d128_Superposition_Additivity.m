clear
syms i(t) T x(t) y(t) t x1(t) x2(t)

hold on, grid on, box on

x1(t) = t;
x2(t) = t^2;

val =  linspace(-50,50,1000);

x(t) = x1(t);         T = sin(x(t)); y(t) = T; y1 = subs(y(t),t,val);
x(t) = x2(t);         T = sin(x(t)); y(t) = T; y2 = subs(y(t),t,val);
x(t) = x1(t) + x2(t); T = sin(x(t)); y(t) = T; y_add = subs(y(t),t,val);
hold on, grid on
plot(val, y1+y2 ,'b:', 'LineWidth', 4)
plot(val, y_add ,'r-', 'LineWidth', 2)
legend("x(t)", "y(t)")