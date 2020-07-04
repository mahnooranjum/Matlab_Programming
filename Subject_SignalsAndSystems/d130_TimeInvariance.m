clear
syms i(t) T x(t) y(t) t x1(t) x2(t)

hold on, grid on, box on

x1(t) = t^2;

divs = 100;
val = -5:1/divs:5;

t0 = 2;

x(t) = x1(t);     T = sin(x(t)); y(t) = T; op = subs(y(t),t,val);
x(t) = x1(t - t0);   T = sin(x(t)); y(t) = T; op_del = subs(y(t),t,val);
hold on, grid on

dely = op;
shifter = length(1/divs:1/divs:t0);

plot(val(shifter:end), dely(shifter:end) ,'b:', 'LineWidth', 4)
plot(val, op_del ,'r-', 'LineWidth', 2)
legend("y(t - t_0)", "T[ x(t - t_0) ]")