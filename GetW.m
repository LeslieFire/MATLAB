function [ w ] = GetW( X, alpha )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [row, col] = size(X);
    disp(row);

    w = zeros(1, 2);
    for i = 1:row
        w = w + alpha(i) * X(i, :);
    end

end

