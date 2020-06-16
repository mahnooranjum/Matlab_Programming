clear
syms x
y = piecewise(x~=0, (x-(2*(abs(x))))./(abs(x)));

substitute = -4:0.01:4;
y = subs(y, x,substitute);

grid on, hold on, xlim([-4,4]), ylim([-5,5])
plot(substitute,y, 'LineWidth', 2);


dim = [.2 .5 .3 .3];
str = ['x>0+ is -1, x>0- is -3, x>0 is undefined'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
