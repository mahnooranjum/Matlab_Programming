syms x(t) 
hold on, grid on, box on

T0 = 0.1;
w0 = 2*pi/T0;
x(t) = exp(1i * w0 *t);
val =  linspace(-2,2,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

legend("exp(j w0 t)")
