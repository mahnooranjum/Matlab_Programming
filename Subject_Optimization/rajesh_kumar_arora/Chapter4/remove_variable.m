%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code remove_variable.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This program removes user specified column from 
% the non-basic set
%
remove_column = 3;
nonbasic_set(remove_column)=[];
N(:,remove_column)=[];
cn(remove_column) = [];
cn_cap = cn-y*N;
fprintf('\n ----Table after removing artificial variable------\n')
basic_set
nonbasic_set
Initial_Table = [eye(length(B)) inv(B)*N  b_cap]
Cost =[cb_ini cn_cap -zz]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
