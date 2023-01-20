function y = f(x)
%F rosenbrock function 

    x1 = x(1);
    x2 = x(2);
    x3 = x(3);
    
    y = 100 * (x2 - x1.^2).^2 + (x1 - 1).^2 +...
        100 * (x3 - x2.^2).^2 + (x2 - 1).^2;
    
    

end

