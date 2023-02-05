clear; 

syms f

eta = 0.5;
% f = 800 * 10^6;
lambda = 3 * 10^8 / f; 
Aiso = 4*pi/lambda^2; 
D   = 0.6;
Ae  = eta * pi * D^2 / 4;
Gr  = Ae / Aiso; 
inp = (1*10):1:(12*10);
out = subs(Gr, f, inp);

figure(), title("Gain (y-axis) versus Frequency (x-axis)");
hold on, grid on, box on;
plot(inp, out, 'LineWidth', 2);