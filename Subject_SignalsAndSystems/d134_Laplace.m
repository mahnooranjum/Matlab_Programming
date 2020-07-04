clear
syms i(t) T x(t) y(t) t x1(t) x2(t) X(s)

hold on, grid on, box on

x1(t) = sin(t);
X1(s) = laplace(x1(t));
divs = 100;
val = -5:1/divs:5;

x(t) = x1(t); op = subs(x(t),t,val);
% val(val==0) = 0.0001;
X(s) = X1(s); lap_x = subs(X(s),s,val);
hold on, grid on


plot(val, op ,'b:', 'LineWidth', 4)
plot(val, lap_x ,'r-', 'LineWidth', 2)
legend("x(t)", "X(s)")