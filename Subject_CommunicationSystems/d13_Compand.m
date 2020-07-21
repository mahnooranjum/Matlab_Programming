clear

t = 1/100:1/100:10;
x = log10(t);
levels = 2^2;
partition = [];
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
levels = 2^2;
partition = [];
delta = (max(x) - min(x))/levels;
for i=1:levels
    partition = [partition i*delta];
end
    
subplot(1,2,2), hold on
plot(t,x)
for i=1:length(partition)
    yline(partition(i));
end
