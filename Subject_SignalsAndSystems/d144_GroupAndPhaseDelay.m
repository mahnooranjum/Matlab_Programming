clear
syms m(t) x(t) y(t) c(t)

tg = 1.5;
tp = 0.2;
w0 = pi;
wc = 4*pi;
m(t) = cos(w0*t);
c(t) = cos(wc*t);
x(t) = m(t)*c(t);
y(t) = m(t-tg)*c(t-tp);

divs = 100;
val = -2:1/divs:2;

op_m = subs(m(t),t,val);
op_c = subs(c(t),t,val);
op_x = subs(x(t),t,val);

op_md = subs(m(t-tg),t,val);
op_cd = subs(c(t-tp),t,val);
op_y = subs(y(t),t,val);


hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, op_c ,'b.-', 'LineWidth', 3)
plot(val, op_cd ,'r.-', 'LineWidth', 3)
legend("x(t)", "y(t)")

subplot(1,2,2), hold on, grid on, box on
plot(val, op_m ,'b.-', 'LineWidth', 3)
plot(val, op_md ,'r.-', 'LineWidth', 3)
legend("x(t)", "y(t)")
