%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code quadr_examp12.m
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
% syms -> symbolic object (MATLAB function)
% subs -> symbolic substitution (MATLAB function)
% gradient -> analytical value
% hessian -> analytical value
% xlabel, ylabel, legend, plot, hold on -> MATLAB functions
%
clear all
clc
for x1 = 1:200
    for x2 = 1:200
        area = 2*pi*x1*x2 + 2*pi*x1*x1;
        x(x1,x2) = x1;
        y(x1,x2) = x2;
        z(x1,x2) = area;
    end
end
vv = [15000;50000;60000;70000;80000;90000;150000;200000];
[c, h] = contour(x,y,z,vv); clabel(c, h);
hold on
syms x1p x2p
gradient = [2*pi*x2p+4*pi*x1p;2*pi*x1p];
hessian = [4*pi 2*pi; 2*pi 0];
% Linear approximation
x1p = 60;
x2p = 72.629;
gf = subs(gradient);
for delx1 = 1:60
    for delx2 = 1:60
        x1 = x1p + delx1;
        x2 = x2p + delx2;
        area = 2*pi*x1p*x2p + 2*pi*x1p*x1p + gf'*[delx1;delx2] + 0.5*[delx1 delx2]*(hessian*[delx1;delx2]);
        [x1 x2 area];
        xx(delx1,delx2) = x1;
        yy(delx1,delx2) = x2;
        zz(delx1,delx2) = area;
    end
end
vv1 = [50000;60000;70000;80000;90000];
[c, h] = contour(xx,yy,zz,vv1,'rd','LineWidth',3); 
xlabel('x_1, mm')
ylabel('x_2, mm')
legend('Objective Function','Quadratic approx.')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%