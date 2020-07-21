clear

t = [1:1000];
x = log(t);

levels = 2^2;
partition = [];
delta = (max(x) - min(x))/levels;
for i=1:levels
    partition = [partition i*delta];
end
    
figure, hold on
hist(x)
for i=1:length(partition)
    xline(partition(i));
end