
 

clear ; close all; clc

epsilon = 0.02;
a0 = 2;
b0 = 10;




j = 1;
range = (1 + 2*epsilon) / fibo(j);
j = j + 1;

while range >= epsilon / 2 
    range = (1 + 2*epsilon) / fibo(j);
    j = j + 1;
end

N = j;

i = 1;
ro = 1 - (fibo(N-i+1) / fibo(N-i+2));


for i = [1:N]   
    ro = 1 - (fibo(N-i+1) / fibo(N-i+2));
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
