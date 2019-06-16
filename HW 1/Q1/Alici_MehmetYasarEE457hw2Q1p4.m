clear ; close all; clc
epsilon = 0.02;
a0 = 2;
b0 = 10;

i = 1;

while b0 - a0 > epsilon
    x = (a0 + b0) / 2;
    if fprime(x) > 0
        b0 = x;
    elseif fprime(x) < 0
        a0 = x;
    else
        xmin = x;
    end
    fprintf("Step %d: f(a) = %.4f, f(b) = %.4f, Uncertainty: %.2f\n",...
        i, f(a0), f(b0), b0-a0);
    i = i + 1;
end

fprintf("The minimizer with epsilon = %.02f is %.3f", epsilon, (a0+b0) / 2);