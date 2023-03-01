%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code positive_definite.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% H -> hessian matrix
% eig, fprintf -> MATLAB function
% eigenvalues -> of the hessian matrix
%
H =  [2 1 1;
      1 2 1;
      0 2 3];
eigenvalues = eig(H);
eigenvalues
if eigenvalues >= 0
    fprintf('The matrix is positive definite\n')
else
    fprintf('The matrix is not positive definite\n')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
