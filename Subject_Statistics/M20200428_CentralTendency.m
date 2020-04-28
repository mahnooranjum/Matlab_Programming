data = pearsrnd(100,25,1,4,1000,1)
figure(1), clf
histogram(data,40)
hold on 

themean = mean(data);
xline(themean, '--r', {'Mean'},'LineWidth',3)
themode = mode(data);
xline(themode, '--b', {'Mode'}, 'LineWidth',3)
themedian = median(data);
xline(themedian, '--g', {'Median'}, 'LineWidth',3)