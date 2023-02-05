% Simulation code for dice tossing experiment.
n=1000; % number of times to toss the dice.
die1=ceil(6*rand(1,n)); % Toss first die n times.
die2=ceil(6*rand(1,n)); % Toss second die n times.
dice_sum=die1+die2; % Compute sum of two tosses.
nA=sum(dice_sum==5); % Count number of times sum = 5;
pA=nA/n % Display relative frequency.