clear 
divs = 20;
x = -2:1/divs:2;
y = -2:1/divs:2;
[X,Y] = meshgrid(x,y);
Z = sinc(X) + sinc(pi*Y) ;

figure, hold on, grid on,rotate3d on, axis square
surf(X,Y,Z)






