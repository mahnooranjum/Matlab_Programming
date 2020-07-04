clear
syms H(w)


k = 10;
t0 = 1;
H(w) = exp(-1i*w);

phase_delay = -angle(H(w))/w;

group_delay = diff(phase_delay);

divs = 10;
val = -10:1/divs:10;
val(val==0) = 1/divs;

op_pd = subs(phase_delay,w,val);

op_gd = subs(group_delay,w,val);


hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, op_pd ,'b.-', 'LineWidth', 3)
legend("phase delay H(jw)")

subplot(1,2,2),hold on, grid on, box on
plot(val, op_gd ,'b.-', 'LineWidth', 3)
legend("group delay H(jw)")