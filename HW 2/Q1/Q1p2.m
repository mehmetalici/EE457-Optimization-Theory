
clear ; close all; clc
a0 = 2;
b0 = 10;

epsilon = 0.02;
ro = 0.382;

i = 0;
while b0 - a0 > epsilon

    
    a1 = a0 + ro * (b0 - a0);
    b1 = b0 - ro * (b0 - a0);
    
    if f(a1) < f(b1)
        b0 = b1;
    end
    
    if f(a1) >= f(b1)
        a0 = a1;
    end
    
    fprintf("Step %d: f(a) = %.4f, f(b) = %.4f, Uncertainty: %.2f\n",...
    i, f(a0), f(b0), b0-a0);

    i = i + 1;
end

fprintf("The minimizer with epsilon = %.02f is %.3f", epsilon, (a0+b0) / 2);








