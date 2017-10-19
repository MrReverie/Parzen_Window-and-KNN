function pn = parzen(pattern, x, hn)
	n = size(pattern,1);
    d = size(pattern,2);
	u = (pattern - repmat(x,n,1)) ./ hn;
    b = sum(mvnpdf(u, zeros(1, d), eye(d)) / (hn ^ d));
    pn = b / n;
end    