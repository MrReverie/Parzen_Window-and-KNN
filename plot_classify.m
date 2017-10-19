function plot_classify(X1, X2, h, func)
    %range of the patterns,step by 0.2
    x = -5:0.2:15;
    y = x;
    [X,Y] = meshgrid(x);
    n = size(x, 2);
    %Z is p(x,y)
    Z = zeros(n, n);
    for i=1:n
        for j=1:n
           Z(i,j) = func(X1, [x(i), y(j)], h) < func(X2, [x(i), y(j)], h);
        end
    end
    plot(X(Z(:)==0), Y(Z(:)==0), 'r.', X(Z(:)==1), Y(Z(:)==1), 'b+');
end