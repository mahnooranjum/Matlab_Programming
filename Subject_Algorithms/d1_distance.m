clear 
subplot(1,2,1), grid on, hold on, xlim([0 10]), ylim([0 10])
[x,y] = ginput()
scatter(x, y, 'r', 'filled')

D = zeros(length(x), length(x));

for i=1:length(x)
    for j=1:length(x)
        D(i,j) = sqrt((x(i)-x(j))^2 + (y(i)-y(j))^2);
    end
end
subplot(1,2,2)
imagesc(D)
