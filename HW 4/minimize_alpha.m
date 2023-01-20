function alpha_min = minimize_alpha(x, d)
    

    syms myalpha;
    fi = f(x + myalpha*d);
    
    EPSILON = 1e-3;
    eta = 1e-3;
    
    alpha0 = 5e-4;
    alpha1 = 4e-4;
    
    
    alpha2 = alpha1 - (alpha1 - alpha0) / (double(subs(diff(fi), myalpha, alpha1)) - ...
    double(subs(diff(fi), myalpha, alpha0))) * double(subs(diff(fi), myalpha, alpha1));

    while abs(subs(fi, myalpha, alpha2) - subs(fi, myalpha, alpha1)) > EPSILON

        alpha0 = alpha1;
        alpha1 = alpha2;
        
        alpha2 = double(alpha1 - (alpha1 - alpha0) / (subs(diff(fi), myalpha, alpha1) - ...
            subs(diff(fi), myalpha, alpha0)) * subs(diff(fi), myalpha, alpha1));        
        
    end
    
    
       
    alpha_min = alpha2;

end


