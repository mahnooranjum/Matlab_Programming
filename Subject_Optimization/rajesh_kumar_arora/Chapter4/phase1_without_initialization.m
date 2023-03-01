%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code phase1_without_initialization.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is similar to phase1 but does not require A and b
%
[minvalue entering_basic_variable] = min(cn_cap);
entering_column = N(:,entering_basic_variable);
ratios = b_cap'./entering_column';
[min_ratio leaving_basic_variable] = min(ratios);
while min_ratio<0
    ratios(leaving_basic_variable) = inf;
    [min_ratio leaving_basic_variable] = min(ratios);
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
 zz = zz1+cb*xb;
  fprintf('\n ________________________________________\n')
   basic_set
    nonbasic_set
    Table = [eye(length(B)) inv(B)*N  b_cap]
    Cost =[cb_ini cn_cap -zz]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


