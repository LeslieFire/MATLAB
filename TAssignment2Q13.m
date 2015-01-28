function [ ] = TAssignment2Q13( T )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    
    global train test;
    
    X_tra = train(:, 1:2);
    y_tra = train(:, 3);
    X_tes = test(:, 1:2);
    y_tes = test(:, 3);
    
    G = AdaBoostStump(X_tra, y_tra, T);
    
    e = zeroOneError(G, y_tra);
    disp(e);
end

