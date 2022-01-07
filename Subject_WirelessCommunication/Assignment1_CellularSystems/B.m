function pb = B(A,C)
%B Summary of this function goes here
syms k 
%   Detailed explanation goes here
val = (symsum((A^k)/factorial(k),k,0,C));
pb = ((A^C)/factorial(C))/ val;
pb = vpa(pb);
end

