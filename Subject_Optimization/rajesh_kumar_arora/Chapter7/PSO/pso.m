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
global W1 W2
pop = 200;
phi_1 = 0.5;
phi_2 = 0.5;
nmax = 120;
weight = linspace(1,0.4,nmax);
lb = [0 -2];
ub = [1 2];
W1 = 0;
W2 = 1;
 
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
 
for i = 1:nmax
    W1 = abs(sin(2*pi*i/150));
    W2 = 1-W1;
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
        F1(j) = x(1,j);
        F2(j) = (1+x(2,j)^2-x(1,j)-0.1*sin(3*pi*x(1,j)));
    end
    [gbest, location] = min(pbest);
    gx = x(:,location);
    [gx' gbest];
        plot(F1,F2,'r*')
    pause(0.1)
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

