data = abs(rand(10000,1));
subplot(1,2,1)
hist(data,100);

% Rank, Scale, inverse hyperbolic tangent transform
data = data.*2;
data = data-1;
data = atanh(data);

subplot(1,2,2)
hist(data,100);


