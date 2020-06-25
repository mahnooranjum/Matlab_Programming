syms x1(t) x2(t) xe(t) xo(t) x(t)
hold on, grid on, box on

x1(t) = (t)^3;
x2(t) = 100*cos(t);
x(t) = x1(t) + x2(t);

val =  linspace(-10,10,1000);
y1 = subs(x1(t),t,val);
y2 = subs(x2(t),t,val);
y = subs(x(t),t,val);

plot(val,y1,'b', 'LineWidth', 2)
plot(val,y2,'b', 'LineWidth', 2)
plot(val,y,'r', 'LineWidth', 2)

legend("x1","x2", "Addition")
