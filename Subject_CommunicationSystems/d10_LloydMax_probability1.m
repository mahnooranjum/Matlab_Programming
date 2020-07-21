clear

t = -5:1/1000:5;
x = randn(1,length(t));
[partition,codebook] = lloyds(x,2^3);

figure, hold on
hist(x)
for i=1:length(codebook)
    xline(codebook(i));
end