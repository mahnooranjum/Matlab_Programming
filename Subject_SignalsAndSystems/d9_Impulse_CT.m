syms t n

x = t==0;
val =  -1:0.0001:1;
y = subs(x, t,val);

hold on, grid on, box on, ylim([-0.1, 1.1])
plot(val,y,'b', 'LineWidth', 2)
legend("Unit Impulse")
