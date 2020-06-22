syms t n x
val =  -1:0.01:1;

x1 = t;
y1 = x1^3;
input1 = subs(x1, t , val);
output1 = subs(y1, x1 , input1);
subplot(1,4,1), hold on
plot(val,input1,'b', 'LineWidth', 2)
plot(val,output1,'r', 'LineWidth', 2)
legend("x1", "y1")


x2 = t^2;
y2 = x^3;
input2 = subs(x2, t , val);
output2 = subs(y2, x , input2);
subplot(1,4,2), hold on
plot(val,input2,'b', 'LineWidth', 2)
plot(val,output2,'r', 'LineWidth', 2)
legend("x2", "y2")


val =  -1:0.01:1;
y = x^3;
input = input1 + input2;
output = subs(y, x , input);
subplot(1,4,3), hold on
plot(val,input,'b', 'LineWidth', 2)
plot(val,output,'r', 'LineWidth', 2)
legend("x1 + x2", "T(x1+x2)")


val =  -1:0.01:1;
x = x1 + x2;
y = y1 + y2;
input = input1 + input2;
output = output1 + output2;
subplot(1,4,4), hold on
plot(val,input,'b', 'LineWidth', 2)
plot(val,output,'r', 'LineWidth', 2)
legend("x1 + x2", "y1 + y2")
