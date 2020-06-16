syms t n

x = cos(t) + 1i*sin(t);
val =  -10:0.001:10;
y = subs(x, t,val);

hold on, grid on, box on, ylim([-1.1, 1.1])
plot(val,y,'b', 'LineWidth', 2)
legend("Complex Exponential")
