syms t n x
val =  -20:0.01:20;

x = exp((1i * 5 * pi * t)/8);
output = subs(x, t , val);

valn =  -20:20;
Ts = 2/3;
xn = exp((1i * 5 * pi * Ts * n)/8);
outputn = subs(xn, n , valn);
% x2 = t;
% y = cosh(x);
% input2 = subs(x2, t , val);
% output2 = subs(y, x , input2);

hold on, grid on
plot(val,output,'b', 'LineWidth', 2)
stem(valn*Ts,outputn,'r', 'LineWidth', 2)
legend("exp((i*5*pi*t/8) repeats at 24th step for Ts = 2/3")

