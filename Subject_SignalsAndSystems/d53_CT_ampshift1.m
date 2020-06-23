syms x(t) 
hold on, grid on, box on

x(t) = sin(t);
val =  linspace(-10,10,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

x(t) = sin(t) + 10;
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "+ 10")
