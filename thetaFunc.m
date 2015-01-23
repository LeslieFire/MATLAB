function [ theta ] = thetaFunc( x, y, w )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

theta = 1 / (1 + exp(y * w * x'));

end

