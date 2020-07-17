clear
syms t 

impulse(t) = piecewise(t==0, 1, t~=0, 0);
Ts = 0.1;
x = -5:Ts:5;
train = zeros(size(x));
for n= min(x):max(x)
    temp = subs(impulse(t-(n*Ts)), t, x);
    train = train + temp;
end


figure, xlim([-2, 2]), hold on, stem(x, train);