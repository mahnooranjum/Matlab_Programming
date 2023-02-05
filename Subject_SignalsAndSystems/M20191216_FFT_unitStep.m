
N = 10.^4;
t = -0.1: (1/N) : 0.1; 
x = exp(-1000*t).* heaviside(t) ;
 
subplot(4,1,1);
plot(t,x, 'lineWidth', 1.1);
title('x(t)'); xlabel('time t'); 
ylabel('exp(-1*t).*heaviside(t)');
 
l = length(t);

transform = (fft(x)/l);
fft_x = fftshift(transform);
Magnitude = abs(fft_x);
 
ft_axis_hz = N * ((-l/2:(l/2) - 1)/l);
ft_axis_rad = 2 * pi * N * ((-l/2:(l/2) - 1)/l);
 
 
subplot(4,1,2);
plot(ft_axis_hz, Magnitude, 'lineWidth', 1);
title('Amplitude Spectrum of x(t)'); 
xlabel('Frequency(Hertz)'); 
ylabel('|FFT(x(t))|');
 
subplot(4,1,3);
plot(ft_axis_rad, Magnitude, 'lineWidth', 1);
title('Amplitude Spectrum of x(t)'); 
xlabel('Frequency(Rad)'); 
ylabel('|FFT(x(t))|');

subplot(4,1,4);
plot(ft_axis_hz, angle(fft_x), 'lineWidth', 1);
title('Phase Spectrum of x(t)'); 
xlabel('Frequency(Hz)'); 
ylabel('<FFT(x(t))');