function [ w ] = GetW( X, alpha )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    [row, col] = size(X);
    disp(row);

    w = zeros(1, 2);
    for i = 1:row
        w = w + alpha(i) * X(i, :);
    end

end

