clear 
u1 = [0, 0];
u2 = [3,3];
u3 = [0,4];
sigma1 = [1,0.4;0.4,1];
sigma2 = [1,0;0,2];
sigma3 = [0.4,0;0,0.1];
weights = [1/3, 1/3,1/3];
dist1 = mvnrnd(u1,sigma1,333);
dist2 = mvnrnd(u2,sigma2,333);
dist3 = mvnrnd(u3,sigma3,333);
finaldist = [dist1;dist2;dist3];
plot(finaldist(:,1), finaldist(:,2), 'o');



