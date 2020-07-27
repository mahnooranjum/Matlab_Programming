clear

f = figure()
I = imread('images/segmentation/moonstar.jpg');
I = I(:,:,2);
BW1 = edge(I,'sobel',0.08, 'vertical');
figure;
imshowpair(I,BW1,'montage')
title('Edge Detection');          