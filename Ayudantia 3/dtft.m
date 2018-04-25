function [X] = dtft(x, n, w)
X = zeros(1, length(w)); 
for k = 1 : length(w),
for i = 1 : length(n),
X(k) = X(k) + x(i) * exp(-j * w(k) * n(i));
end
end