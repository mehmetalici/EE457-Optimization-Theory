% Q3.2 Least Squares solution using all data points

%% Initialization
clear ; close all; clc

%Preparing the dataset
dataset = readmatrix("parity");

m = size(dataset,1);

A = [dataset(:,1), ones(m,1)];
b = dataset(:,2);

%Least Squares Solution
x = (A' * A)^-1 * A' * b;

f = 1 / 2 * sum((b - A * x).^2);
%% Printing
fprintf("Least Squares Solution:\n");
fprintf("Slope:%.2f\nBias:%.2f\nCost:%.2f", x(1), x(2), f);





