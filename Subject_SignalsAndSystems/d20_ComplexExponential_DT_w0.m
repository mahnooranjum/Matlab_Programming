syms t n

subplot(2,2,1), ylim([-2 2]),xlim([-10 10])
val = -10:10;
w0 = 0;
x = exp(1i*w0*n);
y = subs(x, n, val);

stem(val,y,'c', 'LineWidth', 2)
legend("0");


w0 = pi/2;
x = exp(1i*w0*n);
y = subs(x, n, val);
subplot(2,2,2), ylim([-2 2]),xlim([-10 10])
stem(val,y,'r', 'LineWidth', 2)
legend("pi/2");

w0 = pi/4;
x = exp(1i*w0*n);
y = subs(x, n, val);
subplot(2,2,3), ylim([-2 2]),xlim([-10 10])
stem(val,y,'g', 'LineWidth', 2)
legend("pi/4");

w0 = pi/8;
x = exp(1i*w0*n);
y = subs(x, n, val);
subplot(2,2,4), ylim([-2 2]),xlim([-10 10])
stem(val,y,'g', 'LineWidth', 2)
legend("pi/8");

