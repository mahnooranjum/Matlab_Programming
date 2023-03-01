%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code graph_examp12.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% x1 -> radius of can
% x2 -> height of can
% area -> area of can
% pi -> MATLAB variable
% x,y,z -> array of design points
% vv -> user identified contour values
% cons_x2-> value of x2 when constraint is active
% contour -> MATLAB function to generate contours
% xlabel, ylabel, legend, hold on -> MATLAB functions
%
for x1 = 1:100
    for x2 = 1:200
        area = 2*pi*x1*x2 + 2*pi*x1*x1;
        x(x1,x2) = x1;
        y(x1,x2) = x2;
        z(x1,x2) = area;
    end
end

vv = [15000;26436;50000;70000;200000];
[c, h] = contour(x,y,z,vv); clabel(c, h);
hold on

for x1 = 10:100
    cons_x2 = 330000/(pi*x1*x1);
    plot(x1,cons_x2,'*')
    hold on
end

xlabel('x_1, mm')
ylabel('x_2, mm')
legend('Objective Function','Constraint')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
