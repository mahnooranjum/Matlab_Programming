syms t n

x = sin(2*pi*t);

val =  linspace(-1,1,100);
y = subs(x, t,val);

hold on, grid on, box on
plot(val,y,'c', 'LineWidth', 2)
legend("sin(2*pi*t)")

figure()
fs = 200;
x = sin(2*pi*n/fs);
val = -100:100;
y = subs(x, n, val);
hold on, grid on, box on
stem(val,y,'c')
legend("sin(2*pi*n/fs)")