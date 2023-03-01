clear all
clc
format long

pop = 50;
phi_1 = 1.05;
phi_2 = 1.1;
nmax = 100;
scale_factor =10000000;
weight = linspace(1,0.3,nmax);
fprintf('_______________________________________________________ \n')
lb = [0 0];
ub = [40 40];
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
        fitness(j) = func1(x(:,j),scale_factor);
        if fitness(j) < pbest(j)
            pbest(j) = fitness(j);
            px(j,:) = x(:,j);
        end
    end
    [gbest, location] = min(pbest);
    gx = x(:,location);
    [gx' gbest];
    fprintf('%3d %8.3f %8.3f %8.3f  \n',i,gx,gbest)
end
fprintf('_______________________________________________________ \n')
    
alpha = 0.4;
length1 = 550;
y = 2*alpha*length1*x(1)^2 + length1*x(2)^2
