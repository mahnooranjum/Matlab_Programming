clear 
D=2;
N=10;

y1 = randn(N,D);
y2 = zeros(N,D);

subplot(1,2,1), axis square, hold on, grid on, box on
pcolor(y1)
subplot(1,2,2), axis square, hold on, grid on, box on
pcolor(y2)



