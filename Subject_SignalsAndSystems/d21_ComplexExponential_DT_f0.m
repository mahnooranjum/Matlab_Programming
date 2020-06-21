syms t n

subplot(2,2,1), ylim([-2 2]),xlim([-10 10])
val = -10:10;
k = 1;
N = 2;
f0=k/N;
w0 = 2*pi*f0;
x = exp(1i*w0*n);
y = subs(x, n, val);

stem(val,y,'c', 'LineWidth', 2)
legend("1/2");

k = 1;
N = 3;
f0=k/N;
w0 = 2*pi*f0;
x = exp(1i*w0*n);
y = subs(x, n, val);
subplot(2,2,2), ylim([-2 2]),xlim([-10 10])
stem(val,y,'r', 'LineWidth', 2)
legend("1/3");

k = 1;
N = 4;
f0=k/N;
w0 = 2*pi*f0;
x = exp(1i*w0*n);
y = subs(x, n, val);
subplot(2,2,3), ylim([-2 2]),xlim([-10 10])
stem(val,y,'g', 'LineWidth', 2)
legend("1/4");

k = 1;
N = 5;
f0=k/N;
w0 = 2*pi*f0;
x = exp(1i*w0*n);
y = subs(x, n, val);
subplot(2,2,4), ylim([-2 2]),xlim([-10 10])
stem(val,y,'g', 'LineWidth', 2)
legend("1/5");

