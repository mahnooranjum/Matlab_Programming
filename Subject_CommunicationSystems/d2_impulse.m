clear
syms t 

Ts = 0.1; 
fs = 1/Ts; 

impulse(t) = piecewise(t==0, 1);

x = -5:5;
y = subs(impulse, t, x);
stem(x, y);