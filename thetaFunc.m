function [ theta ] = thetaFunc( x, y, w )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

theta = 1 / (1 + exp(y * w * x'));

end

