clear
syms x
y = piecewise(x~=0, 1./x.^2);

substitute = -4:0.01:4;
y = subs(y, x,substitute);

grid on, hold on, xlim([-4,4]), ylim([0,160])
plot(substitute,y, 'LineWidth', 2);

dim = [.2 .5 .3 .3];
str = ['x>0+ is inf, x>0- is inf, x>0 is inf'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
