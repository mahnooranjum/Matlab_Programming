clear
grid on, hold on, xlim([-4,4]), ylim([-2,2])
viscircles([0,0],1) %1
x = linspace(0,1,100);

y = 0*x
plot(x,y) %2
plot(y+(cosd(45)),x) %3
plot(x,y+(sind(45))) %4
plot(x,(tand(45)).*x) %4
legend( 'y = 0*x','x = cosd(45)', 'y = sind(45)', 'y = tand(45)*x')

dim = [.2 .5 .3 .3];
str = ['Unit circle'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
