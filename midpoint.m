function [ order ] = midpoint( X )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    
    [n, col] = size(X);
    
    order = zeros(n, 1);
    order(1) = -inf;
    for i = 1 : n-1
        order(i+1) = (X(i) + X(i+1)) / 2;
    end
    

end

