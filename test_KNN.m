function Z = test_KNN(Xn, k, fun)
    %range of the patterns,step by 0.2
    x = -5:0.2:15;
    y = x;
    [X,Y] = meshgrid(x);
    n = size(x, 2);
    %Z is p(x,y)
    Z = zeros(n, n);
    for i=1:n
        for j=1:n
           Z(i,j) = fun(Xn, [x(i), y(j)], k);
        end
    end
    surf(X,Y,Z);
end 