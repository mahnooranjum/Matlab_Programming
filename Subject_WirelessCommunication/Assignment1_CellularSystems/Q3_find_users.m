% Find the number of users that can be accommodated by each system 
% for a blocking probability of 2% 
clear
Pb = 0.02; Au = 0.1; 
cellsA = 400; cellsB = 50; cellsC = 100;
channA = 15;  channB = 100;channC = 60;
A = [0.1:0.1:200];

PbA = []; PbB = []; PbC = [];
for i = A
    temp = B(i,channA);
    PbA = [PbA temp];
    temp = B(i,channB);
    PbB = [PbB temp];
    temp = B(i,channC);
    PbC = [PbC temp];
end

[val,idxA]=min(abs(PbA-Pb));
[val,idxB]=min(abs(PbB-Pb));
[val,idxC]=min(abs(PbC-Pb));

UA = A(idxA)/Au; 
UB = A(idxB)/Au; 
UC = A(idxC)/Au; 

total_A = floor(UA * cellsA);
total_B = floor(UB * cellsB);
total_C = floor(UC * cellsC);