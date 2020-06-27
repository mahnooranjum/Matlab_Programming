clear
syms x(t) X(t)
hold on, grid on, box on
%%
%     Energy for infinite converging signals is finite
% 
%     Energy is independent of:
%               Time reversal
%               Time shift 
% 
%     Energy of x3 = x1 + x2 is E1 + E2
%
%     E(x(t)) = A ; E(x(2t)) = A/|2|
%
%     E(x(t)) = A ; E(4* x(t)) = A * (|4|^2);
%
%%

T0 = 1/4;
w0 = 2*pi/T0;
x(t) = exp(-t)*heaviside(t);
E(t) = limit(int(x(t)^2), t, Inf);

val =  linspace(-5,5,1000);
y = subs(x(t),t,val);

hold on, grid on
plot(val,y,'b:', 'LineWidth', 5)
stem(0, E(t),'r-', 'LineWidth', 2)
legend("Signal", "Energy")