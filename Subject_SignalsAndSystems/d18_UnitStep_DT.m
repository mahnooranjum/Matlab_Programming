syms t n

figure()
val = -10:10;

x = piecewise(n>=0, 1, n<0, 0);
y = subs(x, n, val);

hold on, grid on, box on, ylim([0 2]),xlim([-10 10]), 
stem(val,y,'c', 'LineWidth', 2)

legend("Unit Step")