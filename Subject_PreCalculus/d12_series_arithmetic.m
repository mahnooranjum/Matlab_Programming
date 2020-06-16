clear
syms x
y = x;
N=20;
val = 1:N;
y = subs(y, x,val);

y_series = zeros(1,N);
for i=1:N
    y_series(i) = sum(y(1:i));
end
grid on, hold on,
scatter(val,y, 'LineWidth', 2);
scatter(val,y_series, 'LineWidth', 2);
legend('Sequences', 'Series')
dim = [.2 .5 .3 .3];
str = ['Sequence 1 2 3 4 .... N'];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
