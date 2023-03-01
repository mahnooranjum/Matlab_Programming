%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code derivative.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% delx -> delta-x
% fx -> f(x)
% deriv -> derivative of the function at xd
% sderiv -> second derivative of the function at xdd
% signchange -> change of derivative sign
% locatepoints -> point at which derivative changes sign
% plot, subplot, xlabel, ylabel, hold -> MATLAB functions
%
delx = 0.01;
x=0.1:delx:1.0;
fx = @(x)2*sin(5*x)+3*x.^3-2*x.^2+3*x-5;
subplot(311), plot(x,fx(x),'LineWidth',2)  
hold on
ylabel('f(x)')
grid on

 for i = 2:length(x)-1
     xd(i-1) = x(i);
     deriv(i-1) = (fx(x(i+1))-fx(x(i-1)))/(2*delx);
 end

 subplot(312), plot(xd,deriv,'LineWidth',2)
 grid on
 hold on
 ylabel('f''(x)')
 signchange = deriv(1:length(deriv)-1).* deriv(2:length(deriv));
 locatepoints = xd(find(signchange<0))
 subplot(311), plot(locatepoints,fx(locatepoints),'r*')
 subplot(312), plot(xd(find(signchange<0)),deriv(find(signchange<0)),'r*')

 for ii = 2:length(xd)-1
    xdd(ii-1) = xd(ii);
    sderiv(ii-1) = (fx(xd(ii+1))+fx(xd(ii-1))-  2*fx(xd(ii)))/(delx*delx);
 end

 subplot(313), plot(xdd,sderiv,'LineWidth',2)
 grid on
 hold on
 subplot(313),    plot(xdd(find(signchange<0)),sderiv(find(signchange<0)),'r*')
 xlabel('x')
 ylabel('f''''(x)')
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
