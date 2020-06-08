data = pearsrnd(50,10,1,4,10000,1)
[y0, x0] = hist(data,100);

logdata = log(data);
[ylog, xlog] = hist(logdata, 100);

sqrtdata = sqrt(data);
[ysqrt, xsqrt] = hist(sqrtdata, 100);

trdata = tiedrank(data);
[ytr, xtr] = hist(trdata, 100);

figure(1), clf, hold on
plot(x0, y0, 'r', 'linew', 3);
plot(xlog, ylog, 'b', 'linew', 3);
plot(xsqrt, ysqrt, 'k', 'linew', 3);
plot(xtr, ytr, 'c', 'linew', 3);

legend({'Original'; 'Log Transform'; 'Sqrt Transform'; 'Ranked Transform'});
set(gca, 'xlim', [0, 100]);
grid on;