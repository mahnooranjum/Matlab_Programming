
clear

t = 1/100:1/10:200;
x = log(t);
levels = 2^2;
codebook = [];
delta = (max(x) - min(x))/levels;
codebook = [min(x)];
for i=1:levels-1
    codebook = [codebook min(x)+i*delta];
end

[partition, codebook2] = lloyds(x,codebook);
subplot(1,2,1), hold on, grid on, box on
plot(t,x, 'r', 'linew',2)
for i=1:length(codebook)
    yline(codebook(i));
end

[x_q, quants] = quantiz(x, partition, codebook);
plot(t,quants, 'b', 'linew',2)


x = compand(x,255,max(x));
levels = 2^2;
codebook = [];
delta = (max(x) - min(x))/levels;
codebook = [min(x)];
for i=1:levels-1
    codebook = [codebook min(x)+i*delta];
end

[partition, codebook2] = lloyds(x,codebook);
subplot(1,2,2), hold on, grid on, box on
plot(t,x, 'r', 'linew',2)
for i=1:length(codebook)
    yline(codebook(i));
end

[x_q, quants] = quantiz(x, partition, codebook);
plot(t,quants, 'b', 'linew',2)