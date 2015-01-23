function [ w ] = LinearRegression( x, y )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明

w = pinv(x)*y;
end

