function [ wREG ] = RegRegAlg( X, y, lamta )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [r,c] = size(X);
    wREG = (X'*X + lamta*eye(c)) \ (X' * y);
    
end

