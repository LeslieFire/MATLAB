function [ dE ] = DeltaEin( X, y, w )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[n, j] = size(X);
dE = zeros(1,20);

for i = 1:n
   dE = dE + thetaFunc(X(i, :), y(i), w) * (-1*y(i)*X(i, :)); 
end
dE = dE./n;

end

