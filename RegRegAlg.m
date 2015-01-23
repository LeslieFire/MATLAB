function [ wREG ] = RegRegAlg( X, y, lamta )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    [r,c] = size(X);
    wREG = (X'*X + lamta*eye(c)) \ (X' * y);
    
end

