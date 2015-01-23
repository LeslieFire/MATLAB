function [ E ] = Assignment4Q18()
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    train = load('hw4_train.dat');
    
    [r,c] = size(train);
    %X = [ones(r, 1), train(:, 1:2), train(:,1).*train(:,2), train(:,1).*train(:,1), train(:,2).*train(:,2)];
    X = [ones(r, 1), train(:, 1:2)];
    y = train(:, 3);
    lamta = 1;
    % get regularized regression wReg
    wREG = RegRegAlg(X, y, lamta);
    
    % get 0/1 error E in
    Ein = zeroOneError(X, y, wREG);
    
    % get 0/1 error E out
    test = load('hw4_test.dat');
    [rt,ct] = size(test);
    %Xtest =  [ones(rt, 1), test(:, 1:2), test(:,1).*test(:,2), test(:,1).*test(:,1), test(:,2).*test(:,2)];
    Xtest =  [ones(rt, 1), test(:, 1:2)];
    ytest =  test(:, 3);
    
    Eout = zeroOneError(Xtest, ytest, wREG);
    E = [Ein, Eout];
end

