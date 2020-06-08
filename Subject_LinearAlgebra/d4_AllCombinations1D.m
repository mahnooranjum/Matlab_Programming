hold on
grid on

combinations = 20
v = [1;1]
quiver(0,0,v(1),v(2),0)

for i=-combinations:combinations
    iv = i*v;
    r1 = iv(1);
    r2 = iv(2);
    quiver(0,0,r1,r2,0)

end
