clear

N = 10.^4;
t = -0.1: (1/N) : 0.1; 
x2 = cos(2*pi*400*t).* heaviside(t) ; 
x1 = exp(-1000*t).* heaviside(t) ;
X1 = fft([x1 zeros(1,length(x2)-1)]);
X2 = fft([x2 zeros(1,length(x1)-1)]);

subplot(4,1,1);
plot(t,x1, 'lineWidth', 1.1);
title('x1(t)'); xlabel('time t'); 
ylabel('exp(-1*t).*heaviside(t)');

subplot(4,1,2);
plot(t,x2, 'lineWidth', 1.1);
title('x2(t)'); xlabel('time t'); 
ylabel('cos(2*pi*400*t).* heaviside(t)');


ft = ifft(X1.*X2);
subplot(4,1,3);
plot(ft, 'lineWidth', 1.1);
title('Multiplication of X1 and X2');  
ylabel('(X1.*X2)');
set(gca,'XTick',[])

w = conv(x1,x2);
subplot(4,1,4);
plot(w, 'lineWidth', 1.1);
title('Convolution of x1 and x2'); 
ylabel('conv(x1,x2)');
set(gca,'XTick',[])
