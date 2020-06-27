syms x(t) 
hold on, grid on, box on

w0 = 4*pi;
T0 = 2*pi/w0;
x(t) = sin(w0 *t)^2;
val =  linspace(-2,2,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)
fprintf('T0:  %s\n',strtrim(rats(T0)))
legend("exp(j w0 t)")
