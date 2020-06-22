syms t n

subplot(2,2,1), ylim([-2 2]),xlim([-10 10])
val = 0:40;
a = 1.1;
x = a^(-1*n);
y = subs(x, n, val);

stem(val,y,'b', 'LineWidth', 2)
legend("h(tau) = e(tau)u(tau)");


subplot(2,2,3), ylim([-2 2]),xlim([-10 10])
val = 0:40;
a = 1.1;
x = a^(-1*n);
y = subs(x, n, val);
y = fliplr(y);
val = -1*fliplr(val);

stem(val,y,'b', 'LineWidth', 2)
legend("h(-tau)");

subplot(2,2,[2 4]),xlim([-10 10]), hold on
val = 0:40;
a = 1.1;
x = a^(-1*n);
y = subs(x, n, val);
y = fliplr(y);
val = 10-1*fliplr(val);
stem(val,y,'b', 'LineWidth', 2)
val = 10+val;
stem(val,y,'r', 'LineWidth', 2)
legend("h(10-tau)","h(20-tau)");