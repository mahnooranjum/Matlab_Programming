clear 

n = 100;

figure, hold on, grid on, axis off
for i=1:n
    plot([i,n], [n,n-i], 'k');
end



