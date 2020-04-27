function a = M20200404_checkerboard(n)
%M20200404_CHECKERBOARD Summary of this function goes here
temp = ones(n,n);
for i=2:2:n^2
    temp(i)=0;
end
a=temp;
end


