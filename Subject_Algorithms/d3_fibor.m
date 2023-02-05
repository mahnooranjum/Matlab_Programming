function v = fibor(n,v)
if nargin==1 
    v = fibor(n-1,[1,1]);
elseif n>1
    v = fibor(n-1,[v,v(end-1)+v(end)]);
elseif n<1
    v = 1;
end