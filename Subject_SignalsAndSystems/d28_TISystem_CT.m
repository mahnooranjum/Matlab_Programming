syms t n x
val =  -1:0.01:1;

x1 = t;
y1 = x*2;
input1 = subs(x1, t , val);
output1 = subs(y1, x , input1);
subplot(1,3,1), hold on, grid on
plot(val,input1,'b', 'LineWidth', 2)
plot(val,output1,'r', 'LineWidth', 2)
legend("x1", "y1")

val =  -1:0.01:1;
x2 = t-0.3;
y2 = x*2;
input2 = subs(x2, t , val);
output2 = subs(y2, x , input2);
subplot(1,3,2),hold on, grid on
plot(val,input2,'b', 'LineWidth', 2)
plot(val,output2,'r', 'LineWidth', 2)
legend("x2", "y2")

subplot(1,3,3), hold on, grid on
plot(val,input1,'r', 'LineWidth', 2)
plot(val,output1,'g', 'LineWidth', 2)
plot(val,input2,'b', 'LineWidth', 2)
plot(val,output2,'k', 'LineWidth', 2)
legend("x1", "y1", "x2", "y2")
