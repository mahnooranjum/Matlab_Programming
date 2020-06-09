syms c d
v = [2;-1];
w = [-1;2];
b = [1;0];

eqns = [c*v(1) + d*w(1) == b(1),...
        c*v(2) + d*w(2) == b(2)];

s = solve(eqns, [c d])

s.c
s.d


hold on
grid on
quiver(0,0,v(1),v(2),0);
quiver(0,0,w(1),w(2),0);
quiver(0,0,b(1),b(2),0);
legend("V", "W", "B");


figure()
hold on
grid on
c = linspace(-1, 1, 10000);
d1 = (2*c) - 1;
d2 = (c/2);
plot(c,d1, 'LineWidth',3);
plot(c,d2, 'LineWidth',3);

