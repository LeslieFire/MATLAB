function [ dE ] = SDGDeltaEin( X, y, w, i )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明

dE = thetaFunc(X(i, :), y(i), w) * (-1*y(i)*X(i, :)); 

end

