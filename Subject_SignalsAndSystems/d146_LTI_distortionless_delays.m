clear
syms H(w)


k = 10;
t0 = 1;
H(w) = exp(w*3);

% for w1 = 1

w1 = 1.5;
phase = -angle(H(-1i*w))/w;
group_delay = diff(-angle(H(-1i*w)));

divs = 100;
val = 1/divs:1/divs:2;

op_pd = subs(phase,w,val);
op_gd = subs(group_delay,w,val);



hold on, grid on

subplot(1,2,1), hold on, grid on, box on
plot(val, op_pd ,'b.-', 'LineWidth', 3)
legend("phase H(jw) = - w*t0")

subplot(1,2,2),hold on, grid on, box on
plot(val, op_gd ,'b.-', 'LineWidth', 3)
legend("group delay H(jw)")