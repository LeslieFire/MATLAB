function [ G ] = TAssignment2Q12( T )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    train = load('hw2_adaboost_train.dat');
    test = load('hw2_adaboost_test.dat');
    
    X_tra = train(:, 1:2);
    y_tra = train(:, 3);
    X_tes = test(:, 1:2);
    y_tes = test(:, 3);
    
    G = AdaBoostStump(X_tra, y_tra, T);
    
    
end

