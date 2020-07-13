clear

f = figure()
img = imread('images/segmentation/cells.png');
subplot(2,2,1), imshow(img);

gs = squeeze(mean(img,3));
figure(f), subplot(2,2,2), imagesc(gs), colormap gray, axis square, xticks([]), yticks([])

figure(2), colormap(gca,'jet')
histogram(gs(:), 300)

threshold = 175;

map = gs<threshold;

figure(f),subplot(2,2,3)
imagesc(map), colormap(gca,'gray'), axis square, xticks([]), yticks([])

obj = bwconncomp(map);

subplot(2,2,4), hold on
imagesc(gs), colormap gray, axis square, xticks([]), yticks([])
contour(map, 1, 'r')

sizes = cellfun(@length, obj.PixelIdxList)
figure(3), hist(sizes)


g_threshold = 500;

transformed_map = zeros(size(map))
for i=1:obj.NumObjects 
    if(sizes(i))<g_threshold
        continue;
    end
    transformed_map(cell2mat(obj.PixelIdxList(i))) = 1;
end
figure(f)
subplot(2,2,4)
contour(transformed_map, 1, 'g')

figure(4)
imagesc(transformed_map), colormap gray, axis square, xticks([]), yticks([])

