function [ wt ] = LogRegAlg( X, y, ng, T)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[r, c] = size(X);
wt = zeros(1, c);

for i = 1:T
    wt = wt - ng * DeltaEin(X, y, wt);
end

end

