% Function that calculates probability for the given epoch.
function probability = calc_probability(k, x, z)

    gamma = 10;
    T = gamma / (k + 2);
    probability = exp( -(f(z) - f(x)) / T);

end