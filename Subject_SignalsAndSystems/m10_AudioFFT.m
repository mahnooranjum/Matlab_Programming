clc
clear
close all
[raw,Fs]=audioread('audio.wav');

L = length(raw);

%% Plot 
plot(raw, 'b');
hold on, grid on
xlabel('time axis');
ylabel('waveform value');

%% Frequency Spectrum 
sps = 1/Fs; % Seconds per sample  
stoptime = L; % seconds 
n = (0:sps:stoptime)'; % seconds 
ft_axis_hz = Fs * ((-L/2:(L/2) - 1)/L);
fft_raw = fftshift(fft(raw)/L);

figure
plot(ft_axis_hz,abs(fft_raw), 'b');
legend("raw input wave file");
title('Frequency Domain Plot'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
% axis([-50 50 -0.1 0.6])
 grid on
 