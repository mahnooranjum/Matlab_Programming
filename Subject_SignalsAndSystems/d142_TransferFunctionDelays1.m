clear
syms H(w)


C = 10;
R = 2000;
H(w) = (1/(1i*w*C))/(R + (1/(1i*w*C)));

phase_delay = -angle(H(w))/w;

group_delay = - diff(angle(H(w))/w);

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