clear
syms x
y = 2^x;
N=8;
val = 0:N;
y = subs(y, x,val);

y_series = zeros(1,N+1);
for i=1:N+1
    y_series(i) = sum(y(1:i));
end
grid on, hold on,
scatter(val,y, 'LineWidth', 2);
scatter(val,y_series, 'LineWidth', 2);
legend('Sequences', 'Series')
dim = [.2 .5 .3 .3];
str = ['Sequence 2 4 16 .... 2^N'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
