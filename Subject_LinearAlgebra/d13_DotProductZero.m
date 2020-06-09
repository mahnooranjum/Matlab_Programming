syms c d
v = [1;0];
w = [0;1];
b = [1;0];

vw = v(1)*w(1) + v(2)*w(2);

hold on 
grid on
quiver(0,0,v(1),v(2),0);
quiver(0,0,w(1),w(2),0);
dim = [.2 .5 .3 .3];
str = ['v dot w = ' num2str(vw)];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
legend("v","w")