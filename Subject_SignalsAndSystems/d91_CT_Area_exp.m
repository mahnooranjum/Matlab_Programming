syms x(t) X(t)
hold on, grid on, box on

T0 = 1/4;
w0 = 2*pi/T0;
x(t) = exp(t);
X(t) = int(x(t));

val =  linspace(-2,2,1000);
y = subs(x(t),t,val);
Y = subs(X(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
plot(val,Y,'r-', 'LineWidth', 3)
legend("Real Signal", "Integral")