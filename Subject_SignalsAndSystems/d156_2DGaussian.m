clear 
divs = 20;
x = -5:1/divs:5;
y = -5:1/divs:5;
[X,Y] = meshgrid(x,y);
Z = exp(-1*(X.^2 + Y.^2)/(2*4));

subplot(1,2,1), hold on, grid on 
xlim([0, 200]), ylim([0, 200])
xticks([]), yticks([])
imagesc(Z)

noise = randn(round(size(Z)));
image = conv2(noise, Z);
image = image(1:2:length(image),1:2:length(image));
subplot(1,2,2), hold on, grid on
xlim([0, 200]), ylim([0, 200])
xticks([]), yticks([])
imagesc(image)

