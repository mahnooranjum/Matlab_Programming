clear 
divs = 50;
x = -4:1/divs:4;
y = -4:1/divs:4;
[X,Y] = meshgrid(x,y);
Z = X;

figure, hold on, grid on,rotate3d on, axis square
surf(X,Y,Z, 'EdgeColor', 'none')






