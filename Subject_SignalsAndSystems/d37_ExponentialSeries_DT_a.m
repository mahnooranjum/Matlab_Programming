syms t n

subplot(1,2,1), ylim([-2 2]),xlim([-10 10])
val = 0:40;
a = 1.1;
x = a^n;
y = subs(x, n, val);

stem(val,y,'c', 'LineWidth', 2)
legend("1.1");


subplot(1,2,2), ylim([-2 2]),xlim([-10 10])
val = 0:40;
a = -1.1;
x = a^n;
y = subs(x, n, val);

stem(val,y,'c', 'LineWidth', 2)
legend("-1.1");

