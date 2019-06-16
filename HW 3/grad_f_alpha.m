function grad_val = grad_f_alpha(alpha, x, d)
%F rosenbrock function 

    syms myalpha;
    args = x + myalpha*d;

    y = f(args);
    
    
    
    sym_grad = diff(y);

    grad_val = double(subs(sym_grad, myalpha, alpha));
    

end

