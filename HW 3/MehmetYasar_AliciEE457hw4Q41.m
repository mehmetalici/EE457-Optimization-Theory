%Q4.1 - Gauss - Newton algorithm that determines the sinusoid of best fit

%% Initialization

% Obtaining the dataset
clear ; close all; clc

dataset = readmatrix("table");

y = dataset(:,2);
t = dataset(:,1);


% Symbolicly expressing functions
syms A w0 theta;

h = A*sin(w0*t + theta);
r = y - h; 
f = r' * r;
J = jacobian(r, [A w0 theta]);

% Initializing variables for iteration
x = [1 2 3]';
f_history = zeros(1000,1);
EPSILON = 1e-2;

% Obtaining the value of initial f.
A = x(1);
w0 = x(2);
theta = x(3);

fnum_old = double(subs(f));
f_history(1) = fnum_old;


%Iterating one time manually
x = x - (double(subs(J))' * double(subs(J)))^-1 * double(subs(J))' *...
    double(subs(r)); 

A = x(1);
w0 = x(2);
theta = x(3);

fnum = double(subs(f));
f_history(2) = fnum;



%% Iteration until convergence
i = 3;
while abs(fnum - fnum_old) > EPSILON
    
    fnum_old = fnum;
    
    %Gauss - Newton's Method
    x = x - (double(subs(J))' * double(subs(J)))^-1 * double(subs(J))' *...
    double(subs(r));    

    % Obtaining function value
    A = x(1);
    w0 = x(2);
    theta = x(3);
    
    fnum = double(subs(f));
    f_history(i) = fnum;
    
    i = i + 1;
end



%% Plotting the best fit vs actual data 
fprintf("Gauss - Newton Method\n");
fprintf("A: %.2f\nw0: %.2f\ntheta: %.2f\nCost: %.2f\n", A, w0, theta, f_history(i-1));

figure;
plot(1:21, y);
hold on;
plot(1:21, double(subs(h)));
legend("Actual" , "Fitted");
title("Sine fit via Gauss - Newton Method");
xlabel("Nr. of iterations");
ylabel("Value")










