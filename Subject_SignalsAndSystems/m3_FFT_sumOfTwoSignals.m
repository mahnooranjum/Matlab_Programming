clear

N = 10.^4;
t = -0.1: (1/N) : 0.1; 
x = cos(2*pi*400*t) + cos(2*pi*800*t); 

subplot(3,1,1);
plot(t,x, 'lineWidth', 1.1);
title('x(t)'); xlabel('time t'); 
ylabel('cos(2*pi*400*t) + sin(2*pi*800*t)');

l = length(t);
 
fft_x = fftshift(fft(x)/l);
Magnitude = abs(fft_x);
 
ft_axis_hz = N * ((-l/2:(l/2) - 1)/l);
ft_axis_rad = 2 * pi * N * ((-l/2:(l/2) - 1)/l);
 
 
subplot(3,1,2);
plot(ft_axis_hz, fft_x, 'lineWidth', 1.06);
title('Single-Sided Amplitude Spectrum of x(t)'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(x(t))');
 
 
subplot(3,1,3);
plot(ft_axis_rad, fft_x, 'lineWidth', 1.06);
title('Single-Sided Amplitude Spectrum of x(t)'); 
xlabel('Frequency(Radians)'); 
ylabel('FFT(x(t))');