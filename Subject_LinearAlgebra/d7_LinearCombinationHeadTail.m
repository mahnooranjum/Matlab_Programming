v = [4; 2];
w = [-1;2];

hold on
grid on
plotv([v, w, v+w, v-w])
quiver(v(1),v(2),w(1),w(2), 0)
quiver(v(1),v(2),-1*w(1),-1*w(2), 0)
legend("v", "w", "v + w", "v-w", "head to tail add", "head to tail sub")