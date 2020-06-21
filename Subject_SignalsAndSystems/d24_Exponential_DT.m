syms t n

subplot(2,2,1), ylim([-2 2]),xlim([-10 10])
val = -4:4;
w0 = 1;
x = exp(w0*n);
y = subs(x, n, val);

stem(val,y,'c', 'LineWidth', 2)
legend("1");


w0 = 3;
x = exp(w0*n);
y = subs(x, n, val);
subplot(2,2,2), ylim([-2 2]),xlim([-10 10])
stem(val,y,'r', 'LineWidth', 2)
legend("3");

w0 = -1;
x = exp(w0*n);
y = subs(x, n, val);
subplot(2,2,3), ylim([-2 2]),xlim([-10 10])
stem(val,y,'g', 'LineWidth', 2)
legend("-1");

w0 = -3;
x = exp(w0*n);
y = subs(x, n, val);
subplot(2,2,4), ylim([-2 2]),xlim([-10 10])
stem(val,y,'g', 'LineWidth', 2)
legend("-3");

