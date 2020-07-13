clear 
D=1;
N=1000;

y1 = randn(N,D);
y2 = zeros(N,D);

subplot(1,2,1), axis square, hold on, grid on, box on
histogram(y1,10)
subplot(1,2,2), axis square, hold on, grid on, box on
histogram(y2,10)



