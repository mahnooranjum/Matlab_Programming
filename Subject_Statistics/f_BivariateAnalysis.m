function [x, mean, standardDeviation, maximum, minimum,...
    standardErrorOfMean, variance, rangeOfValues, meanCi, ...
    predCi] = M20200414_BivariateAnalysis(matrix,independent)
%M20200414_BIVARIABLEANALYSIS Summary of this function goes here
%   Detailed explanation goes here

table = array2table(matrix);
stats = grpstats(table,independent,{'mean', 'std', 'max', 'min', 'sem', 'var', 'range', 'meanci', 'predci'});
stats = table2array(stats);
x = stats(:,1);
mean = stats(:,3);
standardDeviation = stats(:,4);
maximum = stats(:,5);
minimum = stats(:,6);
standardErrorOfMean = stats(:,7);
variance = stats(:,8);
rangeOfValues = stats(:,9);
meanCi = stats(:,10);
predCi = stats(:,11);

end
