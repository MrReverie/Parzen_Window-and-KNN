function pn = KNN(pattern, x, k)
    [n, d] = size(pattern); 
    %compute the distance between all the patterns and x(center point)
    all_dist =(sum((pattern - repmat(x,n,1)).^2, d)) .^ (1/2);
    all_sort = sort(all_dist);
    k_dist = all_sort(k);
    pn = k / (n * ((k_dist * 2)^d));
end
