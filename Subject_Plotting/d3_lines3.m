clear 

n = 10;

figure, hold on, grid on
for i=1:n
    plot([0,n], [0,i]);
    plot([0,n], [n,i]);
    plot([n,0], [n,i]);
end



