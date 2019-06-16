function y = fi_prime(x, a)

   
    y = grad_f(x - a*grad_f(x)) * grad_f(x)';

end

