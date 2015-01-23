function [ E ] = Assignment4Q19(  )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
    train = load('hw4_train.dat');
    [r,c] = size(train);
    X = [ones(r, 1), train(:, 1:2)];
    y = train(:, 3);

    E= [];
    for logLamta = 2:-1:-10
        Ecv = 0;
        for i = 1:5
            XX = [];
            yy = [];
            for j = 1:5
                if (j ~= i)
                    XX = [XX; X((j-1)*40+1: j*40,:)];
                    yy = [yy; y((j-1)*40+1: j*40)];
                end
            end
            
            % get regularized regression wReg
            wREG = RegRegAlg(XX, yy, 1*10^logLamta);
            % get 0/1 error E in.
            Xcv = X((i-1)*40+1: i*40,:);
            ycv = y((i-1)*40+1: i*40);
            Ecv = Ecv + zeroOneError(Xcv, ycv, wREG);
        end
        Ecv = Ecv / 5;
        E = [E;logLamta, Ecv];
    end
end

