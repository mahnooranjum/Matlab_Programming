clear
syms x(t) X(t)
hold on, grid on, box on


x(t) = cos(t);
f = @(t) cos(t);
X(t) = integral(@(t) f(t),0,2);

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0,X(t), 'r', 'LineWidth', 3)
legend("Real Signal", "Integral")