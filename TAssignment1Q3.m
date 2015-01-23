function [ alpha ] = TAssignment1Q3()
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
    X = [1, 0; 0, 1; 0, -1; -1, 0; 0, 2; 0, -2; -2, 0];
    y = [-1; -1; -1; 1; 1; 1; 1];
    kHandle = @Kernel;
    alpha = KernelHardMarginSVM(X, y, kHandle);

end

