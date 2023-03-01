%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB code interior.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Affine-scaling method
%
clear all
clc
A = [3 1;
      1 2;
      1 0];
 b = [10;8;3];
 c = [6;7];
 x = [0;0];
 obj_prev = c'*x;
 gamma = 0.9;
 tolerance = 1e-5;

 for i=1:10
     vk = b-A*x;
     dv = diag(vk);
     hx = inv(A'*dv^-2*A)*c;
     hv = -A*hx;

     for j = 1:length(hv)
         if hv(j)<0
            var(j) = -vk(j)/hv(j);
         else
             var(j) = inf;
         end
     end

     alpha = gamma*min(var);
     x = x + alpha*hx;
     objective = c'*x;
     if abs(objective-obj_prev)<tolerance
         break;
     end
     obj_prev = objective;

 end
 objective
 x
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
