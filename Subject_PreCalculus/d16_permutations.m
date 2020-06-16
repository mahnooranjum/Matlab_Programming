clear
c = [1 2 3 4 5];

P55 = perms(c);

P52 = P55(:,1:2);
P52 = unique(P52, 'rows')