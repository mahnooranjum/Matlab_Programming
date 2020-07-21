clear

syms t

e = sinc(t);
p = 1.2*e; 
i = 1.2*int(e); 
d = 1.2*diff(e); 

val = 1/100:1/100:2;
oe = subs(e, t, val);
op = subs(p, t, val);
od = subs(d, t, val);
oi = subs(i, t, val);

subplot(1,3,1), hold on, grid on
plot(val, oe,'r');
plot(val, op,'b');
title('P');

subplot(1,3,2), hold on, grid on
plot(val, oe,'r');
plot(val, oi,'b');
title('I');

subplot(1,3,3), hold on, grid on
plot(val, oe,'r');
plot(val, od,'b');
title('D');
