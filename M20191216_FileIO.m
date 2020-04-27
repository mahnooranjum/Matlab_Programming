clear;
fid = fopen('DatasetTrain.txt');
var1 = [];
var2 = [];
while ~feof(fid)
    line = fgetl(fid);
    lineSplit = regexp(line, ',', 'split'); 
    var1 = [var1; lineSplit(1)];
    var2 = [var2; lineSplit(2)];
end

fclose(fid); 