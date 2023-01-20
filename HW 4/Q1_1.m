%% Q1.1 Conjugate Gradient Algorithm

%% Initialization
clear ; close all; clc

% Initializing variables
x0 = [3, -1, 0]';
alpha = 0.25;
k = 1;
EPSILON = 1e-3;

x = x0;
g_old = grad_f(x);

%Keeping track of old values
f_past = zeros(1000,1);
x1_past = zeros(1000,1);
x2_past = zeros(1000,1);
x3_past = zeros(1000,1);


%% Conjugate Gradient Algorithm
if any(g_old)
    
    d = -g_old;
    
    while k < 1000 
        f_past(k) = f(x);
        x1_past(k) = x(1);
        x2_past(k) = x(2);
        x3_past(k) = x(3);
        
        %Optimally finding alpha
        alpha = minimize_alpha(x, d);
        
        
        x = x + alpha*d;

        g_new = grad_f(x);

        if g_new == 0
            break;
        end

        beta = ( g_new' * (g_new - g_old) ) / ( d' * (g_new - g_old) );
        d = -g_new + beta * d;
    
        %If convergence is achieved, no need to iterate.
        if k > 2 && abs(f_past(k-1) - f_past(k)) < EPSILON
            break;
        end
        
        k = k + 1;       
    end
    
    %% Plotting
    figure;
    plot(1:k, f_past(1:k));
    title("Function value vs Iterations");
    xlabel("Iterations");
    ylabel("Value");
    
    figure;
    plot(1:k, x1_past(1:k));
    hold on;
    plot(1:k, x2_past(1:k));
    hold on;
    plot(1:k, x3_past(1:k));
    title("Input values vs iteration index");
    xlabel("Iterations");
    ylabel("Input values");
    legend("x1", "x2", "x3");
    
end




