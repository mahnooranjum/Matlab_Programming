%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code func_multivar.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function fx = func_multivar(x)
d1 = 66.04;
d3 = 14.91;
d4 = 43.31;
a2 = 43.18;
a3 = 2.03;
sum =0.0;
for i=1:100
    t= -pi + (i-1)*0.063; 
px = 30*cos(t);
py = 100*sin(t);
pz = 10*t + 66.04;
theta1 = x(i);
theta2 = x(i+100);
theta3 = x(i+200);
c1 = cos(theta1);
c2 = cos(theta2);
s1 = sin(theta1);
s2 = sin(theta2);
c23 = cos(theta2+theta3);
s23 = sin(theta2+theta3);
f1 = c1*(a2*c2 + a3*c23 - d4*s23) - d3*s1 - px;
f2 = s1*(a2*c2 + a3*c23 - d4*s23) + d3*c1 - py;
f3 = d1 - a2*s2 - a3*s23 -d4*c23 - pz;
sum = sum + f1*f1 + f2*f2 + f3*f3;
end
fx = sum;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
