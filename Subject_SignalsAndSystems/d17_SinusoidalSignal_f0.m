syms t n
val =  linspace(0,1,1000);

hold on, grid on, box on

f0 = 1;
A = 2;
w0= 2*pi*f0;
theta = 0;

x = sin(w0*t + theta);
y = subs(x, t,val);
plot(val,y,'r', 'LineWidth', 2)

f0 = 2;
A = 2;
w0= 2*pi*f0;
theta = 0;

x = sin(w0*t + theta);
y = subs(x, t,val);
plot(val,y,'b', 'LineWidth', 2)

f0 = 3;
A = 2;
w0= 2*pi*f0;
theta = 0;
x = sin(w0*t + theta);
y = subs(x, t,val);
plot(val,y,'g', 'LineWidth', 2)
legend("1","2", "3")

