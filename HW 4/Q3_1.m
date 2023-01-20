% Q3.1 RLS Algorithm for best line fitting

%% Initialization
clear ; close all; clc

% Obtaining and preparing the data set.
dataset = readmatrix("parity");

m = size(dataset,1);

A_total = [dataset(:,1), ones(m,1)];
b_total = dataset(:,2);

%Initializing useful variables
m_past = zeros(5,1);
c_past = zeros(5,1);
f_past = zeros(5,1);



%Iterating the algorithm once
A = A_total(1:2, :);
b = b_total(1:2, :);

P = A' * A;
x = P * A' * b;

f = 1 / 2 * sum((A_total * x - b_total).^2); 

%Keep track of past data
m_past(1) = x(1); 
c_past(1) = x(2);
f_past(1) = f;


%% Iteration for the rest of data
for i = 3:2:10

    %Selecting two weeks
    A = A_total(i:i+1,:);
    b = b_total(i:i+1,:);
    
    %RLS Algorithm
    P = P - P * A' * (eye(2) + A * P * A')^-1 * A * P;
    x = x + P * A' * (b - A * x);   
    f = 1 / 2 * sum((A_total * x - b_total).^2); 
    
    %Registering past data
    m_past((i+1)/2) = x(1); 
    c_past((i+1)/2) = x(2);
    f_past((i+1)/2) = f;     
end

%% Plotting
figure;
plot(1:5, f_past);
title("RLS Algorithm: Cost function vs Nr. of iterations");
xlabel("Nr. of Iterations");
ylabel("Value")

figure;
plot(1:5, c_past);
hold on;
plot(1:5, m_past);
title("RLS Algorithm: Bias and slope vs Nr. of iterations");
legend("Bias", "Slope");
xlabel("Nr. of Iterations");
ylabel("Value")

%% Printing
fprintf("RLS Solution:\n");
fprintf("Slope:%.2f\nBias:%.2f\nCost:%.2f", x(1), x(2), f);



