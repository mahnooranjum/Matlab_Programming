clear 

sys = tf([1,3,5,7], [2,4,6,8,2]);

subplot(1,2,1)
pzmap(sys)

subplot(1,2,2)
pzmap(sys+1)