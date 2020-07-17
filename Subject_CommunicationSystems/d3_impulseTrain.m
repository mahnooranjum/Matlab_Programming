clear
syms t 

impulse(t) = piecewise(t==0, 1, t~=0, 0);
x = -5:5;
train = zeros(size(x));
for t0= min(x):max(x)
    temp = subs(impulse(t-t0), t, x);
    train = train + temp;
end


figure, xlim([-5, 5]), hold on, stem(x, train);