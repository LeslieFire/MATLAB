function [ alpha ] = TAssignment1Q3()
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    X = [1, 0; 0, 1; 0, -1; -1, 0; 0, 2; 0, -2; -2, 0];
    y = [-1; -1; -1; 1; 1; 1; 1];
    kHandle = @Kernel;
    alpha = KernelHardMarginSVM(X, y, kHandle);

end
