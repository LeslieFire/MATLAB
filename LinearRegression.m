function [ w ] = LinearRegression( x, y )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

w = pinv(x)*y;
end

