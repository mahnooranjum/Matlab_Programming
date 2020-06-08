hold on
grid on

combinations = 10
v = [1;0]
w = [0;1]

subplot(2,2,1)
hold on
grid on
for i=-combinations:0
    for j=-combinations:0
        iv = i*v;
        jw = j*w; 
        r1 = iv(1) + jw(1);
        r2 = iv(2) + jw(2);
        quiver(0,0,r1,r2,0)
    end
end
title('0> 0>')

subplot(2,2,2)
hold on
grid on
for i=0:combinations
    for j=-combinations:0
        iv = i*v;
        jw = j*w; 
        r1 = iv(1) + jw(1);
        r2 = iv(2) + jw(2);
        quiver(0,0,r1,r2,0)
    end
end
title('0< 0>')

subplot(2,2,3)
hold on
grid on
for i=0:combinations
    for j=0:combinations
        iv = i*v;
        jw = j*w; 
        r1 = iv(1) + jw(1);
        r2 = iv(2) + jw(2);
        quiver(0,0,r1,r2,0)
    end
end
title('0< 0<')


subplot(2,2,4)
hold on
grid on
for i=-combinations:0
    for j=0:combinations
        iv = i*v;
        jw = j*w; 
        r1 = iv(1) + jw(1);
        r2 = iv(2) + jw(2);
        quiver(0,0,r1,r2,0)
    end
end
title('0> 0<')