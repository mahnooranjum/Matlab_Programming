syms t n

x = heaviside(t);
val =  linspace(-1,1,1000);
y = subs(x, t,val);

hold on, grid on, box on, ylim([-0.1, 1.1])
plot(val,y,'b', 'LineWidth', 2)
legend("Unit Step")
