%Q1.3 DFP Algorithm

%% Initialization
clear ; close all; clc

% Initializing variables
x = [3 -1 0]';
H = eye(3);
EPSILON = 1e-3;

% Keeping track of past data
f_past = zeros(999,1);
x1_past = zeros(1000,1);
x2_past = zeros(1000,1);
x3_past = zeros(1000,1);



%% DFP Algorithm
k = 1;

while k < 1000
    
    % Obtaining past data
    f_past(k) = f(x);
    x1_past(k) = x(1);
    x2_past(k) = x(2);
    x3_past(k) = x(3);
    
    %Descent
    g = grad_f(x);
    d = -H*g;
    alpha = minimize_alpha(x, d);
    x = x + alpha * d;
    
    %DFP Algo
    U_first_term = 1 / ( gradient(x)' * gradient(g) ) * gradient(x) *...
        gradient(x)';
    U_sec_term = 1 / ( (H * gradient(g))' * gradient(g) ) * H *...
        gradient(g) * (H * gradient(g))';
    U = U_first_term - U_sec_term;
    H = H + U;
    

    %If convergence is achieved, no need to iterate more
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


