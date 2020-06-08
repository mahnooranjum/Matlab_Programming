hold on
grid on

combinations = 10
v = [1;1]
w = [1;4]
quiver(0,0,v(1),v(2),0)
quiver(0,0,w(1),w(2),0)

for i=-combinations:combinations
    for j=-combinations:combinations
        iv = i*v;
        jw = j*w; 
        r1 = iv(1) + jw(1);
        r2 = iv(2) + jw(2);
        quiver(0,0,r1,r2,0)
    end
end
