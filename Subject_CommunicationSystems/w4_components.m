clear 

syms x(t)

f = 2;
phi = pi/2; 
A = 10; 

x(t) = A * (4 / pi) *  (sin (2*pi*f*t)); 

inps = 0:1/100:1; 
out  = subs(x, t, inps); 

subplot(311), hold on, box on
plot(inps, out, 'LineWidth', 2);
str = mfilename('fullpath'); 
str = split(str, '\');
title(str{end});




x(t) = A * (4 / pi) *  (sin (2*pi*f*t ) + ...
                ( (1/3)*sin (2*pi*3*f*t))); 

inps = 0:1/100:1; 
out  = subs(x, t, inps); 

subplot(312), hold on, box on
plot(inps, out, 'LineWidth', 2);
str = mfilename('fullpath'); 
str = split(str, '\');
title(str{end});

x(t) = A * (4 / pi) *  (sin (2*pi*f*t ) + ...
                ( (1/3)*sin (2*pi*3*f*t)) + ...
                ( (1/5)*sin (2*pi*5*f*t))); 

inps = 0:1/100:1; 
out  = subs(x, t, inps); 


subplot(313), hold on, box on
plot(inps, out, 'LineWidth', 2);
str = mfilename('fullpath'); 
str = split(str, '\');
title(str{end});
