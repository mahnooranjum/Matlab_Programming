%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code gradient.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% x1 -> radius of can
% x2 -> height of can
% area -> area of can
% pi -> MATLAB variable
% x,y,z -> array of design points
% vv -> user identified contour values
% xit, x2t-> identified point at which gradient required
% contour -> MATLAB function to generate contours
% xlabel, ylabel, legend, plot, hold on -> MATLAB functions
%
clear all
clc
for x1 = 1:100
    for x2 = 1:100
        area = 2*pi*x1*x2 + 2*pi*x1*x1;
        x(x1,x2) = x1;
        y(x1,x2) = x2;
        z(x1,x2) = area;
    end
end
vv = [5000,15000,30000,50000,70000,90000];
[c, h] = contour(x,y,z,vv); clabel(c, h);
hold on
x1t = 25;
x2t = 70.493;
slope = (x2t+2*x1t)/x1t;
i = 1;

for delx1 = -10:10
    delx2 = -slope*delx1;
    x11(i) = x1t+delx1;
    x22(i) = x2t+delx2;
    i = i+1;
end

plot(x11,x22,'r--')
hold on
i = 1;

for delx1 = -10:10
    delx2 = (1/slope)*delx1;
    x11(i) = x1t+delx1;
    x22(i) = x2t+delx2;
    i = i+1;
end

plot(x11,x22,'b+')
xlabel('x_1, mm')
ylabel('x_2, mm')
legend('Objective Function','Tangent','Gradient')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
