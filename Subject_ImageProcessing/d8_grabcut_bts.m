clear

f = figure()
RGB = imread('images/segmentation/bts.jpg');
subplot(2,2,1), imshow(RGB);

L = superpixels(RGB,50,'NumIterations', 10);
s = size(RGB);
figure(f), subplot(2,2,2), imshow(RGB), hold on
h1 = drawpolygon(gca,'Position',[1,1; 1,s(1); s(2),s(1); s(2),1; 1,1]);

roiPoints = h1.Position;
roi = poly2mask(roiPoints(:,1),roiPoints(:,2),size(L,1),size(L,2));
BW = grabcut(RGB,L,roi);
figure(f), subplot(2,2,3), imshow(BW)


maskedImage = RGB;
maskedImage(repmat(~BW,[1 1 3])) = 0;
figure(f), subplot(2,2,4) 
imshow(maskedImage)
