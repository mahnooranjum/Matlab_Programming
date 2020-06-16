syms t n

x = 5*sin(2*pi*t);

val =  linspace(-1,1,1000);
y = subs(x, t,val);

hold on, grid on, box on
plot(val,y,'c', 'LineWidth', 2)
plot(val,round(y),'r', 'LineWidth', 2)
legend("CT Analog", "CT Digital")

figure()
fs = 100;
x = 5*sin(2*pi*n/fs);
val = -10:10;
y = subs(x, n, val);
hold on, grid on, box on
stem(val,y,'c', 'LineWidth', 2)
scatter(val,round(y),'r', 'LineWidth', 2)
legend("DT Analog", "DT Digital")