clear 
N = 5;
x = 1:N;
y = 1:N; 
z = 1:N;

figure, hold on, grid on,rotate3d on, axis square
for i=1:N
    x = zeros(1,N) + i;
    color = randn(1,N);
    for j = 1:N
        y = zeros(1,N)+ j;
        plot3(x,y,z, 'k')
        plot3(y,z,x, 'k')
        plot3(z,y,x, 'k')
        scatter3(x, y, z, 200, color, 'filled')
    end
end






