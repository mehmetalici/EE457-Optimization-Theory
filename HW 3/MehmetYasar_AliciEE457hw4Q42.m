%Q4.2 - Gauss - Newton algorithm that determines the sinusoid of best fit

%% Initialization
clear ; close all; clc

% Preparing the dataset
dataset = readmatrix("table");

y = dataset(:,2);
t = dataset(:,1);

% Initializing symbolic variables
syms A w0 theta;

h = A*sin(w0*t + theta);

r = y - h; 
f = r' * r;
f_history = zeros(1000,1);
J = jacobian(r, [A w0 theta]);

% Initializing variables for the iterations
x = [1 2 3];
EPSILON = 1e-3;
mu = 10;

% Obtaining the initial obj function value
A = x(1);
w0 = x(2);
theta = x(3);

fnum_old = double(subs(f));
f_history(1) = fnum_old;

%Iterating for once and registering values
x = x - (double(subs(J))' * double(subs(J)) + mu*eye(3))^-1 *...
    double(subs(J))' * double(subs(r)); 

%Substituting symbolic vars and obtaining function value
A = x(1);
w0 = x(2);
theta = x(3);

fnum = double(subs(f));
f_history(2) = fnum;


%% Iterations
i = 3;
while abs(fnum - fnum_old) > EPSILON
    
    fnum_old = fnum;
    
    %Levenberg - Marquardt Method
    x = x - (double(subs(J))' * double(subs(J)) + mu*eye(3))^-1 *...
        double(subs(J))' * double(subs(r));    
    
    %Substituting symbolic vars and obtaining function value
    A = x(1);
    w0 = x(2);
    theta = x(3);
 
    fnum = double(subs(f));
    f_history(i) = fnum;
    i = i + 1;
    
end


%% Plotting the fitted data
fprintf("Levenberg - Marquardt Method:\n");
fprintf("A: %.2f\nw0: %.2f\ntheta: %.2f\nCost: %.2f\n", A, w0, theta, f_history(i-1));

figure;
plot(1:21, y);
hold on;
plot(1:21, double(subs(h)));
legend("Actual" , "Fitted");
title("Sine fit via Levenberg - Marquardt Method");
xlabel("Nr. of iterations");
ylabel("Value")













