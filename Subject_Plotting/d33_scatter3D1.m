clear 
D=1;
N=1000;

X = linspace(-5,5, N);
y1 = X.^3;
y2 = sin(X);
y3 = log(X);
axis square, hold on, grid on, box on
scatter(y1,y2, 100 ,y3,'filled')



