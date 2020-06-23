syms x(t) xe(t) xo(t)
hold on, grid on, box on

x(t) = (t)^3;
val =  linspace(-10,10,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

xe(t) = (x(t)+ x(-1*t))/2 ;
y = subs(xe(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "Even component")
