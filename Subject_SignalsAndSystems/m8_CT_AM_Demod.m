clear
fs = 6000; % Sampling frequency
sps = 1/fs; % Seconds per sample  
stoptime = 10000; % seconds 
n = (-stoptime:1:stoptime)'; % seconds 
L = length(n);
ft_axis_hz = fs * ((-L/2:(L/2) - 1)/L);

%% 
message = cos((2*pi*n/fs)) + (0.5 * cos((4*pi*n/fs)))...
                + (0.5 * cos((8*pi*n/fs)));

fft_message = fftshift(fft(message)/L);

figure 
subplot(2,1,1);
hold on
plot(n/fs, message, 'linew', 2);
legend("message");
title('Time Domain Plots'); 
xlabel('Time t'); 
ylabel('f(t)');
grid on

subplot(2,1,2);
plot(ft_axis_hz,abs(fft_message));
legend("message");
title('Frequency Domain Plots'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
axis([-50 50 -0.1 0.6])
 grid on


%% 
F = 1000; % Frequency (hertz) 
carrier = cos((2*pi*F*n/fs)); %carrier
fft_carrier = fftshift(fft(carrier)/L);

figure
subplot(2,1,1);
hold on
plot(F*n/fs,carrier);
legend("carrier");
title('Time Domain Plots'); 
xlabel('Time t'); 
ylabel('f(t)');
axis([-30 30 -1.1 1.1])
grid on

subplot(2,1,2);
plot(ft_axis_hz, abs(fft_carrier));
legend("carrier");
title('Frequency Domain Plots'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
axis([-1100 1100 -0.1 0.6])
 grid on

 %%
modulated = (message.*carrier);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
subplot(2,1,1);
plot(n,modulated);
hold on
plot(n, message, 'r');
plot(n, -1.* message, 'r');

legend("modulated", "envelope");
title('AM Modulation Time Domain'); 
xlabel('Time t'); 
ylabel('m(t)');
grid on


fft_modulated= abs(fftshift(fft(modulated)/L));
subplot(2,1,2);
plot(ft_axis_hz, fft_modulated);
legend("fft of modulated signal");
title('FFT Modulation'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(m(t))');
axis([-1100 1100 -0.1 0.6])
 grid on



  %%

demod = (modulated.*carrier);
figure
subplot(2,1,1);
plot(n,demod);
hold on
plot(n, message, 'r');
plot(n, -1.* message, 'r');

legend("modulated", "envelope");
title('AM Demodulation Time Domain'); 
xlabel('Time t'); 
ylabel('m(t)');
grid on


fft_demodulated= abs(fftshift(fft(demod)/L));
subplot(2,1,2);
plot(ft_axis_hz, fft_demodulated);
legend("fft of demodulated signal");
title('FFT Demodulation'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(m(t))');
axis([-50 50 -0.1 0.6])
 grid on

