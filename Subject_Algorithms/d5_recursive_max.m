function x = recursive_max(v)
if numel(v)<=1
    x = v;
else
    x = recursive_max(v(2:end));
    if v(1)>x
        x = v(1);
    end
end
end