syms x(t) 
hold on, grid on, box on

x(t) = sin(t);
val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

A = 1.1;
x(t) = A * sin(t);
y = subs(x(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "A = 1.1")
