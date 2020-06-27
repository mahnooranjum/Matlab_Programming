clear
syms x(t) X(t)
hold on, grid on, box on

T0 = 2;
w0 = 2*pi/T0;
x(t) = cos(w0 * t);
f = @(t) cos(w0 * t);
X(t) = integral(@(t) f(t),0,T0) / T0;

val = linspace(-4,4,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0,X(t), 'r', 'LineWidth', 3)
legend("Real Signal", "Average Value")