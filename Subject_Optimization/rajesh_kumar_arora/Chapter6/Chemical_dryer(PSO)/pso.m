clear all
clc
format long

pop = 300;
phi_1 = 1.05;
phi_2 = 1.1;
nmax = 1000;
scale_factor =770000;
weight = linspace(1,0.3,nmax);
fprintf('_______________________________________________________ \n')
lb = [30000 0];
ub = [40000 1];
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
    
y = 0.0064*x(1)*(exp(-0.184*x(1)^0.3*x(2))-1)
