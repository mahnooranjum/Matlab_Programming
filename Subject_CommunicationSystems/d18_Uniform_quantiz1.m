
clear

t = -2:1/100:2;
x = sin(t*pi);
levels = 2^2;
codebook = [];
delta = (max(x) - min(x))/levels;
codebook = [min(x)];
for i=1:levels-1
    codebook = [codebook min(x)+i*delta];
end

[partition, codebook2] = lloyds(x,codebook);
figure, hold on, grid on, box on
plot(t,x, 'r', 'linew',2)
for i=1:length(codebook)
    yline(codebook(i));
end

[x_q, quants] = quantiz(x, partition, codebook);
plot(t,quants, 'b', 'linew',2)