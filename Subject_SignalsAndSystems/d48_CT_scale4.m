syms x(t) 
hold on, grid on, box on

x(t) = sin(t);
val =  linspace(-10,50,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = sin(-0.1*t);
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "-0.1 * t")
