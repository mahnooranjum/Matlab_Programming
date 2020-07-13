%% 
% Generate time series data 

N = 10000;
v_t = (0:N-1)/N;
s = randn(1,N);
s_t = cumsum(s);
s2_t = cummax(s);
s3_t = cummin(s);
s4_t = movsum(s,100);

hold on, grid on
plot(v_t, s_t, 'b')
plot(v_t, s2_t, 'r')
plot(v_t, s3_t, 'k')
plot(v_t, s4_t, 'k')