clear 

s = tf('s');
d = s*(s+2+2*1i)*(s+2-2*1i);
sys = 1/d;

rlocus(sys)