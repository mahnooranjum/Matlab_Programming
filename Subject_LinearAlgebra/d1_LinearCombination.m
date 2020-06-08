v = [4; 2];
w = [-1;2];

hold on
grid on
plotv([v, w, v+w, v-w])
legend("v", "w", "v + w", "v-w")
% quiver(2,3,5,5)