clear 
D=1;
N=100;
data = linspace(N,D).^2;

 axis square, hold on, grid on, box on
scatter(1:N, sort(data), 'b')



