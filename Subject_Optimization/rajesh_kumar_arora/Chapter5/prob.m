%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name prob.m
%   Genetic algorithm -  main program
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
clear all
clc
format long g;
% Read the input file
in;
%INITIALIZATION OF STRINGS
string=0;
for i=1:n_of_v
string=string+n_of_bits(i);
end
for j=1:n_of_p
    for i=1:string
    r(j,i)=rand;
        if r(j,i)<0.5
        r(j,i)=0;
        else 
        r(j,i)=1;
        end
    end
end
%MAIN LOOP
for g=1:n_of_g
%Decoded value of r (with left bit as MSB)
deci=cell(n_of_v,1);
decoded=cell(n_of_v,1);
dum1=1;
dummy=n_of_bits(1);
for i=1:n_of_v
deci{i}=bi2de(r(:,dum1:dummy),'left-msb');
dum1=dum1+n_of_bits(i);
while dummy<string
dummy=dummy+n_of_bits(i+1);
end
%NORMALIZE TO THE VARIABLE RANGE 
x1(:,i)=deci{i};
decoded{i}=range(i,1)+((range(i,2)-range(i,1))/(2^n_of_bits(i)-1))*x1(:,i);
xxx(:,i)=decoded{i};
end
%FUNCITON EVALUTION 
for i=1:n_of_p
[fitness1(i),constraint(i,:)]=func(xxx(i,:));
end
fitness=fitness1';
for hh =1:length(fitness)
    if fitness(hh) < 0
        flag1 = 1;
    end
end
if flag1 == 1
    [factor,indices] = min(fitness);
    fitness1 = -factor+fitness;
end
%CALLING ROULETT WHEEL
if tourni_flag ~=1
    if problem == 'min'
    fitness2 = 1./(1+fitness1);
    end
[best_fit(g),indi(g)]=max(fitness2);
best_var(g,:)=xxx(indi(g),:);
if problem == 'min'
    best_fit(g) = fitness(indi(g));
end
%CUMULATIVE PROBABLITY
s=sum(fitness2);
cum_prob=fitness2/s;
roulett;
else
[best_fit(g),indi(g)]=min(fitness);
average_fitness = mean(fitness);
best_var(g,:)=xxx(indi(g),:);
%CALLING TOURNAMNENT SELECTION
tournament;
%IF THIS IS A CONSTRAINT PROBLEM THEN WE HAVE TO USE THIS
    if n_of_c>=0
    best_fit(g)=min_fit;
    best_var(g,:)=xxx(indi(g),:);
    end
end
%CROSSOVER
for k=1:2:n_of_p
parent1=r_new(round(random('unif',0.5,n_of_p+0.5)),:);
parent2=r_new(round(random('unif',0.5,n_of_p+0.5)),:);
 
if multi_crossover == 0
cross_o_pos=round(random('unif',1.5,string+0.5-1));
child1(1:cross_o_pos)=parent2(1:cross_o_pos); 
child1(cross_o_pos+1:string)=parent1(cross_o_pos+1:string) ;
child2(1:cross_o_pos)=parent1(1:cross_o_pos); 
child2(cross_o_pos+1:string)=parent2(cross_o_pos+1:string);
else
 
pois_ra = rand(1);
if(pois_ra<0.1353)no_of_cross_over = 0;
end
if(pois_ra>=0.1353 & pois_ra<0.4059)no_of_cross_over = 1;
end
if(pois_ra>=0.4059 & pois_ra<0.6865)no_of_cross_over = 2;
end
if(pois_ra>=0.6865 & pois_ra<0.8769)no_of_cross_over = 3;
end
if(pois_ra>=0.8769)no_of_cross_over=3;
end
 
switch no_of_cross_over
 
case 0
child1(1:string) = parent1(1:string);
child2(1:string) = parent2(1:string);
 
case 1
cross_o_pos=round(random('unif',1.5,string+0.5-1));
child1(1:cross_o_pos)=parent2(1:cross_o_pos); 
child1(cross_o_pos+1:string)=parent1(cross_o_pos+1:string) ;
child2(1:cross_o_pos)=parent1(1:cross_o_pos); 
child2(cross_o_pos+1:string)=parent2(cross_o_pos+1:string);
 
case 2
cross_o_pos1=round(random('unif',1.5,string+0.5-1));
cross_o_pos2=round(random('unif',1.5,string+0.5-1));
while (cross_o_pos2 ==cross_o_pos1)
cross_o_pos2=round(random('unif',1.5,string+0.5-1));
end
cross_sor = [cross_o_pos1 cross_o_pos2];
cross_sort = sort(cross_sor);
child1(1:cross_sort(1))=parent1(1:cross_sort(1)); 
child1(cross_sort(1)+1:cross_sort(2))=parent2(cross_sort(1)+1:cross_sort(2)) ;
child1(cross_sort(2)+1:string)=parent1(cross_sort(2)+1:string) ;
child2(1:cross_sort(1))=parent2(1:cross_sort(1)); 
child2(cross_sort(1)+1:cross_sort(2))=parent1(cross_sort(1)+1:cross_sort(2)) ;
child2(cross_sort(2)+1:string)=parent2(cross_sort(2)+1:string) ;
 
case 3
cross_o_pos1=round(random('unif',1.5,string+0.5-1));
cross_o_pos2=round(random('unif',1.5,string+0.5-1));
while (cross_o_pos2 ==cross_o_pos1)
cross_o_pos2=round(random('unif',1.5,string+0.5-1));
end
cross_o_pos3=round(random('unif',1.5,string+0.5-1));
while (cross_o_pos3 ==cross_o_pos1 & cross_o_pos3 == cross_o_pos2)
cross_o_pos3=round(random('unif',1.5,string+0.5-1));
end
cross_sor = [cross_o_pos1 cross_o_pos2 cross_o_pos3];
cross_sort = sort(cross_sor);
child1(1:cross_sort(1))=parent1(1:cross_sort(1)); 
child1(cross_sort(1)+1:cross_sort(2))=parent2(cross_sort(1)+1:cross_sort(2)) ;
child1(cross_sort(2)+1:cross_sort(3))=parent1(cross_sort(2)+1:cross_sort(3)) ;
child1(cross_sort(3)+1:string)=parent2(cross_sort(3)+1:string) ;
child2(1:cross_sort(1))=parent2(1:cross_sort(1)); 
child2(cross_sort(1)+1:cross_sort(2))=parent1(cross_sort(1)+1:cross_sort(2)) ;
child2(cross_sort(2)+1:cross_sort(3))=parent2(cross_sort(2)+1:cross_sort(3)) ;
child2(cross_sort(3)+1:string)=parent1(cross_sort(3)+1:string) ;
end
end
r(k,:)=child1;
r(k+1,:)=child2; 
 
end
 
%MUTATION 
for i=1:n_of_p
pr_m=random('unif',0,1);
for j=1:string
    if pr_m<mut_prob
    if r(i,j)==0  
    r(i,j)=1;
    else
    r(i,j)=0;
    end
    end
end
end
[min_best_fit,ind]=min(best_fit);
[g best_var(ind,:) min(best_fit)];
if g >= 2
    if abs(last_gen_best-min(best_fit))<epsilon
        flag = flag+1;
    else
        flag = 0;
    end
end
if flag>stall_gen
    break;
end
last_gen_best = min(best_fit);
fprintf('%4i %9.4f %9.4f \n',g, best_var(ind,:), min(best_fit))
end %END OF MAIN LOOP
[min_best_fit,ind]=min(best_fit);
best_var(ind,:)
min_best_fit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%