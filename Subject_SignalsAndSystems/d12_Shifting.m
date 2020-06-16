syms t n
val =  linspace(-1,1,100);


hold on, grid on, box on

x = sin(2*pi*t);
y = subs(x, t,val);
plot(val,y,'b', 'LineWidth', 2)

x = sin(2*pi*(t-0.2));
y = subs(x, t,val);
plot(val,y,'r', 'LineWidth', 2)

x = sin(2*pi*(t+0.2));
y = subs(x, t,val);
plot(val,y,'g', 'LineWidth', 2)
legend("sin(2*pi*t)", "sin(2*pi*(t-0.2))", "sin(2*pi*(t+0.2))")

