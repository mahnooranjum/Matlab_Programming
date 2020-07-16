clear 

Z = [-3];
P = [-1, -5];
K = 100;
H = zpk(Z,P,K);
bode(H,{0.01,10}), grid on