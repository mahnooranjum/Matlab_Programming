syms t n
val =  linspace(-2,2,1000);

hold on, grid on, box on

A = 2;
w0= 2*pi;
theta = 0;
x = sin(w0*t + theta);
y = subs(x, t,val);
plot(val,y,'r', 'LineWidth', 2)

A = 2;
w0= 2*pi;
theta = pi/2;
x = sin(w0*t + theta);
y = subs(x, t,val);
plot(val,y,'b', 'LineWidth', 2)

A = 2;
w0= 2*pi;
theta = pi;

x = sin(w0*t + theta);
y = subs(x, t,val);
plot(val,y,'g', 'LineWidth', 2)


legend("theta = 0","theta = pi/2", "theta = pi")

