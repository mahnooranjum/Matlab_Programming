clear 

GH = tf([1, -5], [1,2]);

hold on
nyquist(GH)
nyquist(GH+1)