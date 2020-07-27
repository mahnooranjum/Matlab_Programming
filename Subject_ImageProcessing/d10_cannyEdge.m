clear

f = figure()
I = imread('images/edge/moonstar.jpg');
I = I(:,:,2);
BW1 = edge(I,'canny');
figure;
imshowpair(I,BW1,'montage')
title('Edge Detection');           