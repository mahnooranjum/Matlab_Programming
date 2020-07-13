clear 
D=1;
N=1000;

X = linspace(-5,5, N);
y1 = X.^3;
y2 = exp(X);

subplot(1,2,1), axis square, hold on, grid on, box on
imagesc(y1)
subplot(1,2,2), axis square, hold on, grid on, box on
imagesc(y2)



