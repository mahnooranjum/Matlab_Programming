clear 
divs = 50;
x = -4:1/divs:4;
y = -4:1/divs:4;
[X,Y] = meshgrid(x,y);
Z = (X.^2 + Y.^2);

M = imread('images\bts.jpg');
M = imresize(M,[length(x) length(x)]);
figure, hold on, grid on,rotate3d on, axis square
shading interp
colormap gray
surf(X,Y,Z, M(:,:,2), 'EdgeColor', 'none')






