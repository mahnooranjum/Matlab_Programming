clear
syms x(t) X(t)
hold on, grid on, box on

T0 = 1/4;
w0 = 2*pi/T0;
x(t) = log(t)*heaviside(t);
E(t) = limit(int(x(t)^2), t, Inf);

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0, E(t),'r-', 'LineWidth', 2)
legend("Signal", "Energy")