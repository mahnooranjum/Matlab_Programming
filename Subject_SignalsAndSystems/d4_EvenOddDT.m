syms t n

figure()
fs = 100;
x = 5*sin(2*pi*n/fs);
val = -10:10;
y = subs(x, n, val);
hold on, grid on, box on
stem(val,y,'c', 'LineWidth', 2)
x = 5*cos(2*pi*n/fs);
val = -10:10;
y = subs(x, n, val);
stem(val,y,'r', 'LineWidth', 2)
legend("DT Odd", "DT Even")