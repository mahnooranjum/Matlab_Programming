function w = reversal(v)
s=length(v)
if s==1
    w=v
else
    w=[v(end) reversal(v(1:s-1))]
end