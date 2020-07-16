clear 

Z = [-2];
P = [0, -10];
K = 5;
H = zpk(Z,P,K);
bode(H,{0.001,1000}), grid on