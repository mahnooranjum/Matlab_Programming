srate = 1000;
time  = 0:1/srate:3;
n = length(time);
p = 20; 

noiseAmp = 2; 

ampl = interp1(rand(p, 1), linspace(1,p,n));
noise = randn(size(time)) * noiseAmp;
signal = ampl .* sin(2*pi*time) + noise;

filtered = zeros(size(signal));

k = 20; 
% window = 2 * k + 1

for i=k+1:n-k
    filtered(i) = mean(signal(i-k:i+k));
end

subplot(133); plot(signal);
subplot(132); plot(filtered);
subplot(131); plot(ampl);
