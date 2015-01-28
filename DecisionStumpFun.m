function [ gt ] = DecisionStumpFun( s, i, theta, X )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
    gt = s .* sign(X(:, i) - theta);

end

