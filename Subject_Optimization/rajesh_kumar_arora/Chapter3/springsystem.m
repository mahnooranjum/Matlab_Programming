%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code springsystem.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
clear all
clc
zprev =inf;
i=0;
j=0;
for x = -1:0.01:1
    i=i+1;
     for y = -1:0.01:1
         j=j+1;
         z = 100*( sqrt(x^2+(y+1)^2)-1 )^2 + 90*( sqrt(x^2+(y-  1)^2)-1 )^2 -(20*x+40*y);
     if z<zprev
         zprev=z;
         xbest = x;
         ybest = y;  
     end
     end
end
fprintf('Minimum Potential =  %7.4f\n ',zprev)
fprintf('occurs at x1,x2 =  %10.4f %10.4f\n',xbest,ybest)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
