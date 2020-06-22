syms t n x
val =  -2:0.01:2;

x1 = t;
y = 0.2*x + 0.1*x^2;
input1 = subs(x1, t , val);
output1 = subs(y, x , input1);

x2 = t-0.2;
input2 = subs(x2, t , val);
output2 = subs(y, x , input2);

x3 = -(t-0.2);
input3 = subs(x3, t , val);
output3 = subs(y, x , input3);

subplot(1,2,1), hold on, grid on
%plot(val,input1,'b', 'LineWidth', 2)
plot(val,output1,'r', 'LineWidth', 2)
%plot(val,input2,'c', 'LineWidth', 2)
plot(val,output2,'g', 'LineWidth', 2)
%plot(val,input2,'c', 'LineWidth', 2)
plot(val,output3,'b', 'LineWidth', 2)
%legend("xt", "yt", "xt-0.2", "yt-0.2")
legend("yt", "yt-0.2", "y[-(t-0.2)]")

x4 = 0.2-t;
input4 = subs(x4, t , val);
output4 = subs(y, x , input4);

subplot(1,2,2), hold on, grid on
%plot(val,input2,'c', 'LineWidth', 2)
plot(val,output3,'r', 'LineWidth', 4)
%plot(val,input4,'b', 'LineWidth', 2)
plot(val,output4,'y', 'LineWidth', 1)
legend("-(t-0.2)", "t+0.2")

