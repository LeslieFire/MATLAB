function [ wt ] = LogRegAlgSDG( X, y, ng, T)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
[r, c] = size(X);
wt = zeros(1, c);

for i = 1:T
    wt = wt - ng * SDGDeltaEin(X, y, wt, mod(i, r)+1);
end

end

