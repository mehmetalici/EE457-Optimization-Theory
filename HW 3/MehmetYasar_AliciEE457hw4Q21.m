%Q2.1: Naive Random Search  

%% Initialization
clear ; close all; clc


%% Implementation

% for loop for both alphas
for i = 0:1
    
    %Initializing 
    k = 0;
    x = [3 -1 0]';
    range = 2 * 1e-3 * 10^i;  
    
    %Naive Random Search Algorithm
    while k < 1000
        z_lower_end = x - range / 2;
        z_upper_end = x + range / 2;
        z = z_lower_end + range * rand(3,1);

        if f(z) < f(x)
            x = z;
        end

        k = k + 1;
    end
    
    %Printing
    fprintf("After %d iterations for mid range: %.3f,\n", k, range/2);

    fprintf("x*:%s\n", strjoin(cellstr(num2str(x-rem(x,1e-4))), ',' ));
    
    fprintf("\n");
    
end


