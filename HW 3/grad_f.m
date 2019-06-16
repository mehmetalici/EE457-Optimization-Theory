function grad_vec = grad_f(x)
%F rosenbrock function 
    
    syms x1 x2 x3
    
    sym_grad_vec = gradient(f([x1 x2 x3]));

    grad_vec = double(subs(sym_grad_vec, [x1, x2, x3], [x(1), x(2), x(3)]));
    

end

