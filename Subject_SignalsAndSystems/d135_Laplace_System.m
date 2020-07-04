clear
syms i(t) T x(t) y(t) t x1(t) x2(t) X(s)

hold on, grid on, box on

x1(t) = t^2;
X1(s) = laplace(x1(t));
divs = 100;
val = -5:1/divs:5;

x(t) = x1(t);     T = x(t-1) +  x(t+1); y(t) = T; op = subs(y(t),t,val);
val(val==0) = 1/divs;
Y(s) = laplace(y(t));
X(s) = Y(s);     lap_x = subs(X(s),s,val);
hold on, grid on


plot(val, op ,'b:', 'LineWidth', 4)
plot(val, lap_x ,'r-', 'LineWidth', 2)
legend("y(t)", "Y(s)")