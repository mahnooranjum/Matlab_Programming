clc
clear
close all
[raw,Fs]=audioread('man1.wav');

L = length(raw);
disp("Q1 - Read the audio file into MATLAB. What is the sampling frequency F_s of the audio signal?");
disp("A1 - The sampling frequency is " + Fs + "Hz");

disp("Q2 - What is the length of the audio signal? Plot the signal");
disp("A2 - The length of the signal is " + L);

figure
plot(raw, 'b');
hold on, grid on
xlabel('time axis');
ylabel('waveform value');

%% Frequency Spectrum 
sps = 1/Fs;
stoptime = L; 
n = (0:1:stoptime)';
ft_axis_hz = Fs * ((-L/2:(L/2) - 1)/L);
RAW = fftshift(fft(raw/L));

figure
plot(ft_axis_hz,abs((RAW)), 'b');
legend("raw input wave file");
title('Frequency Domain Plot'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
 grid on
 

%% Select first k frequency components 
K = 100/2;
ft_axis_hz_K = ft_axis_hz((floor(L/2))-K:(floor(L/2))+K);
RAW_K = RAW((floor(L/2))-K:(floor(L/2))+K);

L_K = length(RAW_K);
figure
plot(ft_axis_hz_K,abs((RAW_K)), 'b');
legend("raw input wave file");
title('Frequency Domain Plot'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
grid on;
%% Select first k frequency components and set the rest to 0
ft_axis_hz_K = ft_axis_hz;
RAW_K_SameL = RAW;
RAW_K_SameL( 1 : (floor(L/2))-K) = 0;
RAW_K_SameL( (floor(L/2))+K : L ) = 0;
L_K_SameL = length(RAW_K_SameL);
raw1_sameL = ifft(fftshift(RAW_K_SameL),L_K_SameL,'symmetric').*L;

distortion = abs(raw) - abs(raw1_sameL);
plot(distortion)
distortion = abs(raw) - abs(raw1_sameL);
figure
max = 8.565995562542414;
min = 0.406326594998730;
sumofdistortion = ((log(sum(abs((distortion)))) - min)*100)/(max-min);
grid on
%% Reconstruct signal

raw1 = ifft(fftshift(RAW_K),L_K,'symmetric').*L_K;

figure
plot(raw1, 'b');
hold on, grid on
xlabel('time axis');
ylabel('waveform value');

% hplayer = audioplayer(raw1,ceil(Fs*((K*2)/L)));
% play(hplayer);

%% Get compression ratio

ratio = 100 - (((K*2)/(L)) * (100) );


%% Subtract signals 
