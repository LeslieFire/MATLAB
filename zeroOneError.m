function [ e ] = zeroOneError( X, y, w )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
[r, c] = size(X);

n = 0;
for i = 1:r
    x = X(i,:);
    if y(i) * x * w <= 0
        n = n + 1;
end
e = n/r;
end

