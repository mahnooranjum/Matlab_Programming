
Cmean = mean(C)+0.005;
Amean = mean(A);
Bmean = mean(B);

Cstd = std(C);
Astd = std(A);
Bstd = std(B);

hold on
bar(1, Cmean, 'm');
bar(2, Amean, 'b');
bar(3, Bmean, 'c');
legend('Group C Mean', 'Group A Mean','Group B Mean')
xticklabels({'','','C','','A','','B'})

plotter = [Cmean Amean Bmean Cstd Astd Bstd];
bar(plotter);

Csem =  std( C ) / sqrt( length( C ));
Asem =  std( A ) / sqrt( length( A ));
Bsem =  std( B ) / sqrt( length( B ));
cam = Cmean - Amean;
cbm = Cmean - Bmean;
abm = Amean - Bmean;

CA = anova2([C,A]);
CB = anova2([C,B]);
AB = anova2([A,B]);
