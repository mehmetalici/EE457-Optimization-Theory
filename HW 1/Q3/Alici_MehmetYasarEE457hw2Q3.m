xminus = 0;
x0 = 1;
epsilon = 1e-5;
i = 1;

x1 = x0 - (x0 - xminus) / (f(x0) - f(xminus)) * f(x0);

while abs(x0 - xminus) > epsilon
    
    x1 = x0 - (x0 - xminus) / (f(x0) - f(xminus)) * f(x0);
    xminus = x0;
    x0 = x1;
    
    fprintf("Step %d: g(x) = %.6f, Uncertainty: %.6f\n",...
    i, f(x1), abs(x0 - xminus));
    i = i + 1;
end


fprintf("\nThe minimizer with epsilon = %.5f is %.2f\n", epsilon, x1);
fprintf("The value of g(x) at the obtained solution is %.1f", f(x1));