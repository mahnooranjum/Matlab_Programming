%% 
% Generate time series data 
% Reference 
% https://www.mathworks.com/help/matlab/data_analysis/detrending-data.html
clear
N = 5000;
t = (0:N-1)/(N/10);
s = randn(1,N)*0.9;
s_data = cumsum(s);
mean_s_data = mean(s_data);
detrend_data = detrend(s_data);
mean_detrend = mean(detrend_data);

trend = s_data - detrend_data;
subplot(2,2,[1 3]), hold on, grid on
plot(t, s_data, 'b')
plot(t, detrend_data, 'k')
plot(t, trend, 'r')
plot(t,zeros(size(t)),':k')


%%
sortee = sort(detrend_data);
thres = 0.1;
lb = sortee(round(thres*N));
ub = sortee(round((1-thres)*N));
subplot(2,2,2), hold on, grid on
plot(t, sortee, 'b')
plot(t,zeros(size(t))+ub,'k')
plot(t,zeros(size(t))+lb,'k')
legend("sorted")

%%
outliers = (detrend_data<lb | detrend_data>ub);


subplot(2,2,4), hold on, grid on
plot(t, outliers,'k')
legend("sorted")

subplot(2,2,[1 3]), hold on
clusters = bwconncomp(outliers);

for i=1:clusters.NumObjects
    x = t(cell2mat(clusters.PixelIdxList(i)));
    y = detrend_data(cell2mat(clusters.PixelIdxList(i)));
    hold on
    patch([x x(end:-1:1)],[y zeros(1, length(y))],'r');
end



