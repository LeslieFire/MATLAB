function [ e ] = zeroOneError( g, y )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
    len = length(g);
    one = ones(len, 1);
    
    e = sum(one(g ~= y))/len;

end