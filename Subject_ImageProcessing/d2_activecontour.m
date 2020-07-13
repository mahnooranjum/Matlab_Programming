clear

f = figure()
img = imread('images/segmentation/cells.png');
subplot(2,2,1), imshow(img);

gs = squeeze(mean(img,3));
figure(f), subplot(2,2,2), imagesc(gs), colormap gray, axis square, xticks([]), yticks([])

mask = zeros(size(gs));
mask(2:end-2,2:end-2) = 1;
figure(f), subplot(2,2,3)
imshow(mask)
title('Initial Contour Location')


map = activecontour(gs,mask);
subplot(2,2,4), hold on
imagesc(gs), colormap gray, axis square, xticks([]), yticks([])
contour(map, 1, 'r')
map = activecontour(gs,mask,400);
contour(map, 1, 'g')

