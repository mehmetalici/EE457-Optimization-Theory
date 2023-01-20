%Q2.2: Simulated Annealing  

%% Initialization
clear ; close all; clc


% Initial condition
x = [3 -1 0]';

%% Implementation

%For both alphas
for i = 0:1
    
    k = 0;
    %Selecting alphas
    range = 2 * 1e-3 * 10^i;  
    
    %Simulated Annealing Algorithm
    while k < 1000
        z_lower_end = x - range / 2;
        z_upper_end = x + range / 2;
        z = z_lower_end + range * rand(3,1);
        
        if f(z) < f(x)
            x = z;
        else
            %Adding the probabilty term
            p = calc_probability(k, x, z);
            if (randsample(2, 1, true, [1-p, p]) - 1) == 1
                x = z;
            end
        end

        k = k + 1;
    end
    
    %Printing
    fprintf("After %d iterations for mid range: %.3f,\n", k, range/2);

    fprintf("x*:%s\n", strjoin(cellstr(num2str(x-rem(x,1e-4))), ',' ));
    
    fprintf("\n");
    
end


