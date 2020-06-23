syms x(t) 
hold on, grid on, box on

x(t) = 5*sin(2*pi*(t));
val =  linspace(-1,1,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = 5*sin(2*pi*(t-0.5));
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "Delayed")
