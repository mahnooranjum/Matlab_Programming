%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code robotics_optimized_traj.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Generates optimized trajectory for the robotics arm problem
function [] =  generate_optimized_traj( x )
d1 = 66.04;
d3 = 14.91;
d4 = 43.31;
a2 = 43.18;
a3 = 2.03;
for i=1:100
    t= -pi + (i-1)*0.063; 

theta1 = x(i);
theta2 = x(i+100);
theta3 = x(i+200);
c1 = cos(theta1);
c2 = cos(theta2);
s1 = sin(theta1);
s2 = sin(theta2);
c23 = cos(theta2+theta3);
s23 = sin(theta2+theta3);
f1(i) = c1*(a2*c2 + a3*c23 - d4*s23) - d3*s1 ;
f2(i) = s1*(a2*c2 + a3*c23 - d4*s23) + d3*c1 ;
f3(i) = d1 - a2*s2 - a3*s23 -d4*c23 ;
end
 plot3(f1,f2,f3,'r*')
end
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%