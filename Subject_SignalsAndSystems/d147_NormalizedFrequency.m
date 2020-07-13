clear
syms t n 

omega = 4*pi;
T = 0.1;

x(t) = cos(omega*t);

y(n) = cos(omega*n*T);

divs = 100;
val = 0:1/divs:2;
valn = 1:10;

ip = subs(x(t),t,val);
op = subs(y(n),n,valn);



hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, ip ,'b.-', 'LineWidth', 3)
legend("x(t)")

subplot(1,2,2), hold on, grid on, box on
stem(valn, op ,'b.-', 'LineWidth', 3)
legend("y(n)")