%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code robotics_nominal_traj.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Generates nominal trajectory for the robotics arm problem
clear all
clc
% generate 100 points in t
t=-pi:.063:pi
px = 30*cos(t);
py = 100*sin(t);
pz = 10*t + 66.04;
plot3(px,py,pz,'b-','LineWidth',3)
xlabel('px')
ylabel('py')
zlabel('pz')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%