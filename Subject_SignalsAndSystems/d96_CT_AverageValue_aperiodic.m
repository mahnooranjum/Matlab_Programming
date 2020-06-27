clear
syms x(t) X(t)
hold on, grid on, box on

%%
% No effect of:
%       Time scaling
%       Time shifting
%       Time reversal 
%       
%       k + x(t) = k + Average
%       k * x(t) = k * Average
%%


T = Inf;
T0 = 2;
w0 = 2*pi/T0;
x(t) = cos(w0 * t) + log(t);
f = @(t) cos(w0 * t) + log(t);
X(t) = integral(@(t) f(t),-T/2,T/2) / T;

val = linspace(-4,4,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0,X(t), 'r', 'LineWidth', 3)
legend("Real Signal", "Average Value")