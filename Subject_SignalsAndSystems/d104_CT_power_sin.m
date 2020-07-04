clear
syms x(t) X(t)
hold on, grid on, box on

%%
% Periodic signals are power signals
% When P = finite, E = infinity
% P = (RMS)^2
%%

T0 = 1;
w0 = 2*pi/T0;
x(t) = 5 * sin(w0 * t);
P(t) = limit(int(x(t)^2)/t, t, Inf);

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0, P(t),'r-', 'LineWidth', 2)
legend("Signal", "Power [Ao^2 / 2]")