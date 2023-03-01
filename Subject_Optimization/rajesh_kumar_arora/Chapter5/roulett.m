%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   File name roulett.m
%   Roulette wheel selection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
slot(1)=0;
for ii=2:n_of_p+1
    slot(ii)=cum_prob(ii-1)+slot(ii-1);
end
%COPY GENERATION 
for kk=1:n_of_p
    pr=rand;
    for iii=1:n_of_p+1
        if (pr>slot(iii)) & (pr<slot(iii+1))  
        st_t_c(kk)=iii;
        end
    end
end
for kkk=1:n_of_p
    r_new(kkk,:)=r(st_t_c(kkk),:);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%