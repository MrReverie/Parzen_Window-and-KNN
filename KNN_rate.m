function correct_rate = KNN_rate(X1, X2, k, test_patterns, test_target)
    train_patterns = [X1;X2];
    %targets are 1,2
    train_targets = [ones(length(X1),1);ones(length(X2),1) + 1];
    n = size(test_patterns, 1);
    P = zeros(n, 1);
    for i=1:n
    	center = [test_patterns(i, 1), test_patterns(i, 2)];
        %compute the distance between all the patterns and center point
        all_dist =(sum((train_patterns - repmat(center, length(train_patterns),1)).^2, 2)) .^ (1/2);
        [a, b] = sort(all_dist);
        firstclass_k = zeros(k, 1);
        for j = 1:k
            firstclass_k(j) = train_targets(b(j));
        end
        count = zeros(2,1);
        for m = 1:2
            count(m) = sum(firstclass_k == m);
        end
        [a, b] = sort(count);
        %compute the labels of test patterns
        P(i) = b(2);
    end
    test_target = test_target + 1;
    correct_rate = sum(test_target == P) / n;
end 