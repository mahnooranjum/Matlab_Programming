clear

t = [0:1000];
x = sin(t*pi/500);
[partition,codebook] = lloyds(x,2^5);

figure, hold on, grid on, box on
plot(t,x, 'r', 'linew',2)
for i=1:length(partition)
    yline(partition(i));
end

[x_q, quants] = quantiz(x, partition, codebook);
plot(t,quants, 'b', 'linew',2)