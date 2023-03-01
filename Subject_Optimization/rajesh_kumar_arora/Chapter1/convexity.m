%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code covexity.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% x -> independent variable
% y -> dependent variable
% plot, xlabel, ylabel, meshgrid -> MATLAB functions
%

    x = -2:0.01:2;
    
    y = x.^2;

    subplot(2,2,1), plot(x,y)
    xlabel('x')
    ylabel('y')
    hold on

    y = exp(x);
    subplot(2,2,2), plot(x,y)
    xlabel('x')
    ylabel('y')
    hold on

    y = exp(y);
    subplot(2,2,3), plot(x,y)
    xlabel('x')
    ylabel('y')
    hold on

    y = exp(x.^2);
    subplot(2,2,4), plot(x,y)
    xlabel('x')
    ylabel('y')
    hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
