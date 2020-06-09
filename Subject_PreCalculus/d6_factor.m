clear
syms x
F = factor((x.^2)+(x)-2);
y = piecewise(x~=1, (F(1).*F(2))./(x-1));

substitute = -4:0.1:4;
y = subs(y, x,substitute);

grid on, hold on, xlim([-4,4]), ylim([-10,10])
scatter(substitute,y, 'LineWidth', 2);

dim = [.2 .5 .3 .3];
str = ['x>1+ is 3, x>1- is 3, x>1 is 3'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
