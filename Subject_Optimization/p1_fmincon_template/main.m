

x0 = [0; 0];
A = []; b = [];
Aeq = []; beq = [];
LB = [-5,; -5]; UB = [5;5]; 
X = fmincon('fun', x0, A, b, Aeq, beq, LB, UB, 'nonlcon');