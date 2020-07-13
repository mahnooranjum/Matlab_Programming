clear 
D=5;
data = randn(10,D);

subplot(1,3,1), axis square, hold on, grid on, box on
bar(1:D, mean(data), 'b')

subplot(1,3,2), axis square, hold on, grid on, box on
bar(1:D, std(data), 'r')

subplot(1,3,3), axis square, hold on, grid on, box on, xlim([0 D+1])
errorbar(1:D, mean(data), std(data), 'k')


