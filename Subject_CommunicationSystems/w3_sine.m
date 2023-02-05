clear 

syms x(t)

f = 2;
phi = pi/2; 
A = 10; 
x(t) = A * sin (2*pi*f*t + phi); 

inps = 0:1/100:1; 
out  = subs(x, t, inps); 

figure(), hold on, box on
plot(inps, out, 'LineWidth', 2);
str = mfilename('fullpath'); 
str = split(str, '\');
title(str{end});
