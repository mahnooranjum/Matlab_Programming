syms t n
val =  -10:0.001:10;

x = exp(1i*t);
y = subs(x, t,val);

hold on, grid on, box on, ylim([-1.1, 1.1])
plot(val,y,'b', 'LineWidth', 2)

x = exp(1*t);
y = subs(x, t,val);
plot(val,y,'r', 'LineWidth', 2)

legend("Complex Exponential", "Exponential")
