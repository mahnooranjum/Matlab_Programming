%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name tournament.m
%   Tournament selection
%   Also modifies the function
%   in the presence of constraints
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
infeasible_flag = 1;
for i=1:n_of_p
        if constraint(i)>=0
            feas_tag(i)=1;
            fit(i)=fitness(i);
        else
            feas_tag(i)=0;
            fit(i)=-100000000000;
        end
end
for i=1:n_of_p
if(feas_tag(i) == 1)
infeasible_flag = 0;
end
end
if(infeasible_flag ==1)
fit(1) = 1000000000000;
end
max_fit=max(fit);
for i=1:n_of_p
    if feas_tag(i)==0
        for j=1:n_of_c
        if (constraint(i,j)<0)
    fitness(i)=max_fit+abs(constraint(i,j));
        end
        end
    end
end
[min_fit,indices]=min(fitness);
for i=1:n_of_p
    pr=round(random('unif',0.5,n_of_p+0.5));
    while pr ==i 
    pr=round(random('unif',0.5,n_of_p+0.5));
    end
        
    if feas_tag(i)==feas_tag(pr)
        if fitness(i)<=fitness(pr)
        r_new(i,:)=r(i,:);
        else
        r_new(i,:)=r(pr,:);
        end
 
    else
        if feas_tag(i)==1
        r_new(i,:)=r(i,:);
        else
        r_new(i,:)=r(pr,:);
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%