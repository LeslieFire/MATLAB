function [ e ] = zeroOneError( g, y )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    len = length(g);
    one = ones(len, 1);
    
    e = sum(one(g ~= y))/len;

end