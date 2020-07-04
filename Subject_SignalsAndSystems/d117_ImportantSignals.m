clear
syms i(t) u(t) r(t)

hold on, grid on, box on

i(t) = t==0;
u(t) = t>=0;
r(t) = t*heaviside(t);


val =  linspace(-2,2,1000);
y_i = subs(i(t),t,val);
y_u = subs(u(t),t,val);
y_r = subs(r(t),t,val);

hold on, grid on
plot(val,y_i,'b:', 'LineWidth', 5)
plot(val, y_u,'r-', 'LineWidth', 2)
plot(val, y_r,'k.-', 'LineWidth', 2)
legend("Impulse", "Step", "Ramp")