clear

t = 1/100:1/10:200;
x = log(t);
levels = 2^2;
[partition,codebook] = lloyds(x,levels);
delta = (max(x) - min(x))/levels;
for i=1:levels
    partition = [partition i*delta];
end
    
subplot(1,2,1), hold on
plot(t,x)
for i=1:length(partition)
    yline(partition(i));
end

x = compand(x,255,max(x));
[partition,codebook] = lloyds(x,levels);
delta = (max(x) - min(x))/levels;
for i=1:levels
    partition = [partition i*delta];
end
    
subplot(1,2,2), hold on
plot(t,x)
for i=1:length(partition)
    yline(partition(i));
end
