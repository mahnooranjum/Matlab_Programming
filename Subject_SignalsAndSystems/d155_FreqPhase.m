clear
syms x(t) xt(t) 

hold on, grid on, box on

fc = 1;
x(t) = sin(2*pi*fc*t);
fi = fc + 2;
xt(t) = sin(2*pi*fi*t);

ti = 0.1;
theta = 2*pi*fi*ti;

val =  linspace(-1,1,1000);
y = subs(x(t),t,val);
y_t= subs(xt(t),t,val);
hold on, grid on
plot(val, y ,'b:', 'LineWidth', 5)
plot(val, y_t ,'r.-', 'LineWidth', 5)
legend("x(t)", "x_t(t)")