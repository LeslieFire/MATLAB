function [ b, w ] = TAssignment1Q4(  )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    X = [1, 0; 0, 1; 0, -1; -1, 0; 0, 2; 0, -2; -2, 0];
    y = [-1; -1; -1; 1; 1; 1; 1];
    N = 7;
    Z = [ones(N, 1), X(:, 1), X(:, 2), X(:, 1).*X(:, 1), X(:,1).*X(:, 2), X(:,2).*X(:, 2), X(:, 2).*X(:,1)];
    
    alpha = TAssignment1Q3();
    
    w = zeros(1, 7);
    for i = 1:N
        w = w + alpha(i) * y(i) * Z(i, :);
    end
    b = y(3) - w*Z(3,:)';
end

