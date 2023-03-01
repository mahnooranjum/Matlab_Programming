%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code exhaustive.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% delta -> step size for search
% T -> independent variable, temperature
% U -> cost function
% uvec -> vector of cost function evaluated at
%         different temperatures
% minu -> minimum of cost function
% min -> MATLAB function
% 
clear all
clc
uvec=[];
delta = 0.01;
for T = 40:delta:90
    U = 204165.5/(330-2*T) + 10400/(T-20);
    uvec = [uvec U];
    plot(T,U)
    hold on
end
xlabel('T');ylabel('U');
[minu,i]= min(uvec);
fprintf('Minimum Cost =  %6.2f\n ',minu)
fprintf('occurs at T =  %6.2f\n ',40+(i-1)*delta)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
