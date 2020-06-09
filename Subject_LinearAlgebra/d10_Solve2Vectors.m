syms c d
v = [2;-1];
w = [-1;2];
b = [1;0];

eqns = [c*v(1) + d*w(1) == b(1),...
        c*v(2) + d*w(2) == b(2)];

s = solve(eqns, [c d])

s.c
s.d