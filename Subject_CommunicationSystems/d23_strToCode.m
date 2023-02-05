function code = d23_strToCode(str, one, zero)
L = length(str);
code = zeros(1, L);
for i=1:L
    if str(i) == '1'
        code(i) = one;
    else
        code(i) = zero;
    end
end
end

