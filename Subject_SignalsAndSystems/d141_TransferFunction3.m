clear
syms H(w)


C = 10;
R = 2000;
H(w) = (1/(1i*w*C))/(R + (1/(1i*w*C)));

divs = 10;
val = -10:1/divs:10;
val(val==0) = 1/divs;

op_h = subs(H(w),w,val);

hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, abs(op_h) ,'b.-', 'LineWidth', 3)
legend("magnitude H(jw)")

subplot(1,2,2),hold on, grid on, box on
plot(val, angle(op_h) ,'b.-', 'LineWidth', 3)
legend("angle H(jw)")