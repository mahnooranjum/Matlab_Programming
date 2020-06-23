syms x(t) 
hold on, grid on, box on

x(t) = (t)^3;
val =  linspace(-10,10,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = (-1*t)^3;
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "x(-t)")
