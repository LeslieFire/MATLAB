function [ w ] = TAssignment2Q7( t )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    W = zeros(1, 2);
    for i = 1:t
        x = rand(2,1);
        y = f(x);
        x = [x, ones(2,1)];
        w = LinearRegression(x, y);
        W = [W ; w'];
    end
    w = UniformBlendingForRegression(W);
end

