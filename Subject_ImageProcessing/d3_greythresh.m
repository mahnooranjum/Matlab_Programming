clear

f = figure()
image = imread('images/segmentation/cells.png');
subplot(2,2,1), imshow(image);

image = image(:,:,2);
figure(f), subplot(2,2,2), imagesc(image), colormap gray,xticks([]), yticks([])

imageBW = imbinarize(image,graythresh(image)*0.5);
subplot(2,2,3), hold on
imagesc(imageBW), colormap gray, xticks([]), yticks([])

imageBW = imbinarize(image,graythresh(image)*0.99);
subplot(2,2,4), hold on
imagesc(imageBW), colormap gray, xticks([]), yticks([])


