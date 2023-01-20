
k = 1000;
X = zeros(k,3);
y = zeros(k,1);
count = 0;
X(1,:) = [3,-1,0];
y(1) = f(X(1,:));


for i = 1:k-1
   
    a = secant(X(i,:));
    
    X(i+1,:) = X(i,:) - a.*grad_f(X(i,:));
    y(i) = f(X(i+1,:));
    
end

figure;
    for i = 1:size(X,2)

        plot([1:termination_idx], X([1:termination_idx],i));

        hold on;

    end
    legend('x1','x2', 'x3');


    figure;
    plot([1:termination_idx], y(1:termination_idx));
    legend('y');