clear 
D=5;
data = randn(10,D);

subplot(1,2,1), axis square, hold on, grid on, box on
bar(1:D, mean(data), 'b')

subplot(1,2,2), axis square, hold on, grid on, box on
bar(1:D, std(data), 'r')


