%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code cubic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% a-> lower bound of the design variable
% b> upper bound of the design variable
% alpha -> midpoint of a and b
% delx -> ?x for central difference method
% derivative -> derivative using central difference method
% derivative_alpha -> derivative at x = alpha
% abs -> absolute of a number, MATLAB function
% flag -> set the flag when minimum is bracketed
% derivative_a -> derivative at point a
% derivative_b -> derivative at b
% 
a = 40;
b = 90;
delx = 0.01;
flag = 0;
epsilon= 0.001;
fprintf('    a             b     \n' )
fprintf('-------------------------\n' )

for i= 1:100
 alpha = (a+b)/2;
 derivative = (func(a+delx) - func(a-delx) )/(2*delx);
 derivative_alpha = (func(alpha+delx)-func(alpha-delx) )/(2*delx);
 if (derivative*derivative_alpha) < 0
    b = alpha;
    flag = 1;
 else
    a = alpha;
 end
 if flag == 1
    break;
 end
end

for j=1:100
 fprintf(' %7.3f      %8.3f \n',a,b)
 derivative_a = (func(a+delx) - func(a-delx) )/(2*delx);
 derivative_b = (func(b+delx) - func(b-delx) )/(2*delx);
 z = 3*(func(a)-func(b))/(b-a) + derivative_a + derivative_b;
 w = ((b-a)/abs(b-a))*sqrt(z*z-derivative_a*derivative_b);
 mew = (derivative_b+w-z)/(derivative_b-derivative_a+2*w);
 if mew <= 1
    x_opt = b - mew*(b-a);
 else
    x_opt = a;
 end
 alpha1 = (func(x_opt+delx) - func(x_opt-delx) )/(2*delx);
 if abs(alpha1) < epsilon
    break;
 else
   if (derivative_a*alpha1) < 0
    b = x_opt;
 else
    a = x_opt;
 end 
end

end

fprintf('-------------------------\n' )
fprintf('x* =  %7.3f       Minimum =   %8.3f\n',x_opt,func(x_opt))
fprintf('Number of function calls =     %3d\n',4*i+8*j)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
