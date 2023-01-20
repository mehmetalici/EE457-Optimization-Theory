function y = fibo(x)
    
    f0 = 1;
    f1 = 1;
  
    if x == 0
        y = 1;
    end
    if x == 1
        y = 1;
    end

    
    
    i = 2;
    while i <= x
        y = f1 + f0;
        f0 = f1;
        f1 = y;
        i = i + 1;
    end
    
end



% 1, 1, 2, 3, 5, 8