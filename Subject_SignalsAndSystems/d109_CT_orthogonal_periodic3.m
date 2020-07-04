clear
syms x(t) x1(t) x2(t) X(t)
hold on, grid on, box on

T0 = 1;
w0 = 2*pi/T0;
x1(t) = sin(w0*t + 4);
x2(t) = sin(w0*t + 2);
x(t) = x1(t)*x2(t);
O(t) = int(x(t),[0, T0]);
val =  linspace(-2,2,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0, O(t),'r-', 'LineWidth', 2)
legend("Signal", "Orthogonal")