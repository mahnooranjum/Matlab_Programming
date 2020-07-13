clear 
N = 80;
[x, y, z] = sphere(N);
axis square, hold on, grid on, box on
scatter3(x(:),y(:),z(:))
rotate3d on


