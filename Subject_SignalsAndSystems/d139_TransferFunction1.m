clear
syms H(w)


k = 10;
t0 = 5;
H(w) = k*exp(-1i*w*t0);

divs = 100;
val = -10:1/divs:10;

op_h = subs(H(w),w,val);

hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, abs(op_h) ,'b.-', 'LineWidth', 3)
legend("magnitude H(jw)")

subplot(1,2,2),hold on, grid on, box on
plot(val, angle(op_h) ,'b.-', 'LineWidth', 3)
legend("angle H(jw)")