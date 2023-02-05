syms d 
% reference for bandwidth 
% https://en.wikipedia.org/wiki/IEEE_802.11g-2003
f = 1*10^9;
lambda = 3*10^8/f;
L = 10*log10((4*pi*d/lambda)^2)
figure(), hold on, box on, grid on,
ins  = 1:1/10:100;
outs = subs(L, d, ins); 
plot(ins, outs, 'LineWidth', 2);
title("Loss due to attenuation");
xlabel("distance");
ylabel("Loss in dB");