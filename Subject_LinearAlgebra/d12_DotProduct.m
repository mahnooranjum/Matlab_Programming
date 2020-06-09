syms c d
v = [2;-1];
w = [-1;2];
b = [1;0];

vw = [v(1)*w(1); v(2)*w(2)];

hold on 
grid on
quiver(0,0,v(1),v(2),0);
quiver(0,0,w(1),w(2),0);
quiver(0,0,vw(1),vw(2),0);
legend("v","w","v . w")