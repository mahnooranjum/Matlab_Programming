syms x(t) 
hold on, grid on, box on

w0 = 4*pi;
x(t) = exp(1i * w0 *t);
val =  linspace(-2,2,1000);
y = subs(x(t),t,val);

plot(val,y,'b', 'LineWidth', 2)

Tbyk = (2*pi)/w0;
fprintf('T / k:  %s\n',strtrim(rats(Tbyk)))

legend("exp(j w0 t)")
