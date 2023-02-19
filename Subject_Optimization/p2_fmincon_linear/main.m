
f = [-1 -1/3];

A = [1 1;
     1 1/4;
     1 -1;
    -1/4 -1;
    -1 -1;
    -1 1];

b = [2 1 2 1 -1 2];
% X = fmincon('fun', x0, A, b, Aeq, beq, LB, UB, 'nonlcon');
X = linprog(f, A, b);