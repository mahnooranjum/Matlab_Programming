clear

f = figure()
img = imread('images/segmentation/bts.jpg');
subplot(2,2,1), imshow(img);

gs = img(:,:,2);
figure(f), subplot(2,2,2), imagesc(gs), colormap gray, axis square, xticks([]), yticks([])

[L,Centers] = imsegkmeans(gs,2);
map = labeloverlay(gs,L);
figure(f), subplot(2,2,3)
imshow(map)
title('Labeled Image')


subplot(2,2,4), hold on, axis ij
imagesc(gs), colormap gray, axis square, xticks([]), yticks([])
contour(map(:,:,1), 1, 'r')

