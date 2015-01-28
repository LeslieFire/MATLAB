function [ Data ] = Assignment2Q16( T )
%Assignment2Q16 此处显示有关此函数的摘要
%   此处显示详细说明
    for i = 1:T
       x = rand(20, 1)*2 - 1; 
       y = sign(x);
       rand_index = ceil(rand(1,4)*20);
       y(rand_index) = -1 * y(rand_index);
       D = [x, y];
       D = sortrows(D, 1);
       theta = midpoint(D(:, 1));
       x = D(:, 1);
       y = D(:, 2);
    end
    Data = [x', y'];
end

function [ theta ] = midpoint( x )
    len = length(x);
    theta = zeros(len, 1);
    theta(1) = -inf;
    for index = 1:len-1
       theta(index+1) = (x(index) + x(index+1))/2; 
    end
end