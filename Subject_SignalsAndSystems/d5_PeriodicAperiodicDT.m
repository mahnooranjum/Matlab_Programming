syms t n

figure()
fs = 100;
x = 5*sin(2*pi*n/fs);
val = -100:100;
y = subs(x, n, val);
hold on, grid on, box on
stem(val,y,'b', 'LineWidth', 2)
x = 5*cos(2*pi*n/fs);
y = randi([1,5],1,201 );
stem(val,y,'r', 'LineWidth', 2)
legend("DT Periodic", "DT Aperiodic")