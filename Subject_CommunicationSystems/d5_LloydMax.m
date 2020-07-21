clear

t = [0:1000];
x = sin(t*pi/500);
[partition,codebook] = lloyds(x,2^2);

figure, hold on
plot(t,x)
for i=1:length(codebook)
    yline(codebook(i));
end