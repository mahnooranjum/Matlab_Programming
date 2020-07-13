clear 
D=5;
data = randn(10,D);
v = 1:D;

for i=1:D
    data(:,i) = data(:,i)+v(i)
end

subplot(2,2,1), axis square, hold on, grid on, box on
bar(1:D, mean(data), 'b')

subplot(2,2,2), axis square, hold on, grid on, box on
bar(1:D, std(data), 'r')

subplot(2,2,3), axis square, hold on, grid on, box on, xlim([0 D+1])
errorbar(1:D, mean(data), std(data), 'k')

subplot(2,2,4), axis square, hold on, grid on, box on, xlim([0 D+1])
bar(1:D, mean(data), 'b')
errorbar(1:D, mean(data), std(data), 'k')


