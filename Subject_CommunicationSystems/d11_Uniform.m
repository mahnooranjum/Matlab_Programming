clear

t = [1:1000];
x = log(t);

levels = 2^2;
codebook = [];
delta = (max(x) - min(x))/levels;
for i=1:levels
    codebook = [codebook i*delta];
end
    
figure, hold on
plot(t,x)
for i=1:length(codebook)
    yline(codebook(i));
end