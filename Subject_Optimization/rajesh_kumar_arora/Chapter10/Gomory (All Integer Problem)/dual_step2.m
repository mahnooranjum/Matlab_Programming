%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code dual.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The matrix A and b corresponds to equation Ax=b
% c -> vector of cost coefficients
% basic_set -> set of basic variables
% nonbasic_set -> set of nonbasic variables
% B -> matrix containing basic variable columns of A
% N -> matrix containing nonbasic variable columns of A
% xb -> basic variables
% y -> simplex multipliers
% cb -> cost coefficients of basic variables
% cn -> cost coefficients of nonbasic variables 
%
clear all
clc
format rational
format compact

A =[1 0 0 0 1 0;
    0 1 0 1/7 -4/7 0;
    0 0 1 1/7 -11/7 0;
    0 0 0 -1/7 4/7 1];
b = [7;22/7;8/7;-1/7];
c = [0;0;0;2/7;13/7;0];
basic_set = [1 2 3 6];
nonbasic_set = [4 5];

for i=1:length(basic_set)
    B(:,i) = A(:,basic_set(i));
    cb(i) = c(basic_set(i));
end

for i=1:length(nonbasic_set)
    N(:,i) = A(:,nonbasic_set(i));
    cn(i) = c(nonbasic_set(i));
end

cn_cap = cn;
cb_ini = cb;
b_cap = b;
zz =-191/7;
fprintf('\n ________________________________________\n')
basic_set
nonbasic_set
Initial_Table = [B N b_cap]
Cost =[cb cn_cap zz]

for i=1:4
      [minvalue leaving_basic_variable] = min(b_cap);
       mat1 = inv(B)*N;
entering_row = mat1(leaving_basic_variable,:);
ratios =-1*(cn_cap'./entering_row');
[min_ratio entering_basic_variable] = min(ratios);

while min_ratio<0
    ratios(entering_basic_variable) = inf;
    [min_ratio entering_basic_variable] = min(ratios);
end

temp_basic_set = basic_set;
temp_nonbasic_set = nonbasic_set;
temp_cb = cb;
temp_cn = cn;
basic_set(leaving_basic_variable) = temp_nonbasic_set(entering_basic_variable);
nonbasic_set(entering_basic_variable) = temp_basic_set(leaving_basic_variable);
  cb(leaving_basic_variable) = temp_cn(entering_basic_variable);
  cn(entering_basic_variable) = temp_cb(leaving_basic_variable);
 aa(nonbasic_set) = cn;
 cn = aa(sort(nonbasic_set));
nonbasic_set = sort(nonbasic_set);

for ii=1:length(basic_set)
    B(:,ii) = A(:,basic_set(ii));
end

for ii=1:length(nonbasic_set)
    N(:,ii) = A(:,nonbasic_set(ii));
end

xb = inv(B)*b;
y = cb*inv(B);
cn_cap = cn-y*N;
b_cap = xb;
zz = zz+cb*xb;
fprintf('\n ________________________________________\n')
basic_set
nonbasic_set
Table = [eye(length(B)) inv(B)*N  b_cap]
Cost =[cb_ini cn_cap -zz]
if b_cap >=0
     break;
end

end
fprintf('\n ------FINAL SOLUTION------\n')
basic_set
xb
zz
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
