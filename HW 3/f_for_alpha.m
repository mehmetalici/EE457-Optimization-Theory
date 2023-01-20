function y = f_for_alpha(x, a)

   
    y = grad_f(x - a.*grad_f(x)) * grad_f(x)';
    
    
    
   
end

