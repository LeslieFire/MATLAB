function [ gt ] = DecisionStumpFun( s, i, theta, X )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    gt = s .* sign(X(:, i) - theta);

end

