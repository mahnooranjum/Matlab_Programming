clc
clear
close all
[raw,Fs]=audioread('man1.wav');

L = length(raw);

%% Plot 
figure
plot(raw, 'b');
hold on, grid on
xlabel('time axis');
ylabel('waveform value');

%% Frequency Spectrum 
sps = 1/Fs; % Seconds per sample  
stoptime = L; % seconds 
n = (0:1:stoptime)'; % seconds 
ft_axis_hz = Fs * ((-L/2:(L/2) - 1)/L);
RAW = fftshift(fft(raw/L));

figure
plot(ft_axis_hz,abs((RAW)), 'b');
legend("raw input wave file");
title('Frequency Domain Plot'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
% axis([-50 50 -0.1 0.6])
 grid on
 
 
% raw1 = ifft(fftshift(RAW),L,'symmetric').*L;
% hplayer = audioplayer(raw1, Fs);
% play(hplayer);


 
%% Select first k frequency components and set the rest to 0
K = 20000;
ft_axis_hz_K = ft_axis_hz;
RAW_K = RAW;
RAW_K( 1 : (floor(L/2))-K) = 0;
RAW_K( (floor(L/2))+K : L ) = 0;
L_K = length(RAW_K);
raw1 = ifft(fftshift(RAW_K),L_K,'symmetric').*L;
hplayer = audioplayer(raw1, Fs);
play(hplayer);

figure
plot(ft_axis_hz,abs((RAW_K)), 'b');
legend("raw input wave file");
title('Frequency Domain Plot'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');

