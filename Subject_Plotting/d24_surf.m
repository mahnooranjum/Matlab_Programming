clear 
divs = 20;
x = -7:1/divs:7;
y = -7:1/divs:7;
[X,Y] = meshgrid(x,y);
Z = sinc(X) + sinc(Y) ;

figure, hold on, grid on,rotate3d on, axis square
surf(X,Y,Z, 'EdgeColor', 'none')






