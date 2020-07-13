clear
syms t n 

omega = 4*pi;
fs = 10;
f = omega/(2*pi);
fbyfs = f/fs;


x(t) = cos(omega*t);

y(n) = cos(2*pi*n*fbyfs);

divs = 100;
val = 0:1/divs:1;
valn = 1:1*fs;

ip = subs(x(t),t,val);
op = subs(y(n),n,valn);



hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, ip ,'b.-', 'LineWidth', 3)
legend("x(t)")

subplot(1,2,2), hold on, grid on, box on
stem(valn, op ,'b.-', 'LineWidth', 3)
legend("y(n)")