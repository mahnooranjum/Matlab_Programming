%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name in.m
%   Input parameters for Genetic algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
problem = 'min'; % used with roulette wheel
n_of_v=1;        % number of variables
n_of_g=10000;    % maximum number of generations
n_of_p=10;       % population size
range(1,:)=[40 90]; % variable bound
n_of_bits(1)=15;  % number of bits
cross_prob=0.9;   % crossover probability
multi_crossover = 1; % use multi-crossover
mut_prob=0.02;    % mutation probability
tourni_flag=0;    % use roulette wheel
epsilon = 1e-7;   % function tolerance
flag =0;          % stall generations flag
flag1=0;          % scaling flag
stall_gen = 500;  % stall generations for termination
n_of_c=0;         % for constraint handling
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
