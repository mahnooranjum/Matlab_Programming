clear 
D=1;
N=1000;

y1 = randn(N,D);
subplot(1,2,1), axis square, hold on, grid on, box on
[x,y] = hist(y1,10);
plot(y,x,'s-', 'color', 'b','linew', 1,'markersize',10, 'markerfacecolor', 'b')
subplot(1,2,2), axis square, hold on, grid on, box on
histogram(y1,10)



