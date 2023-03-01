%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code contour_testproblem.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% plots contour of the test problem
% surfc -> Matlab function
clear all
clc
i=0;
j=0;

for x = -5:.02:5
    i=i+1;
     for y = -5:.02:5
       j=j+1;
z(i,j) = 100*( sqrt(x^2+(y+1)^2)-1 )^2 + 90*(   sqrt(x^2+(y- 1)^2)-1 )^2 -(20*x+40*y);
    	t1(i,j) = x;
    	t2(i,j) = y;
     end
     j = 0;
end

surfc(t1,t2,z)
shading interp
xlabel('x1')
ylabel('x2')
zlabel('f(x1,x2)')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
