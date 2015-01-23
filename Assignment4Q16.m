function [ E ] = Assignment4Q16(  )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    train = load('hw4_train.dat');
    [r,c] = size(train);
    X = [ones(120, 1), train(1:120, 1:2)];
    y = train(1:120, 3);
    
    Xval = [ones(80, 1), train(121:200, 1:2)];
    yval = train(121:200, 3);
    
    test = load('hw4_test.dat');
    [rt,ct] = size(test);
    Xtest =  [ones(rt, 1), test(:, 1:2)];
    ytest =  test(:, 3);
    
    E= [];
    for logLamta = 2:-1:-10
        % get regularized regression wReg
        wREG = RegRegAlg(X, y, 1*10^logLamta);

        % get 0/1 error E in
        Ein = zeroOneError(X, y, wREG);
        Eval = zeroOneError(Xval, yval, wREG);
        % get 0/1 error E out
        Eout = zeroOneError(Xtest, ytest, wREG);
        
        E = [E;logLamta, Ein, Eval,Eout];
    end

end

