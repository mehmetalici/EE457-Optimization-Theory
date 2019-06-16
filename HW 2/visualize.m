function visualize(X, y, k)

    m = size(X,2);
    figure;
    x = [1:k];
    for i = 1:m
        plot(x, X(:,i));
        hold on;
    end

    plot(x, y);
    
end