syms x(t) xstar(t)
hold on, grid on, box on

T0 = 1/4;
w0 = 2*pi/T0;
x(t) = sin(w0 * t);
xstar(t) = -1 * x(t+ (T0/2));
val =  linspace(-2,2,1000);
y = subs(x(t),t,val);
ystar = subs(xstar(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
plot(val,ystar,'r-', 'LineWidth', 3)
legend("Real Signal", "Half Wave Symmetric")