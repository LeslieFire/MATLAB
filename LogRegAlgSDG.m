function [ wt ] = LogRegAlgSDG( X, y, ng, T)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[r, c] = size(X);
wt = zeros(1, c);

for i = 1:T
    wt = wt - ng * SDGDeltaEin(X, y, wt, mod(i, r)+1);
end

end

