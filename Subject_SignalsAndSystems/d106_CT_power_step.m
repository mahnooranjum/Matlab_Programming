clear
syms x(t) X(t)
hold on, grid on, box on

%%
% Periodic signals are power signals
% When P = finite, E = infinity
% P = (RMS)^2
% Independent: 
% Time shift, scale, reversal
% Phase shift
% Amplitude reversal
%
% Amplitude scaling affects power
% P(x(t)) = A ; P(4* x(t)) = A * |4|^2;
%%

T0 = 1/4;
w0 = 2*pi/T0;
x(t) = heaviside(t);
P(t) = limit(int(x(t)^2)/t, t, Inf);
val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0, P(t),'r-', 'LineWidth', 2)
legend("Signal", "Power heaviside [A0^2/2], DC [A0^2]")