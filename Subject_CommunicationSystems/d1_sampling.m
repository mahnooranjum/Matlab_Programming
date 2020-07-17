clear 
syms m(t) m_sigma(t) g(t) m_reconstructed(t)
f = 1;
Ts = 0.001;
fs = 1/Ts;
t = -2:1/fs:2; 

g = zeros(size(t));
g(1:fs/f:end)=1;

figure, hold on
m = t.^2;
m_sigma = m.*g;
plot(t,m);
plot(t,m_sigma);
