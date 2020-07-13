clear 

n = 100;

figure, hold on, grid on, axis off
for i=1:n
    plot([i,n], [i,0], 'k');
    plot([i,n], [0,i], 'k');
end



