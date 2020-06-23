syms x(t) xe(t) xo(t)
hold on, grid on, box on

x(t) = 10*t^2 - 0.1*t^3;
val =  linspace(-100,100,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

xo(t) = (x(t)- x(-1*t))/2 ;
y = subs(xo(t),t,val);

plot(val,y,'r', 'LineWidth', 2)

legend("Original", "Odd component")

