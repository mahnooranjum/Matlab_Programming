clear
syms i(t) x(t) y(t) h(t) u(t)

hold on, grid on, box on

u(t) = heaviside(t);

x(t) = u(t) - u(t-4);
h(t) = u(t) - u(t-1);
y(t) = symconv(x(t), h(t));

divs = 100;
val = -5:1/divs:5;

op_x = subs(x(t),t,val);
op_h = subs(h(t),t,val);
op_y = subs(y(t),t,val);



hold on, grid on

plot(val, op_x ,'r:', 'LineWidth', 4)
plot(val, op_h ,'b.-', 'LineWidth', 3)
plot(val, op_y ,'k-', 'LineWidth', 2)
legend("x(t)", "h(t)", "y(t) = x(t) * h(t)")