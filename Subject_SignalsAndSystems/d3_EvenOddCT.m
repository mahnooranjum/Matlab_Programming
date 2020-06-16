syms t n

x = 5*sin(2*pi*t);
val =  linspace(-1,1,1000);
y = subs(x, t,val);

hold on, grid on, box on
plot(val,y,'c', 'LineWidth', 2)
x = 5*cos(2*pi*t);
val =  linspace(-1,1,1000);
y = subs(x, t,val);
plot(val,y,'r', 'LineWidth', 2)
legend("CT Odd", "CT Even")
