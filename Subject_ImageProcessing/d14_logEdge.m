clear

f = figure()
I = imread('images/edge/moonstar.jpg');
I = I(:,:,2);
BW1 = edge(I,'log');
figure;
imshowpair(I,BW1,'montage')
title('Edge Detection');          