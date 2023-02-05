function signal = d22_codeToSignal(code)
    syms x; 
    signal = 0;
    L = length(code);
    for i=1:L
        signal =  signal + code(i).*rectangularPulse(i-1, i, x);
    end
end

