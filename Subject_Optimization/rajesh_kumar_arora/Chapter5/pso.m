%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name pso.m
%   Particle Swarm Optimization algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% lb -> lower bound of variables
% ub -> upper bound of variables
% x -> position of individual
% v -> velocity of individual
% rand -> random number from 0 to 1
% fitness -> fitness of individual
% pbest -> best fitness achieved by individual
% gbest -> best fitness of group

clear all
clc
format long
 
pop = 20;
phi_1 = 1.05;
phi_2 = 1.1;
nmax = 100;
weight = linspace(1,0.3,nmax);
lb = [-500 -500];
ub = [500 500];
 
for i =1:length(lb)
    for j = 1:pop
        x(i,j) = lb(i) + (ub(i)-lb(i))*rand;
        v(i,j) = 0;
    end
end
 
for i = 1:pop
    fitness(i) = func1(x(:,i));
    pbest(i) = fitness(i);
    px(i,:) = x(:,i);
end
[gbest, location] = min(fitness);
gx = x(:,location);
plot3(px(:,1),px(:,2),pbest,'r*')
    grid on
    xlabel('x1')
    ylabel('x2')
    zlabel('f(x)')
 
for i = 1:nmax
    for j = 1:pop
v(:,j)  =   weight(i)*v(:,j) + phi_1*rand*(px(j,:)'-x(:,j)) + phi_2*rand*(gx-x(:,j));
        x(:,j)  =   x(:,j) + v(:,j);
        for k = 1:length(x(:,j))
            if x(k,j) < lb(k) || x(k,j) > ub(k)
                x(k,j) = lb(k) + (ub(k)-lb(k))*rand;
            end
        end
        fitness(j) = func1(x(:,j));
        if fitness(j) < pbest(j)
            pbest(j) = fitness(j);
            px(j,:) = x(:,j);
        end
    end
    [gbest, location] = min(pbest);
    gx = x(:,location);
    [gx' gbest]
    plot3(px(:,1),px(:,2),pbest,'r*')
    grid on
    xlabel('x1')
    ylabel('x2')
    zlabel('f(x)')
    axis([-500 500 -500 500 -1000 0])
    pause(0.1)
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

