clear
getall = dir; 
getdirectory = [getall.isdir];
getnamesoffiles = {getall(~getdirectory).name};

getmfiles = dir('*.m')
getmfilenames = {getmfiles.name}