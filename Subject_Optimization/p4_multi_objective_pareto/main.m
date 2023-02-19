
% initial
x0 = [1 1];

% bounds 
lb = [-1.1,-1.1]; ub = [1.1,1.1]; 

% looper
A=[]; b=[]; Aeq=[]; beq = [];
nvars = 2;

X = paretosearch(@fun,nvars,A,b,Aeq,beq,lb,ub,@nonlcon);
% options = optimoptions('paretosearch','ParetoSetSize',200);
% X = paretosearch(fun,2,[],[],[],[],lb,ub,@circlecons,options);

plot(X(:,1),X(:,2),'m*')
xlabel('x(1)')
ylabel('x(2)')
    
    