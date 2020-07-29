clear

f = figure()
I = imread('images/edge/bts.jpg');
I = I(:,:,2);
BW1 = edge(I,'roberts',0.05, 'vertical');
figure;
imshowpair(I,BW1,'montage')
title('Edge Detection');          