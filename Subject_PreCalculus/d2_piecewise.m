clear
syms x
y = piecewise(x==1,2, x~=1, (x-1)./(x-1));

substitute = -2:0.1:2;
y = subs(y, x,substitute);

grid on, hold on, xlim([-2,2]), ylim([0,3])
scatter(substitute,y, 'LineWidth', 2);
dim = [.2 .5 .3 .3];
str = ['Lim y when x --> 1 is 1' num2str(vw)];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
