clear ; close all; clc

epsilon = 0.02;
i = 1;
x0 = 1;
x1 = x0 - fprime(x0) / f2xprime(x0);
fprintf("Step %d: f(x) = %.4f, Uncertainty: %.2f\n",...
    i, f(x1), abs(x1 - x0));

while abs(x1 - x0) > epsilon 
        x0 = x1;
    x1 = x0 - fprime(x0) / f2xprime(x0);
    i = i + 1;
    fprintf("Step %d: f(x) = %.4f, Uncertainty: %.2f\n",...
    i, f(x1), abs(x1 - x0));
    
    
end

fprintf("The minimizer with epsilon = %.02f is %.3f", epsilon, x1);