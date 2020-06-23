syms x(t) 
hold on, grid on, box on

x(t) = exp(t);
val =  linspace(-1,5,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = exp(t+2);
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "Advanced")
