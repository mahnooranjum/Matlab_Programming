clear

t = [1:1000];
x = log(t);
[partition,codebook] = lloyds(x,2^2);

figure, hold on
plot(t,x)
for i=1:length(codebook)
    yline(codebook(i));
end