clear 

M = imread('images\bts.jpg');
s = size(M)
alphamap = randn([s(1) s(2)]);

subplot(1,2,1)
imagesc(M, 'AlphaData', alphamap);

subplot(1,2,2)
v = linspace(0,1, s(2));
alphamap = zeros([s(1) s(2)]);
alphamap2 = bsxfun(@plus, alphamap, v);
imagesc(M, 'AlphaData', alphamap2);




