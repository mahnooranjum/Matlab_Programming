function y = symconv(x, h)

    t = symvar(x);
    if(t ~= symvar(h))
        error('Symbo error');
    end
    
    syms tau real;
    
    xtau = subs(x, t, t - tau);
    htau = subs(h, t, tau); 
    y = int(xtau * htau, tau, [-Inf, Inf]);

end