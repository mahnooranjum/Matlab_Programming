clear 

sys = tf([1,3,5,7], [2,4,6,8,2]);

hold on
nyquist(sys)
nyquist(sys+1)
nyquist(sys/(sys+1))