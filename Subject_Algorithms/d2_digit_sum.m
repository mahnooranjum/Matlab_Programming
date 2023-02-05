function output = digit_sum(n)
output=0;
if n <10
    output = fix(n);
else
    output = (mod(n,10) + digit_sum(fix(n / 10)));  
end
end