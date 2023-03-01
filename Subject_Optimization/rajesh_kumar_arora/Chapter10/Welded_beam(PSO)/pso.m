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
%
clear all
clc
format long

pop = 50;
phi_1 = 1.05;
phi_2 = 1.1;
nmax = 1000;
scale_factor =10000000;
weight = linspace(1,0.3,nmax);
fprintf('_______________________________________________________ \n')
lb = [0.1 0.1 0.1 0.1];
ub = [2 10 10 2];
for i =1:length(lb)
    for j = 1:pop
        x(i,j) = lb(i) + (ub(i)-lb(i))*rand;
        v(i,j) = 0;
    end
end
for i = 1:pop
    fitness(i) = func1(x(:,i),scale_factor);
    pbest(i) = fitness(i);
    px(i,:) = x(:,i);
end
[gbest, location] = min(fitness);
gx = x(:,location);
for i = 1:nmax
    for j = 1:pop
        v(:,j)  =   weight(i)*v(:,j) + phi_1*rand*(px(j,:)'-x(:,j)) + phi_2*rand*(gx-x(:,j));
        x(:,j)  =   x(:,j) + v(:,j);
        for k = 1:length(x(:,j))
            if x(k,j) < lb(k) || x(k,j) > ub(k)
                x(k,j) = lb(k) + (ub(k)-lb(k))*rand;
            end
        end
        x(2,:) = round(x(2,:));
        x(4,:) = round(x(4,:));
        fitness(j) = func1(x(:,j),scale_factor);
        if fitness(j) < pbest(j)
            pbest(j) = fitness(j);
            px(j,:) = x(:,j);
        end
    end
    [gbest, location] = min(pbest);
    gx = x(:,location);
    [gx' gbest];
    fprintf('%3d %8.3f %8.3f %8.3f %8.3f % 8.3f    \n',i,gx,gbest)
end
fprintf('_______________________________________________________ \n')
    

