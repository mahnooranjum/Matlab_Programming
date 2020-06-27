syms x(t) xstar(t)
hold on, grid on, box on

w0 = 4*pi;
x(t) = t^3 + (1i * sin(w0 * t));
xstar(t) = t^3 - (1i * sin(w0 * t));
val =  linspace(-2,2,1000);
y = subs(x(t),t,val);
ystar = subs(xstar(t),t,val);

subplot(2,1,1), hold on, grid on
plot(val,real(y),'b', 'LineWidth', 2)
plot(val,real(ystar),'r', 'LineWidth', 2)
legend("Real Signal", "Real Conjugate")
subplot(2,1,2), hold on, grid on
plot(val,imag(y),'b', 'LineWidth', 2)
plot(val,imag(ystar),'r', 'LineWidth', 2)
legend("Imaginary Signal", "Imaginary Conjugate")
