function y = func1(x,scale_factor)
y = 1.10471*x(1)*x(1)*x(2) + 0.04811*x(3)*x(4)*(14+x(2));
%y = (x(1)-1)^2 + (x(2)-5)^2;
penalty = 10.0;
[h,g] = constr(x);
for i = 1:length(h)
    if h(i)~=0
        penalty = penalty + h(i)^2;
    end
end
for i = 1:length(g)
    if g(i)>0
        penalty = penalty + g(i)^2;
    end
end
y = y+penalty*scale_factor;




