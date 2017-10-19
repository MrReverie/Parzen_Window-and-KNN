function correct_rate = parzen_rate(X1, X2, test_patterns, test_target, h, fun)
    n = size(test_patterns, 1);
    P = zeros(n, 1);
    %compute the labels of test patterns
    for i = 1:n
    	center = [test_patterns(i, 1), test_patterns(i, 2)];
	    P(i) = (fun(X1, center, h) < fun(X2, center, h));
    end
    correct_rate = sum(test_target == P) / n;
end 