clear



fs = 512; % Sampling frequency
sps = 1/fs; % Seconds per sample  
stoptime = 0.1; % seconds 
t = (-0.1:sps:stoptime)'; % seconds 

message = cos((2*pi*t)) + (0.5 * cos((4*pi*t)))...
    + (0.5 * cos((8*pi*t)));


F = 1000; % Frequency (hertz) 
carrier = cos((2*pi*F*t)); %carrier


subplot(2,2,1);
hold on
plot(t,carrier);
plot(t, message);
legend("carrier", "message");
title('Time Domain Plots'); 
xlabel('Time t'); 
ylabel('f(t)');
grid on

l = length(t);
fft_carrier = fftshift(fft(carrier)/l);
fft_message = fftshift(fft(message)/l);
ft_axis_hz = fs * ((-l/2:(l/2) - 1)/l);

subplot(2,2,2);
plot(ft_axis_hz, fft_carrier,ft_axis_hz, fft_message);
legend("carrier", "message");
title('Frequency Domain Plots'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(f(t))');
 grid on

%modulated = modulate(message,F,fs);
mod_index= 1; % for 100% modulation
Am=max(message); % Amplitude of modulating signal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
modulated = Am .* (message.*carrier);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3);
plot(t,modulated);
legend("modulated");
title('AM Modulation Time Domain'); 
xlabel('Time t'); 
ylabel('m(t)');
grid on


fft_modulated= fftshift(fft(modulated)/l);
subplot(2,2,4);
plot(ft_axis_hz, fft_modulated);
legend("fft of modulated signal");
title('FFT Modulation'); 
xlabel('Frequency(Hertz)'); 
ylabel('FFT(m(t))');
 grid on

