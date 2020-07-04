clear
syms x(t) x_d(t)
hold on, grid on, box on

T0 = 1;
w0 = 2*pi/T0;

x(t) = sinc(t);
x_d(t) = diff(x(t));
val =  linspace(-10,10,1000);
y = subs(x(t),t,val);
y_d = subs(x_d(t),t,val);
hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
plot(val, y_d,'r-', 'LineWidth', 2)
legend("Signal", "Derivative")