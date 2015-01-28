function [ order ] = midpoint( X )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    
    [n, col] = size(X);
    
    order = zeros(n, 1);
    order(1) = -inf;
    for i = 1 : n-1
        order(i+1) = (X(i) + X(i+1)) / 2;
    end
    

end

