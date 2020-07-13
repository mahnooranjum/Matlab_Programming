clear 
D=1;
N=100;

X = linspace(-10,10, N);
y = X.^2;

axis square, hold on, grid on, box on
scatter(X,y, 100 , 1:N,'filled')



