syms t n

subplot(2,2,1), ylim([-2 2]),xlim([-10 10])
val = 0:40;
a = 1.1;
x = a^(-1*n);
y1 = subs(x, n, val);


stem(val,y1,'b', 'LineWidth', 2)
legend("h(tau) = e(tau)u(tau)");


subplot(2,2,3), ylim([-2 2]),xlim([-10 10])
val = 0:40;
x = n;
y2 = subs(x, n, val);

stem(val,y2,'b', 'LineWidth', 2)
legend("x(t)");

subplot(2,2,[2 4]), hold on
val = 0:40;
out = conv(double(y1), double(y2));
stem(val,y,'r', 'LineWidth', 2)
legend("convolution");