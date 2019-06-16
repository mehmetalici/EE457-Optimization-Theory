function a = secant(x)

    xminus = 0;
    x0 = 1;
    epsilon = 1e-5;
    i = 1;

    x1 = x0 - (x0 - xminus) / (fi_prime(x,x0) - fi_prime(x,xminus)) *...
        fi_prime(x,x0);

    while abs(x0 - xminus) > epsilon

        x1 = x0 - (x0 - xminus) / (fi_prime(x, x0) - fi_prime(x, xminus))...
            * fi_prime(x, x0);
        xminus = x0;
        x0 = x1;

        i = i + 1;
    end
    
    a = x1;
end