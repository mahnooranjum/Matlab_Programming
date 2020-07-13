clear 
divs = 10;
x = -4:1/divs:4;
y = -4:1/divs:4;
[X,Y] = meshgrid(x,y);
Z = exp(-1*(X.^2 + Y.^2)/(2));

figure, hold on, grid on,rotate3d on, axis square
surf(X,Y,Z, 'facealpha', 0.5)






