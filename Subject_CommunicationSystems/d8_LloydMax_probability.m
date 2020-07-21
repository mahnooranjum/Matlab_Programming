clear

t = [1:1000];
x = sin(t*pi);
[partition,codebook] = lloyds(x,2^2);

figure, hold on
hist(x)
for i=1:length(codebook)
    xline(codebook(i));
end