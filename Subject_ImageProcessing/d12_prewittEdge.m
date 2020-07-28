clear

f = figure()
I = imread('images/edge/bts2.jpg');
I = I(:,:,2);
BW1 = edge(I,'Prewitt', 0.06);
figure;
imshowpair(I,BW1,'montage')
title('Edge Detection');          