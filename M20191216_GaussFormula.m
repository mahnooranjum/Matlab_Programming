clear
weekday = {'Sunday', 'Monday', 'Tuesday', 'Wednesday', ...
            'Thursday', 'Friday', 'Saturday'};
month = {'January', 'February', 'March', 'April', 'May'...
          'June', 'July', 'August', 'September', 'October', 'November', 'December'}
getT = [0,3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4];
getS = [1, 0, 5, 3];
% https://www.academia.edu/36446348/The_Gauss_formula_to_find_the_day_of_the_week
date = input('Input date [5 May 2018]: ', 's');
h = str2num(date(end-1:end));
c = str2num(date(end-3:end-2));
temp = 124*c + c/4;
s = mod(temp, 7);
stringy = date(isstrprop(date,'alpha'));
IndexC = strfind(month,stringy);
m = find(not(cellfun('isempty',IndexC)));
t = getT(m);
d = str2num(date(1:2));
%%
if (h==0)
    temp = 124*(c-1) + (c-1)/4;
    s = floor(mod(temp, 7));
end
if (m==1 | m==2)
    tempo = str2num(date(end-3:end));
    tempo = num2str(tempo-1);
    h = tempo(end-1:end);
    h = str2num(h);
end

%%
result = floor(h + h/4 + s + t + d);
w = mod(result,7); 
disp(weekday(w+1));