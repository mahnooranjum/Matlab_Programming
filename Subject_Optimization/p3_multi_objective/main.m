
% initial
x0 = [1 1];

% bounds 
LB = [0 0]; UB = [10 5]; 

% counter 
j = 1;

% looper
A=[]; b=[]; Aeq=[]; beq = [];
for i=0:0.2:1
    w1 = i;
    w2 = 1-i;

    X = fmincon(@fun, x0, A, b, Aeq, beq, LB, UB, @confun, [], w1, w2);
    
    % finding objective function values 
    solx(j) = X(1)^2 + 4*X(2);
    soly(j) = X(2)^2 + 2;
    
    % increment counter
    j=j+1;
    
end

plot(solx, soly);
    
    
    
    