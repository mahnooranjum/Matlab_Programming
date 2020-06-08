
A1_1 = 1; 
A1_2 = 4; 
A2_1 = 6;
A2_2 = 3;

A = [A1_1 A1_2; A2_1 A2_2];

B1_1 = 3; 
B1_2 = 4; 
B2_1 = 2; 
B2_2 = 1;
B = [B1_1 B1_2; B2_1 B2_2];

C = A * B

% Columns of C are combinations of columns of A
C_1 = (B1_1*[A1_1; A2_1]) + (B2_1*[A1_2; A2_2])
C_2 = (B1_2*[A1_1; A2_1]) + (B2_2*[A1_2; A2_2])

% Rows of C are combinations of rows of B
C1_ = (A1_1*[B1_1 B1_2]) + (A1_2*[B2_1 B2_2])
C2_ = (A2_1*[B1_1 B1_2]) + (A2_2*[B2_1 B2_2])
