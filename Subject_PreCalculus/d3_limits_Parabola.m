clear
syms x
y = piecewise(x~=2, x^2, x==2, 1);

substitute = -4:0.1:4;
y = subs(y, x,substitute);

grid on, hold on, xlim([-4,4]), ylim([0,6])
scatter(substitute,y, 'LineWidth', 2);

dim = [.2 .5 .3 .3];
str = ['Lim y when x --> 2 is 4'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
