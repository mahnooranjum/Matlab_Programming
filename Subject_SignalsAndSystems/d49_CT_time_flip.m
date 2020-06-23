syms x(t) 
hold on, grid on, box on

x(t) = exp(t);
val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = exp(-1*t);
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "-1 * t")
