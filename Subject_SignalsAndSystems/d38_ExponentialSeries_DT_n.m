syms t n

hold on; grid on;
val = -40:40;
a = 1.1;
x = a^(n);
y1 = subs(x, n, val);

x = a^(-1*n);
y2 = subs(x, n, val);
stem(val,y1,'b', 'LineWidth', 2)
stem(val,y2,'r', 'LineWidth', 2)
legend("n +ve", "n -ve");

