data = pearsrnd(100,25,1,4,1000,1)
figure(1), clf
histogram(data,40)
hold on 

thevar = var(data);
thestd = std(data);
strvar = num2str(thevar);
strstd = num2str(thestd);
str = {'Variance: ',strvar, 'Standard Deviation: ', strstd};
text(100,70,str)
legend("Histogram");