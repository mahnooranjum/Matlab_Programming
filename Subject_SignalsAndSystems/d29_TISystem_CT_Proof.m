syms t n x
val =  -1:0.001:1;

x1 = t;
y1 = x*2;
input1 = subs(x1, t , val);
output1 = subs(y1, x , input1);
subplot(1,3,1), hold on, grid on
plot(val,input1,'b', 'LineWidth', 2)
plot(val,output1,'r', 'LineWidth', 2)
legend("x1", "y1")

x2 = t-0.3;
y2 = x*2;
input2 = subs(x2, t , val);
output2 = subs(y2, x , input2);
subplot(1,3,2),hold on, grid on
plot(val,input1,'r', 'LineWidth', 2)
plot(val,output1,'g', 'LineWidth', 2)
plot(val,input2,'b', 'LineWidth', 2)
plot(val,output2,'k', 'LineWidth', 2)
legend("xt", "yt", "xt-0.3", "T(xt-0.3)")

x3 = t-0.3;
y3 = x*2;
input3 = subs(x3, t , val);
output3 = subs(y3, x , val);
shifter = length(0.001:0.001:0.3);
output3 = circshift(output3, shifter);
subplot(1,3,3),hold on, grid on
plot(val,input1,'r', 'LineWidth', 2)
plot(val,output1,'g', 'LineWidth', 2)
plot(val,input3,'b', 'LineWidth', 2)
plot(val(shifter+1:end),output3(shifter+1:end),'k', 'LineWidth', 2)
legend("xt", "yt", "xt-0.3", "yt-0.3")

