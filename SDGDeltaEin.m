function [ dE ] = SDGDeltaEin( X, y, w, i )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

dE = thetaFunc(X(i, :), y(i), w) * (-1*y(i)*X(i, :)); 

end

