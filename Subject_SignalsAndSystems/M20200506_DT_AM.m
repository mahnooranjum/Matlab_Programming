clear

fs = 2048; % Sampling frequency
f = 1;
N = fs/f;
n = -N: 128: N; 

message = cos(2*pi*n/N) + (0.5 * cos(4*pi*n/N))...
              + (0.5 * cos(8*pi*n/N));


fc = 1000; % Frequency (hertz) 
carrier = cos((2*pi*(fc/fs)*n)); %carrier

subplot(2,2,1);
hold on
stem(n,carrier);
stem(n, message);
legend("carrier", "message");
title('Time Domain Plots'); 
xlabel('n'); 
ylabel('f(n)');
grid on

l = length(n);
fft_carrier = fftshift(fft(carrier)/l);
fft_message = fftshift(fft(message)/l);
ft_axis_hz = fs * ((-l/2:(l/2) - 1)/l);

subplot(2,2,2);
plot(ft_axis_hz, fft_carrier,ft_axis_hz, fft_message);
legend("carrier", "message");
title('Frequency Domain Plots'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(n))');
 grid on


modulated = carrier.*message;

subplot(2,2,3);
stem(n,modulated);
legend("modulated");
title('AM Modulation Time Domain'); 
xlabel('n'); 
ylabel('m(n)');
grid on


fft_modulated= fftshift(fft(modulated)/l);
subplot(2,2,4);
plot(ft_axis_hz, fft_modulated);
legend("fft of modulated signal");
title('FFT Modulation'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(m(n))');
 grid on

