function y = func1(x,scale_factor)
alpha = 0.4;
length1 = 550;
y = 2*alpha*length1*x(1)^2 + length1*x(2)^2;
penalty = 0.0;
[g] = constr(x);
for i = 1:length(g)
    if g(i)>0
        penalty = penalty + g(i)^2;
    end
end
y = y+penalty*scale_factor;



