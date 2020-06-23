syms x(t) 
hold on, grid on, box on

x(t) = (t)^2;
val =  linspace(-10,10,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = -1*(t)^2;
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "-x(t)")
