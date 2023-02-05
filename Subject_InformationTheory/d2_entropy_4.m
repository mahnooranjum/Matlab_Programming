clear
f1 = []; f2 = []; f3=[]; f4 = [];

for i=1:10000
    r = rand(1, 4);
    r = r ./ sum(r);
    f1 = [f1; r(1)];
    f2 = [f2; r(2)];
    f3 = [f3; r(3)];
    f4 = [f4; r(4)];
end

H = (f1.*log2(1./f1)) + (f2.*log2(1./f2)) + (f3.*log2(1./f3)) + (f4.*log2(1./f4));

figure(), hold on, grid on, box on
xlabel("Probability f1");
%ylabel("Probability f2");
ylabel("Entropy H(X)")
scatter(f1, H, "linew", 2);
