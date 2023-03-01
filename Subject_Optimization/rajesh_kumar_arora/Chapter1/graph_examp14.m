%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code graph_examp14.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% L -> length of rod
% rho -> density of rod material
% d -> diameter of rod
% m -> mass of rod
% I -> moment of inertia
% k -> mass per unit length
% f1 -> frequency
% plot, xlabel, ylabel, legend -> MATLAB function
%
L = 1;
rho = 7800;
E = 2e11;

for d = 0.0:0.001:0.05
mass = (pi/4)*d*d*L*rho;
k = mass/L;
I = (pi/64)*d^4;
f1 = (1/(2*pi))*(3.5156/(L*L))*sqrt((E*I)/k);
plot(d,mass,'+')
hold on
plot(d,f1,'*')
hold on
end

xlabel('d, m')
ylabel('objective function (kg), constraint(Hz)')
legend('Objective Function','Constraint')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
