clear; 

syms R

eta = 0.5;
Pt  = 100; %mW
f = 800 * 10^6;
lambda = 3 * 10^8 / f; 
phi = Pt/(4*pi*R^2);
Aiso = 4*pi/lambda^2; 
Ae  = eta * Aiso;
Pr  = phi * Ae; 
inp = 10:1/10:1000;
out = subs(Pr, R, inp);

figure(), title("Received Power (y-axis) versus TR Distance (x-axis)");
hold on, grid on, box on;
plot(inp, out, 'LineWidth', 2);