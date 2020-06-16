syms t n
val =  -1:0.01:1;

hold on, grid on, box on, ylim([-1,10])
sigma = 1;
x = exp(sigma*t);
y = subs(x, t,val);
plot(val,y,'r', 'LineWidth', 2)

sigma = 2;
x = exp(sigma*t);
y = subs(x, t,val);
plot(val,y,'b', 'LineWidth', 2)

sigma = 3;
x = exp(sigma*t);
y = subs(x, t,val);
plot(val,y,'k', 'LineWidth', 2)

sigma = -1;
x = exp(sigma*t);
y = subs(x, t,val);
plot(val,y,'m', 'LineWidth', 2)

sigma = -2;
x = exp(sigma*t);
y = subs(x, t,val);
plot(val,y,'c', 'LineWidth', 2)

sigma = -3;
x = exp(sigma*t);
y = subs(x, t,val);
plot(val,y,'g', 'LineWidth', 2)

legend("sigma 1", "sigma 2", "sigma 3",...
       "sigma -1", "sigma -2", "sigma -3")
