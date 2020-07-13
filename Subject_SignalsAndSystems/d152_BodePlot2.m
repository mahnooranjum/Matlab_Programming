clear 

Z = [-10];
P = [-1, -100];
K = 1;
H = zpk(Z,P,K);
bode(H,{0.001,1000}), grid on