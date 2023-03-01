
% bounds 
lb = [0]; ub = [10]; 

% looper
A=[]; b=[]; Aeq=[]; beq = [];
nvars = 1;

X = ga(@fun,nvars,A,b,Aeq,beq,lb,ub,@cons);

display(X)

x_val = 0:0.1:10;
plot(x_val, fun(x_val));
% plot(X(:,1),X(:,2),'m*')
% xlabel('x(1)')
% ylabel('x(2)')
    
    