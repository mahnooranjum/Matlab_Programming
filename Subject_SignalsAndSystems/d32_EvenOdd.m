syms t n x
val =  -3:0.001:3;

x1 = t;
y = exp(x);
input1 = subs(x1, t , val);
output1 = subs(y, x , input1);

x2 = t;
y = cosh(x);
input2 = subs(x2, t , val);
output2 = subs(y, x , input2);

x3 = t;
y = sinh(x);
input3 = subs(x3, t , val);
output3 = subs(y, x , input3);

subplot(1,2,1), hold on, grid on
%plot(val,input1,'b', 'LineWidth', 2)
plot(val,output1,'r', 'LineWidth', 2)
%plot(val,input2,'c', 'LineWidth', 2)
plot(val,output2,'g', 'LineWidth', 2)
%legend("xt", "yt", "xt-0.2", "yt-0.2")
legend("e(t)", "cosh(t)")

subplot(1,2,2), hold on, grid on
%plot(val,input1,'b', 'LineWidth', 2)
plot(val,output1,'r', 'LineWidth', 2)
%plot(val,input2,'c', 'LineWidth', 2)
plot(val,output3,'g', 'LineWidth', 2)
%legend("xt", "yt", "xt-0.2", "yt-0.2")
legend("e(t)", "sinh(t)")
